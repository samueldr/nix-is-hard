require "json"
require "shellwords"
require "stringio"
require_relative "refinements"
require_relative "elf"

# Top of the project
TOP = File.realpath(File.join(__dir__(), "../.."))

def run(*cmd)
  $stderr.puts ""
  $stderr.puts " $ #{cmd.shelljoin}"
  system(*cmd)
end

def slurp(*cmd)
  $stderr.puts ""
  $stderr.puts " $ #{cmd.shelljoin}"
  `#{cmd.shelljoin}`
end
