#!/usr/bin/env ruby
#!nix-shell -p ruby nasm binutils
#!nix-shell -i ruby

require_relative "lib/shared"
using GeneratorRefinements

module ASM_x86_64
  extend self

  def asm(instrs)
    <<~EOF
    global _start
    section .text
    _start:
      #{instrs}
    EOF
  end

  def asm_bytes(code)
    File.write(TEMP, asm(code))

    $stderr.puts "→ #{code}"
    run("nasm", "-O0", "-f", "elf64", TEMP, "-o", TEMP_OBJ)
    exit 1 unless $?.success?

    text_section_to_bytes(TEMP_OBJ)
  end

  REGISTERS =
    begin
      registers = []

      classic_8A  = "acdbacdb".split("");
      classic_8L  = "llllhhhh".split("");
      classic_16A = "acdbsbsd".split("");
      classic_16L = "xxxxppii".split("");

      (0..7).each do |i|
        registers << {
          width: 8,
          name: [classic_8A[i], classic_8L[i]].join(""),
        }
      end
      [[16, ""], [32, "e"], [64, "r"]].each do |width, prefix|
        (0..7).each do |i|
          registers << {
            width: width,
            name: [prefix, classic_16A[i], classic_16L[i]].join(""),
            type: :classic,
          }
        end
      end

      (8..15).each do |i|
        [[8,"b"], [16,"w"], [32,"d"], [64,""]].each do |width, suffix|
          registers << {
            width: width,
            name: "r#{i}#{suffix}",
            type: :extended,
          }
        end
      end

      registers
    end.freeze

  def extended_classic(reg_data, extended)
    name = reg_data[:name]
    return name unless extended
    case name
    when "ah"
      "spl"
    when "ch"
      "bpl"
    when "dh"
      "sil"
    when "bh"
      "dil"
    else
      name
    end
  end

  TEMP = File.join(TOP, "temp.asm")
  TEMP_OBJ = "#{TEMP}.o"

  INSTRUCTIONS = [
    ["mov", "MOV_reg",      [:reg, :reg]],
    ["mov", "MOV_from_mem", [:reg, :mem]],
    ["mov", "MOV_imm",      [:reg, :imm]],
    ["je",  "JE",           [:off]],
    ["jne", "JNE",          [:off]],
    ["cmp", "CMP_imm",      [:reg, :imm]],
    ["add", "ADD_imm",      [:reg, :imm]],
    # syscall instruction not tested; no operands, trivial and tested otherwise.
  ]

  IMMEDIATES = [
    # FIXME: Nix-based DSL uses a list of bytes currently (and pads it)
    # TODO: Use integer types as a valid immediate, for negative values support
    #-1,
    0,
    1,
  ]

  REGISTER_OPERAND_TYPES = [:reg, :mem]

  def generate()
    file = File.open(File.join(TOP, "tests/lib/arch/x86_64.instructions.nix"), "w")
    file.puts <<~EOF
    { lib
    , expect
    , ...
    }:

    #
    # NOTE: tests generated using support/generate-x86_64-opcode-tests.rb
    #
    # The content of the tests is created from `nasm` output.
    #
    {
    EOF

    INSTRUCTIONS.each do |instruction_data|
      instruction, implementation_instruction, types = instruction_data
      instruction_tests = StringIO.new()
      instruction_tests.puts <<~EOF
      #
      # Test generation input:
      #{instruction_data.to_json().gsub(/^/, "#     ")}
      #
      #{implementation_instruction.to_nix} = {
      EOF
      type_cases = types.map do |type|
        case type
        when :reg
          REGISTERS.map do |reg|
            [:reg, reg]
          end
        when :mem
          REGISTERS.select{ _1[:width] == 64 }.map do |reg|
            [:mem, reg]
          end
        when :imm
          IMMEDIATES.map do |imm|
            [:imm, imm]
          end
        when :off
          [:off, 42]
        end
      end

      type_cases =
        case type_cases.length
        when 0
          throw "TODO: implement operands-less type cases..."
        when 1
          [ type_cases ]
        else
          type_cases.inject(:product)
        end

      type_cases.each do |operands|
        register_operands = operands.select { REGISTER_OPERAND_TYPES.include?(_1.first) }

        # Skip register pairings of different sizes
        next unless register_operands == [] || register_operands.map { _1[1][:width] }.inject(:==)

        # Some register names differ when extended registers are used
        extended = register_operands.any? { _1[1][:type] == :extended }

        # Transform operands into nasm operands
        asm_operands = operands.map do |type, operand|
          case type
          when :reg
            extended_classic(operand, extended)
          when :mem
            "[#{extended_classic(operand, extended)}]"
          when :imm
            operand
          when :off
            operand
          end
        end

        # Operands for our Nix implementation
        #{reg1.to_nix} #{reg2.to_nix}
        nix_operands = operands.map do |type, operand|
          case type
          when :reg, :mem
            extended_classic(operand, extended)
          when :imm
            [ operand ]
          when :off
            operand
          end
        end

        # Compile...
        code = [instruction, asm_operands.join(",")].join(" ")
        bytes = asm_bytes(code)
        instruction_tests.puts <<~EOF
          #{code.to_nix()} = expect ''#{code.to_nix} to be correct [#{bytes.map{_1.to_s(16)}.join(" ")}]''
            (lib.stripComments (lib.arch.x86_64.instructions.#{implementation_instruction} #{nix_operands.map(&:to_nix).join(" ")}))
            #{bytes.to_nix}
          ;
        EOF
          .indent(2)
      end
      instruction_tests.puts <<~EOF
      };
      EOF
      instruction_tests.puts()

      file.puts(instruction_tests.string().indent(2))
    end

    file.puts("}")

    File.delete(TEMP) if File.exist?(TEMP)
    File.delete(TEMP_OBJ) if File.exist?(TEMP_OBJ)
  end
end

ASM_x86_64.generate()
