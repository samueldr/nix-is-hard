#!/usr/bin/env nix-shell
#!nix-shell -p ruby
#!nix-shell -i ruby

require "json"
require "shellwords"

# TODO: dry evaluate attributes, then eval each attribute independently?
cmd = %W(nix-instantiate --strict --eval --json #{__dir__()}/tests --argstr output results)
results = JSON.parse(`#{cmd.shelljoin}`)

# TODO: print useful report instead of raw results.
# For now it's fine since the order of the JSON object puts the useful info at the bottom.
puts JSON.pretty_generate(results)
