#!/usr/bin/env ruby
#!nix-shell -p ruby
#!nix-shell -p pkgsCross.aarch64-multiplatform.stdenv.cc
#!nix-shell -i ruby

require_relative "lib/shared"
using GeneratorRefinements

module ASM_aarch64
  extend self

  def asm(instrs)
    <<~EOF
    .global _start
    .align 4
    .section .text
    _start:
      #{instrs}
    EOF
  end

  def asm_bytes(code)
    File.write(TEMP, asm(code))

    $stderr.puts "→ #{code}"
    run(
      "aarch64-unknown-linux-gnu-as",
      "-no-pad-sections",
      "-o", TEMP_OBJ,
      TEMP,
    )
    exit 1 unless $?.success?

    text_section_to_bytes(TEMP_OBJ)
  end

  def imm_max(width)
    ("1"*width).to_i(2)
  end

  TEMP = File.join(TOP, "temp.asm")
  TEMP_OBJ = "#{TEMP}.o"

  REGISTERS =
    begin
      registers = []
      (0..30).each do |i|
        [
          # We're not generating 32 bit registers instructions
          #[32, "w"],
          [64, "x"],
        ].each do |width, prefix|
          registers << {
            width: width,
            name: [prefix, i].join(""),
          }
        end
      end
      registers << {
        width: 64,
        name: "sp",
      }
      registers
    end.freeze

  INSTRUCTIONS = [
    ["add",  "ADD_imm",      [:reg2, :imm12]],
    ["b.ne", "B.NE",         [:off19]],
    # syscall pseudo-instruction not tested; no operands, trivial and tested otherwise.
  ]

  REGISTER_OPERAND_TYPES = [
    :reg,
    :reg2, # the same register, repeated twice, only in asm input
    :mem,
  ]

  def generate()
    file = File.open(File.join(TOP, "tests/lib/arch/aarch64.instructions.nix"), "w")
    file.puts <<~EOF
    { lib
    , expect
    , ...
    }:

    #
    # NOTE: tests generated using support/generate-aarch64-opcode-tests.rb
    #
    # The content of the tests is created from `aarch64-unknown-linux-gnu-as` output.
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
        when :reg, :reg2
          REGISTERS.map do |reg|
            [type, reg]
          end
        when :mem
          REGISTERS.select{ _1[:width] == 64 }.map do |reg|
            [:mem, reg]
          end
        when /^imm\d+/
          # TODO: all *n* bits set
          [
            0,
            1,
            imm_max(type.to_s().scan(/\d+/).first.to_i()),
          ].map do |imm|
            [:imm, imm]
          end
        when /off\d+/
          # Instructions are 4 bytes wide.
          # Must be divisibly by 4.
          [
            0,
            4,
            imm_max(type.to_s().scan(/\d+/).first.to_i())/4*4,
          ].map do |imm|
            [:off, imm]
          end
        end
      end

      type_cases =
        case type_cases.length
        when 0
          throw "TODO: implement operands-less type cases..."
        when 1
          type_cases.first.map do |c|
            [c]
          end
        else
          type_cases.first.product(*type_cases[1..])
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
            operand[:name]
          when :reg2
            [
              operand[:name],
              operand[:name],
            ].join(", ")
          when :mem
            operand[:name]
          when :imm
            "##{operand}"
          when :off
            operand
          end
        end

        # Operands for our Nix implementation
        nix_operands = operands.map do |type, operand|
          case type
          when :reg, :reg2, :mem
            operand[:name]
          when :imm
            operand
          when :off
            operand
          end
        end

        # Compile...
        code = [instruction, asm_operands.join(", ")].join(" ")
        bytes = asm_bytes(code)
        instruction_tests.puts <<~EOF
          #{code.to_nix()} = expect ''#{code.to_nix} to be correct [#{bytes.map{_1.to_s(16)}.join(" ")}]''
            (lib.stripComments (lib.arch.aarch64.instructions.#{implementation_instruction} #{nix_operands.map(&:to_nix).join(" ")}))
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

ASM_aarch64.generate()
