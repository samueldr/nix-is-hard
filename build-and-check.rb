#!/usr/bin/env nix-shell
#!nix-shell -p ruby xxd
#!nix-shell -i ruby

require "open3"
require "shellwords"

def run(*cmd)
  $stdout.puts ""
  $stdout.puts " $ #{cmd.shelljoin}"
  system(*cmd)
end

def build_attr(attr)
  cmd = ["nix-build", "-A", attr]
  $stdout.puts ""
  $stdout.puts " $ #{cmd.shelljoin}"
  stdout, status = Open3.capture2(*cmd)
  unless status.success?
    exit status.exitstatus
  end

  $stdout.write(stdout)
  stdout
end

params, attrs = ARGV.partition { _1.match(/^--/) }

if attrs.length == 0
  $stderr.puts "Usage:   ./build-and-check.rb [--verbose] <attr...>"
  # TODO: list attrs from expression
  exit 0
end

VERBOSE = params.include?("--verbose")

CMDS = [
  %w(readelf --program-headers --section-headers),
  if VERBOSE then
    %w(objdump --wide --disassemble-all)
  else
    %w(objdump --wide --disassemble)
  end,
  if VERBOSE then %w(xxd) end,
].compact

failed = false

attrs.each do |attr|
  result = build_attr(attr).strip()

  if result == ""
    $stderr.puts "No paths returned by `nix-build`..."
    $stderr.puts "Make sure a derivation is being produced... I guess..."
    exit 3
  end

  result_bin =
    Dir.glob(File.join(result, "*")).tap do |paths|
      if paths.length != 1
        $stderr.puts "NOTE: unexpected layout in result path. Expected 1, found #{paths.length}"
        $stderr.puts "Paths:"
        paths.each do |path|
        $stderr.puts "  - #{path}"
        end
        exit 1
      end
    end
    .first

  CMDS.each do |cmd|
    run(*cmd, result_bin)
  end

  if run(result_bin)
    puts ""
    puts " ✅ output of #{attr} ran successfully!"
    puts ""
  else
    puts ""
    if $?.signaled?
      puts " ❌ output of #{attr} exited on signal #{Signal.signame($?.termsig)} (#{$?.termsig.inspect})!"
      if [ 4, 11 ].include?($?.termsig)
        puts "    (note: this is almost guaranteed to be an error...)"
      else
        puts "    (note: this might not be an error, if the program is expected to fail...)"
      end
    else
      puts " ⚠️ output of #{attr} returned #{$?.exitstatus.inspect}!"
      puts "    (note: this might not be an error, if the program is expected to return non-zero...)"
    end
    puts ""
    failed = true
  end
end

exit 1 if failed
