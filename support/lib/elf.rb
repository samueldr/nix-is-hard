def text_section_to_bytes(file)
  slurp("objdump", "--full-contents", "--section=.text", file)
    .split("Contents of section .text:\n").last
    .split(/\n+/)
    .map { _1.strip().split(/\s+/, 2).last[0..(2*4*4+2)] }
    .join("")
    .gsub(/\s+/, "")
    .scan(/../)
    .map { _1.to_i(16) }
end
