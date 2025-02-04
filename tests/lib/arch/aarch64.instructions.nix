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
  #
  # Test generation input:
  #     ["add","ADD_imm",["reg2","imm12"]]
  #
  "ADD_imm" = {
    "add x0, x0, #0" = expect ''"add x0, x0, #0" to be correct [0 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x0" 0))
      [ 0 0 0 145 ]
    ;
    "add x0, x0, #1" = expect ''"add x0, x0, #1" to be correct [0 4 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x0" 1))
      [ 0 4 0 145 ]
    ;
    "add x0, x0, #4095" = expect ''"add x0, x0, #4095" to be correct [0 fc 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x0" 4095))
      [ 0 252 63 145 ]
    ;
    "add x1, x1, #0" = expect ''"add x1, x1, #0" to be correct [21 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x1" 0))
      [ 33 0 0 145 ]
    ;
    "add x1, x1, #1" = expect ''"add x1, x1, #1" to be correct [21 4 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x1" 1))
      [ 33 4 0 145 ]
    ;
    "add x1, x1, #4095" = expect ''"add x1, x1, #4095" to be correct [21 fc 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x1" 4095))
      [ 33 252 63 145 ]
    ;
    "add x2, x2, #0" = expect ''"add x2, x2, #0" to be correct [42 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x2" 0))
      [ 66 0 0 145 ]
    ;
    "add x2, x2, #1" = expect ''"add x2, x2, #1" to be correct [42 4 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x2" 1))
      [ 66 4 0 145 ]
    ;
    "add x2, x2, #4095" = expect ''"add x2, x2, #4095" to be correct [42 fc 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x2" 4095))
      [ 66 252 63 145 ]
    ;
    "add x3, x3, #0" = expect ''"add x3, x3, #0" to be correct [63 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x3" 0))
      [ 99 0 0 145 ]
    ;
    "add x3, x3, #1" = expect ''"add x3, x3, #1" to be correct [63 4 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x3" 1))
      [ 99 4 0 145 ]
    ;
    "add x3, x3, #4095" = expect ''"add x3, x3, #4095" to be correct [63 fc 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x3" 4095))
      [ 99 252 63 145 ]
    ;
    "add x4, x4, #0" = expect ''"add x4, x4, #0" to be correct [84 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x4" 0))
      [ 132 0 0 145 ]
    ;
    "add x4, x4, #1" = expect ''"add x4, x4, #1" to be correct [84 4 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x4" 1))
      [ 132 4 0 145 ]
    ;
    "add x4, x4, #4095" = expect ''"add x4, x4, #4095" to be correct [84 fc 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x4" 4095))
      [ 132 252 63 145 ]
    ;
    "add x5, x5, #0" = expect ''"add x5, x5, #0" to be correct [a5 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x5" 0))
      [ 165 0 0 145 ]
    ;
    "add x5, x5, #1" = expect ''"add x5, x5, #1" to be correct [a5 4 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x5" 1))
      [ 165 4 0 145 ]
    ;
    "add x5, x5, #4095" = expect ''"add x5, x5, #4095" to be correct [a5 fc 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x5" 4095))
      [ 165 252 63 145 ]
    ;
    "add x6, x6, #0" = expect ''"add x6, x6, #0" to be correct [c6 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x6" 0))
      [ 198 0 0 145 ]
    ;
    "add x6, x6, #1" = expect ''"add x6, x6, #1" to be correct [c6 4 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x6" 1))
      [ 198 4 0 145 ]
    ;
    "add x6, x6, #4095" = expect ''"add x6, x6, #4095" to be correct [c6 fc 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x6" 4095))
      [ 198 252 63 145 ]
    ;
    "add x7, x7, #0" = expect ''"add x7, x7, #0" to be correct [e7 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x7" 0))
      [ 231 0 0 145 ]
    ;
    "add x7, x7, #1" = expect ''"add x7, x7, #1" to be correct [e7 4 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x7" 1))
      [ 231 4 0 145 ]
    ;
    "add x7, x7, #4095" = expect ''"add x7, x7, #4095" to be correct [e7 fc 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x7" 4095))
      [ 231 252 63 145 ]
    ;
    "add x8, x8, #0" = expect ''"add x8, x8, #0" to be correct [8 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x8" 0))
      [ 8 1 0 145 ]
    ;
    "add x8, x8, #1" = expect ''"add x8, x8, #1" to be correct [8 5 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x8" 1))
      [ 8 5 0 145 ]
    ;
    "add x8, x8, #4095" = expect ''"add x8, x8, #4095" to be correct [8 fd 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x8" 4095))
      [ 8 253 63 145 ]
    ;
    "add x9, x9, #0" = expect ''"add x9, x9, #0" to be correct [29 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x9" 0))
      [ 41 1 0 145 ]
    ;
    "add x9, x9, #1" = expect ''"add x9, x9, #1" to be correct [29 5 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x9" 1))
      [ 41 5 0 145 ]
    ;
    "add x9, x9, #4095" = expect ''"add x9, x9, #4095" to be correct [29 fd 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x9" 4095))
      [ 41 253 63 145 ]
    ;
    "add x10, x10, #0" = expect ''"add x10, x10, #0" to be correct [4a 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x10" 0))
      [ 74 1 0 145 ]
    ;
    "add x10, x10, #1" = expect ''"add x10, x10, #1" to be correct [4a 5 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x10" 1))
      [ 74 5 0 145 ]
    ;
    "add x10, x10, #4095" = expect ''"add x10, x10, #4095" to be correct [4a fd 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x10" 4095))
      [ 74 253 63 145 ]
    ;
    "add x11, x11, #0" = expect ''"add x11, x11, #0" to be correct [6b 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x11" 0))
      [ 107 1 0 145 ]
    ;
    "add x11, x11, #1" = expect ''"add x11, x11, #1" to be correct [6b 5 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x11" 1))
      [ 107 5 0 145 ]
    ;
    "add x11, x11, #4095" = expect ''"add x11, x11, #4095" to be correct [6b fd 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x11" 4095))
      [ 107 253 63 145 ]
    ;
    "add x12, x12, #0" = expect ''"add x12, x12, #0" to be correct [8c 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x12" 0))
      [ 140 1 0 145 ]
    ;
    "add x12, x12, #1" = expect ''"add x12, x12, #1" to be correct [8c 5 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x12" 1))
      [ 140 5 0 145 ]
    ;
    "add x12, x12, #4095" = expect ''"add x12, x12, #4095" to be correct [8c fd 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x12" 4095))
      [ 140 253 63 145 ]
    ;
    "add x13, x13, #0" = expect ''"add x13, x13, #0" to be correct [ad 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x13" 0))
      [ 173 1 0 145 ]
    ;
    "add x13, x13, #1" = expect ''"add x13, x13, #1" to be correct [ad 5 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x13" 1))
      [ 173 5 0 145 ]
    ;
    "add x13, x13, #4095" = expect ''"add x13, x13, #4095" to be correct [ad fd 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x13" 4095))
      [ 173 253 63 145 ]
    ;
    "add x14, x14, #0" = expect ''"add x14, x14, #0" to be correct [ce 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x14" 0))
      [ 206 1 0 145 ]
    ;
    "add x14, x14, #1" = expect ''"add x14, x14, #1" to be correct [ce 5 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x14" 1))
      [ 206 5 0 145 ]
    ;
    "add x14, x14, #4095" = expect ''"add x14, x14, #4095" to be correct [ce fd 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x14" 4095))
      [ 206 253 63 145 ]
    ;
    "add x15, x15, #0" = expect ''"add x15, x15, #0" to be correct [ef 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x15" 0))
      [ 239 1 0 145 ]
    ;
    "add x15, x15, #1" = expect ''"add x15, x15, #1" to be correct [ef 5 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x15" 1))
      [ 239 5 0 145 ]
    ;
    "add x15, x15, #4095" = expect ''"add x15, x15, #4095" to be correct [ef fd 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x15" 4095))
      [ 239 253 63 145 ]
    ;
    "add x16, x16, #0" = expect ''"add x16, x16, #0" to be correct [10 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x16" 0))
      [ 16 2 0 145 ]
    ;
    "add x16, x16, #1" = expect ''"add x16, x16, #1" to be correct [10 6 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x16" 1))
      [ 16 6 0 145 ]
    ;
    "add x16, x16, #4095" = expect ''"add x16, x16, #4095" to be correct [10 fe 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x16" 4095))
      [ 16 254 63 145 ]
    ;
    "add x17, x17, #0" = expect ''"add x17, x17, #0" to be correct [31 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x17" 0))
      [ 49 2 0 145 ]
    ;
    "add x17, x17, #1" = expect ''"add x17, x17, #1" to be correct [31 6 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x17" 1))
      [ 49 6 0 145 ]
    ;
    "add x17, x17, #4095" = expect ''"add x17, x17, #4095" to be correct [31 fe 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x17" 4095))
      [ 49 254 63 145 ]
    ;
    "add x18, x18, #0" = expect ''"add x18, x18, #0" to be correct [52 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x18" 0))
      [ 82 2 0 145 ]
    ;
    "add x18, x18, #1" = expect ''"add x18, x18, #1" to be correct [52 6 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x18" 1))
      [ 82 6 0 145 ]
    ;
    "add x18, x18, #4095" = expect ''"add x18, x18, #4095" to be correct [52 fe 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x18" 4095))
      [ 82 254 63 145 ]
    ;
    "add x19, x19, #0" = expect ''"add x19, x19, #0" to be correct [73 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x19" 0))
      [ 115 2 0 145 ]
    ;
    "add x19, x19, #1" = expect ''"add x19, x19, #1" to be correct [73 6 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x19" 1))
      [ 115 6 0 145 ]
    ;
    "add x19, x19, #4095" = expect ''"add x19, x19, #4095" to be correct [73 fe 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x19" 4095))
      [ 115 254 63 145 ]
    ;
    "add x20, x20, #0" = expect ''"add x20, x20, #0" to be correct [94 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x20" 0))
      [ 148 2 0 145 ]
    ;
    "add x20, x20, #1" = expect ''"add x20, x20, #1" to be correct [94 6 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x20" 1))
      [ 148 6 0 145 ]
    ;
    "add x20, x20, #4095" = expect ''"add x20, x20, #4095" to be correct [94 fe 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x20" 4095))
      [ 148 254 63 145 ]
    ;
    "add x21, x21, #0" = expect ''"add x21, x21, #0" to be correct [b5 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x21" 0))
      [ 181 2 0 145 ]
    ;
    "add x21, x21, #1" = expect ''"add x21, x21, #1" to be correct [b5 6 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x21" 1))
      [ 181 6 0 145 ]
    ;
    "add x21, x21, #4095" = expect ''"add x21, x21, #4095" to be correct [b5 fe 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x21" 4095))
      [ 181 254 63 145 ]
    ;
    "add x22, x22, #0" = expect ''"add x22, x22, #0" to be correct [d6 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x22" 0))
      [ 214 2 0 145 ]
    ;
    "add x22, x22, #1" = expect ''"add x22, x22, #1" to be correct [d6 6 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x22" 1))
      [ 214 6 0 145 ]
    ;
    "add x22, x22, #4095" = expect ''"add x22, x22, #4095" to be correct [d6 fe 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x22" 4095))
      [ 214 254 63 145 ]
    ;
    "add x23, x23, #0" = expect ''"add x23, x23, #0" to be correct [f7 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x23" 0))
      [ 247 2 0 145 ]
    ;
    "add x23, x23, #1" = expect ''"add x23, x23, #1" to be correct [f7 6 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x23" 1))
      [ 247 6 0 145 ]
    ;
    "add x23, x23, #4095" = expect ''"add x23, x23, #4095" to be correct [f7 fe 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x23" 4095))
      [ 247 254 63 145 ]
    ;
    "add x24, x24, #0" = expect ''"add x24, x24, #0" to be correct [18 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x24" 0))
      [ 24 3 0 145 ]
    ;
    "add x24, x24, #1" = expect ''"add x24, x24, #1" to be correct [18 7 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x24" 1))
      [ 24 7 0 145 ]
    ;
    "add x24, x24, #4095" = expect ''"add x24, x24, #4095" to be correct [18 ff 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x24" 4095))
      [ 24 255 63 145 ]
    ;
    "add x25, x25, #0" = expect ''"add x25, x25, #0" to be correct [39 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x25" 0))
      [ 57 3 0 145 ]
    ;
    "add x25, x25, #1" = expect ''"add x25, x25, #1" to be correct [39 7 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x25" 1))
      [ 57 7 0 145 ]
    ;
    "add x25, x25, #4095" = expect ''"add x25, x25, #4095" to be correct [39 ff 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x25" 4095))
      [ 57 255 63 145 ]
    ;
    "add x26, x26, #0" = expect ''"add x26, x26, #0" to be correct [5a 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x26" 0))
      [ 90 3 0 145 ]
    ;
    "add x26, x26, #1" = expect ''"add x26, x26, #1" to be correct [5a 7 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x26" 1))
      [ 90 7 0 145 ]
    ;
    "add x26, x26, #4095" = expect ''"add x26, x26, #4095" to be correct [5a ff 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x26" 4095))
      [ 90 255 63 145 ]
    ;
    "add x27, x27, #0" = expect ''"add x27, x27, #0" to be correct [7b 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x27" 0))
      [ 123 3 0 145 ]
    ;
    "add x27, x27, #1" = expect ''"add x27, x27, #1" to be correct [7b 7 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x27" 1))
      [ 123 7 0 145 ]
    ;
    "add x27, x27, #4095" = expect ''"add x27, x27, #4095" to be correct [7b ff 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x27" 4095))
      [ 123 255 63 145 ]
    ;
    "add x28, x28, #0" = expect ''"add x28, x28, #0" to be correct [9c 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x28" 0))
      [ 156 3 0 145 ]
    ;
    "add x28, x28, #1" = expect ''"add x28, x28, #1" to be correct [9c 7 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x28" 1))
      [ 156 7 0 145 ]
    ;
    "add x28, x28, #4095" = expect ''"add x28, x28, #4095" to be correct [9c ff 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x28" 4095))
      [ 156 255 63 145 ]
    ;
    "add x29, x29, #0" = expect ''"add x29, x29, #0" to be correct [bd 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x29" 0))
      [ 189 3 0 145 ]
    ;
    "add x29, x29, #1" = expect ''"add x29, x29, #1" to be correct [bd 7 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x29" 1))
      [ 189 7 0 145 ]
    ;
    "add x29, x29, #4095" = expect ''"add x29, x29, #4095" to be correct [bd ff 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x29" 4095))
      [ 189 255 63 145 ]
    ;
    "add x30, x30, #0" = expect ''"add x30, x30, #0" to be correct [de 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x30" 0))
      [ 222 3 0 145 ]
    ;
    "add x30, x30, #1" = expect ''"add x30, x30, #1" to be correct [de 7 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x30" 1))
      [ 222 7 0 145 ]
    ;
    "add x30, x30, #4095" = expect ''"add x30, x30, #4095" to be correct [de ff 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "x30" 4095))
      [ 222 255 63 145 ]
    ;
    "add sp, sp, #0" = expect ''"add sp, sp, #0" to be correct [ff 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "sp" 0))
      [ 255 3 0 145 ]
    ;
    "add sp, sp, #1" = expect ''"add sp, sp, #1" to be correct [ff 7 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "sp" 1))
      [ 255 7 0 145 ]
    ;
    "add sp, sp, #4095" = expect ''"add sp, sp, #4095" to be correct [ff ff 3f 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.ADD_imm "sp" 4095))
      [ 255 255 63 145 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["b.ne","B.NE",["off19"]]
  #
  "B.NE" = {
    "b.ne 0" = expect ''"b.ne 0" to be correct [1 0 0 54]''
      (lib.stripComments (lib.arch.aarch64.instructions.B.NE 0))
      [ 1 0 0 84 ]
    ;
    "b.ne 4" = expect ''"b.ne 4" to be correct [21 0 0 54]''
      (lib.stripComments (lib.arch.aarch64.instructions.B.NE 4))
      [ 33 0 0 84 ]
    ;
    "b.ne 524284" = expect ''"b.ne 524284" to be correct [e1 ff 3f 54]''
      (lib.stripComments (lib.arch.aarch64.instructions.B.NE 524284))
      [ 225 255 63 84 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["cmp","CMP_imm",["reg","off12"]]
  #
  "CMP_imm" = {
    "cmp x0, 0" = expect ''"cmp x0, 0" to be correct [1f 0 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x0" 0))
      [ 31 0 0 241 ]
    ;
    "cmp x0, 4" = expect ''"cmp x0, 4" to be correct [1f 10 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x0" 4))
      [ 31 16 0 241 ]
    ;
    "cmp x0, 4092" = expect ''"cmp x0, 4092" to be correct [1f f0 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x0" 4092))
      [ 31 240 63 241 ]
    ;
    "cmp x1, 0" = expect ''"cmp x1, 0" to be correct [3f 0 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x1" 0))
      [ 63 0 0 241 ]
    ;
    "cmp x1, 4" = expect ''"cmp x1, 4" to be correct [3f 10 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x1" 4))
      [ 63 16 0 241 ]
    ;
    "cmp x1, 4092" = expect ''"cmp x1, 4092" to be correct [3f f0 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x1" 4092))
      [ 63 240 63 241 ]
    ;
    "cmp x2, 0" = expect ''"cmp x2, 0" to be correct [5f 0 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x2" 0))
      [ 95 0 0 241 ]
    ;
    "cmp x2, 4" = expect ''"cmp x2, 4" to be correct [5f 10 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x2" 4))
      [ 95 16 0 241 ]
    ;
    "cmp x2, 4092" = expect ''"cmp x2, 4092" to be correct [5f f0 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x2" 4092))
      [ 95 240 63 241 ]
    ;
    "cmp x3, 0" = expect ''"cmp x3, 0" to be correct [7f 0 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x3" 0))
      [ 127 0 0 241 ]
    ;
    "cmp x3, 4" = expect ''"cmp x3, 4" to be correct [7f 10 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x3" 4))
      [ 127 16 0 241 ]
    ;
    "cmp x3, 4092" = expect ''"cmp x3, 4092" to be correct [7f f0 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x3" 4092))
      [ 127 240 63 241 ]
    ;
    "cmp x4, 0" = expect ''"cmp x4, 0" to be correct [9f 0 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x4" 0))
      [ 159 0 0 241 ]
    ;
    "cmp x4, 4" = expect ''"cmp x4, 4" to be correct [9f 10 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x4" 4))
      [ 159 16 0 241 ]
    ;
    "cmp x4, 4092" = expect ''"cmp x4, 4092" to be correct [9f f0 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x4" 4092))
      [ 159 240 63 241 ]
    ;
    "cmp x5, 0" = expect ''"cmp x5, 0" to be correct [bf 0 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x5" 0))
      [ 191 0 0 241 ]
    ;
    "cmp x5, 4" = expect ''"cmp x5, 4" to be correct [bf 10 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x5" 4))
      [ 191 16 0 241 ]
    ;
    "cmp x5, 4092" = expect ''"cmp x5, 4092" to be correct [bf f0 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x5" 4092))
      [ 191 240 63 241 ]
    ;
    "cmp x6, 0" = expect ''"cmp x6, 0" to be correct [df 0 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x6" 0))
      [ 223 0 0 241 ]
    ;
    "cmp x6, 4" = expect ''"cmp x6, 4" to be correct [df 10 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x6" 4))
      [ 223 16 0 241 ]
    ;
    "cmp x6, 4092" = expect ''"cmp x6, 4092" to be correct [df f0 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x6" 4092))
      [ 223 240 63 241 ]
    ;
    "cmp x7, 0" = expect ''"cmp x7, 0" to be correct [ff 0 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x7" 0))
      [ 255 0 0 241 ]
    ;
    "cmp x7, 4" = expect ''"cmp x7, 4" to be correct [ff 10 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x7" 4))
      [ 255 16 0 241 ]
    ;
    "cmp x7, 4092" = expect ''"cmp x7, 4092" to be correct [ff f0 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x7" 4092))
      [ 255 240 63 241 ]
    ;
    "cmp x8, 0" = expect ''"cmp x8, 0" to be correct [1f 1 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x8" 0))
      [ 31 1 0 241 ]
    ;
    "cmp x8, 4" = expect ''"cmp x8, 4" to be correct [1f 11 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x8" 4))
      [ 31 17 0 241 ]
    ;
    "cmp x8, 4092" = expect ''"cmp x8, 4092" to be correct [1f f1 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x8" 4092))
      [ 31 241 63 241 ]
    ;
    "cmp x9, 0" = expect ''"cmp x9, 0" to be correct [3f 1 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x9" 0))
      [ 63 1 0 241 ]
    ;
    "cmp x9, 4" = expect ''"cmp x9, 4" to be correct [3f 11 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x9" 4))
      [ 63 17 0 241 ]
    ;
    "cmp x9, 4092" = expect ''"cmp x9, 4092" to be correct [3f f1 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x9" 4092))
      [ 63 241 63 241 ]
    ;
    "cmp x10, 0" = expect ''"cmp x10, 0" to be correct [5f 1 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x10" 0))
      [ 95 1 0 241 ]
    ;
    "cmp x10, 4" = expect ''"cmp x10, 4" to be correct [5f 11 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x10" 4))
      [ 95 17 0 241 ]
    ;
    "cmp x10, 4092" = expect ''"cmp x10, 4092" to be correct [5f f1 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x10" 4092))
      [ 95 241 63 241 ]
    ;
    "cmp x11, 0" = expect ''"cmp x11, 0" to be correct [7f 1 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x11" 0))
      [ 127 1 0 241 ]
    ;
    "cmp x11, 4" = expect ''"cmp x11, 4" to be correct [7f 11 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x11" 4))
      [ 127 17 0 241 ]
    ;
    "cmp x11, 4092" = expect ''"cmp x11, 4092" to be correct [7f f1 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x11" 4092))
      [ 127 241 63 241 ]
    ;
    "cmp x12, 0" = expect ''"cmp x12, 0" to be correct [9f 1 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x12" 0))
      [ 159 1 0 241 ]
    ;
    "cmp x12, 4" = expect ''"cmp x12, 4" to be correct [9f 11 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x12" 4))
      [ 159 17 0 241 ]
    ;
    "cmp x12, 4092" = expect ''"cmp x12, 4092" to be correct [9f f1 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x12" 4092))
      [ 159 241 63 241 ]
    ;
    "cmp x13, 0" = expect ''"cmp x13, 0" to be correct [bf 1 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x13" 0))
      [ 191 1 0 241 ]
    ;
    "cmp x13, 4" = expect ''"cmp x13, 4" to be correct [bf 11 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x13" 4))
      [ 191 17 0 241 ]
    ;
    "cmp x13, 4092" = expect ''"cmp x13, 4092" to be correct [bf f1 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x13" 4092))
      [ 191 241 63 241 ]
    ;
    "cmp x14, 0" = expect ''"cmp x14, 0" to be correct [df 1 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x14" 0))
      [ 223 1 0 241 ]
    ;
    "cmp x14, 4" = expect ''"cmp x14, 4" to be correct [df 11 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x14" 4))
      [ 223 17 0 241 ]
    ;
    "cmp x14, 4092" = expect ''"cmp x14, 4092" to be correct [df f1 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x14" 4092))
      [ 223 241 63 241 ]
    ;
    "cmp x15, 0" = expect ''"cmp x15, 0" to be correct [ff 1 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x15" 0))
      [ 255 1 0 241 ]
    ;
    "cmp x15, 4" = expect ''"cmp x15, 4" to be correct [ff 11 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x15" 4))
      [ 255 17 0 241 ]
    ;
    "cmp x15, 4092" = expect ''"cmp x15, 4092" to be correct [ff f1 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x15" 4092))
      [ 255 241 63 241 ]
    ;
    "cmp x16, 0" = expect ''"cmp x16, 0" to be correct [1f 2 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x16" 0))
      [ 31 2 0 241 ]
    ;
    "cmp x16, 4" = expect ''"cmp x16, 4" to be correct [1f 12 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x16" 4))
      [ 31 18 0 241 ]
    ;
    "cmp x16, 4092" = expect ''"cmp x16, 4092" to be correct [1f f2 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x16" 4092))
      [ 31 242 63 241 ]
    ;
    "cmp x17, 0" = expect ''"cmp x17, 0" to be correct [3f 2 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x17" 0))
      [ 63 2 0 241 ]
    ;
    "cmp x17, 4" = expect ''"cmp x17, 4" to be correct [3f 12 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x17" 4))
      [ 63 18 0 241 ]
    ;
    "cmp x17, 4092" = expect ''"cmp x17, 4092" to be correct [3f f2 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x17" 4092))
      [ 63 242 63 241 ]
    ;
    "cmp x18, 0" = expect ''"cmp x18, 0" to be correct [5f 2 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x18" 0))
      [ 95 2 0 241 ]
    ;
    "cmp x18, 4" = expect ''"cmp x18, 4" to be correct [5f 12 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x18" 4))
      [ 95 18 0 241 ]
    ;
    "cmp x18, 4092" = expect ''"cmp x18, 4092" to be correct [5f f2 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x18" 4092))
      [ 95 242 63 241 ]
    ;
    "cmp x19, 0" = expect ''"cmp x19, 0" to be correct [7f 2 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x19" 0))
      [ 127 2 0 241 ]
    ;
    "cmp x19, 4" = expect ''"cmp x19, 4" to be correct [7f 12 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x19" 4))
      [ 127 18 0 241 ]
    ;
    "cmp x19, 4092" = expect ''"cmp x19, 4092" to be correct [7f f2 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x19" 4092))
      [ 127 242 63 241 ]
    ;
    "cmp x20, 0" = expect ''"cmp x20, 0" to be correct [9f 2 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x20" 0))
      [ 159 2 0 241 ]
    ;
    "cmp x20, 4" = expect ''"cmp x20, 4" to be correct [9f 12 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x20" 4))
      [ 159 18 0 241 ]
    ;
    "cmp x20, 4092" = expect ''"cmp x20, 4092" to be correct [9f f2 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x20" 4092))
      [ 159 242 63 241 ]
    ;
    "cmp x21, 0" = expect ''"cmp x21, 0" to be correct [bf 2 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x21" 0))
      [ 191 2 0 241 ]
    ;
    "cmp x21, 4" = expect ''"cmp x21, 4" to be correct [bf 12 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x21" 4))
      [ 191 18 0 241 ]
    ;
    "cmp x21, 4092" = expect ''"cmp x21, 4092" to be correct [bf f2 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x21" 4092))
      [ 191 242 63 241 ]
    ;
    "cmp x22, 0" = expect ''"cmp x22, 0" to be correct [df 2 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x22" 0))
      [ 223 2 0 241 ]
    ;
    "cmp x22, 4" = expect ''"cmp x22, 4" to be correct [df 12 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x22" 4))
      [ 223 18 0 241 ]
    ;
    "cmp x22, 4092" = expect ''"cmp x22, 4092" to be correct [df f2 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x22" 4092))
      [ 223 242 63 241 ]
    ;
    "cmp x23, 0" = expect ''"cmp x23, 0" to be correct [ff 2 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x23" 0))
      [ 255 2 0 241 ]
    ;
    "cmp x23, 4" = expect ''"cmp x23, 4" to be correct [ff 12 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x23" 4))
      [ 255 18 0 241 ]
    ;
    "cmp x23, 4092" = expect ''"cmp x23, 4092" to be correct [ff f2 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x23" 4092))
      [ 255 242 63 241 ]
    ;
    "cmp x24, 0" = expect ''"cmp x24, 0" to be correct [1f 3 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x24" 0))
      [ 31 3 0 241 ]
    ;
    "cmp x24, 4" = expect ''"cmp x24, 4" to be correct [1f 13 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x24" 4))
      [ 31 19 0 241 ]
    ;
    "cmp x24, 4092" = expect ''"cmp x24, 4092" to be correct [1f f3 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x24" 4092))
      [ 31 243 63 241 ]
    ;
    "cmp x25, 0" = expect ''"cmp x25, 0" to be correct [3f 3 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x25" 0))
      [ 63 3 0 241 ]
    ;
    "cmp x25, 4" = expect ''"cmp x25, 4" to be correct [3f 13 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x25" 4))
      [ 63 19 0 241 ]
    ;
    "cmp x25, 4092" = expect ''"cmp x25, 4092" to be correct [3f f3 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x25" 4092))
      [ 63 243 63 241 ]
    ;
    "cmp x26, 0" = expect ''"cmp x26, 0" to be correct [5f 3 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x26" 0))
      [ 95 3 0 241 ]
    ;
    "cmp x26, 4" = expect ''"cmp x26, 4" to be correct [5f 13 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x26" 4))
      [ 95 19 0 241 ]
    ;
    "cmp x26, 4092" = expect ''"cmp x26, 4092" to be correct [5f f3 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x26" 4092))
      [ 95 243 63 241 ]
    ;
    "cmp x27, 0" = expect ''"cmp x27, 0" to be correct [7f 3 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x27" 0))
      [ 127 3 0 241 ]
    ;
    "cmp x27, 4" = expect ''"cmp x27, 4" to be correct [7f 13 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x27" 4))
      [ 127 19 0 241 ]
    ;
    "cmp x27, 4092" = expect ''"cmp x27, 4092" to be correct [7f f3 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x27" 4092))
      [ 127 243 63 241 ]
    ;
    "cmp x28, 0" = expect ''"cmp x28, 0" to be correct [9f 3 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x28" 0))
      [ 159 3 0 241 ]
    ;
    "cmp x28, 4" = expect ''"cmp x28, 4" to be correct [9f 13 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x28" 4))
      [ 159 19 0 241 ]
    ;
    "cmp x28, 4092" = expect ''"cmp x28, 4092" to be correct [9f f3 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x28" 4092))
      [ 159 243 63 241 ]
    ;
    "cmp x29, 0" = expect ''"cmp x29, 0" to be correct [bf 3 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x29" 0))
      [ 191 3 0 241 ]
    ;
    "cmp x29, 4" = expect ''"cmp x29, 4" to be correct [bf 13 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x29" 4))
      [ 191 19 0 241 ]
    ;
    "cmp x29, 4092" = expect ''"cmp x29, 4092" to be correct [bf f3 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x29" 4092))
      [ 191 243 63 241 ]
    ;
    "cmp x30, 0" = expect ''"cmp x30, 0" to be correct [df 3 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x30" 0))
      [ 223 3 0 241 ]
    ;
    "cmp x30, 4" = expect ''"cmp x30, 4" to be correct [df 13 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x30" 4))
      [ 223 19 0 241 ]
    ;
    "cmp x30, 4092" = expect ''"cmp x30, 4092" to be correct [df f3 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "x30" 4092))
      [ 223 243 63 241 ]
    ;
    "cmp sp, 0" = expect ''"cmp sp, 0" to be correct [ff 3 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "sp" 0))
      [ 255 3 0 241 ]
    ;
    "cmp sp, 4" = expect ''"cmp sp, 4" to be correct [ff 13 0 f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "sp" 4))
      [ 255 19 0 241 ]
    ;
    "cmp sp, 4092" = expect ''"cmp sp, 4092" to be correct [ff f3 3f f1]''
      (lib.stripComments (lib.arch.aarch64.instructions.CMP_imm "sp" 4092))
      [ 255 243 63 241 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["ldr","LDR_mem",["reg_no_sp","mem"]]
  #
  "LDR_mem" = {
    "ldr x0, [x0]" = expect ''"ldr x0, [x0]" to be correct [0 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x0"))
      [ 0 0 64 249 ]
    ;
    "ldr x0, [x1]" = expect ''"ldr x0, [x1]" to be correct [20 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x1"))
      [ 32 0 64 249 ]
    ;
    "ldr x0, [x2]" = expect ''"ldr x0, [x2]" to be correct [40 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x2"))
      [ 64 0 64 249 ]
    ;
    "ldr x0, [x3]" = expect ''"ldr x0, [x3]" to be correct [60 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x3"))
      [ 96 0 64 249 ]
    ;
    "ldr x0, [x4]" = expect ''"ldr x0, [x4]" to be correct [80 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x4"))
      [ 128 0 64 249 ]
    ;
    "ldr x0, [x5]" = expect ''"ldr x0, [x5]" to be correct [a0 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x5"))
      [ 160 0 64 249 ]
    ;
    "ldr x0, [x6]" = expect ''"ldr x0, [x6]" to be correct [c0 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x6"))
      [ 192 0 64 249 ]
    ;
    "ldr x0, [x7]" = expect ''"ldr x0, [x7]" to be correct [e0 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x7"))
      [ 224 0 64 249 ]
    ;
    "ldr x0, [x8]" = expect ''"ldr x0, [x8]" to be correct [0 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x8"))
      [ 0 1 64 249 ]
    ;
    "ldr x0, [x9]" = expect ''"ldr x0, [x9]" to be correct [20 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x9"))
      [ 32 1 64 249 ]
    ;
    "ldr x0, [x10]" = expect ''"ldr x0, [x10]" to be correct [40 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x10"))
      [ 64 1 64 249 ]
    ;
    "ldr x0, [x11]" = expect ''"ldr x0, [x11]" to be correct [60 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x11"))
      [ 96 1 64 249 ]
    ;
    "ldr x0, [x12]" = expect ''"ldr x0, [x12]" to be correct [80 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x12"))
      [ 128 1 64 249 ]
    ;
    "ldr x0, [x13]" = expect ''"ldr x0, [x13]" to be correct [a0 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x13"))
      [ 160 1 64 249 ]
    ;
    "ldr x0, [x14]" = expect ''"ldr x0, [x14]" to be correct [c0 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x14"))
      [ 192 1 64 249 ]
    ;
    "ldr x0, [x15]" = expect ''"ldr x0, [x15]" to be correct [e0 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x15"))
      [ 224 1 64 249 ]
    ;
    "ldr x0, [x16]" = expect ''"ldr x0, [x16]" to be correct [0 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x16"))
      [ 0 2 64 249 ]
    ;
    "ldr x0, [x17]" = expect ''"ldr x0, [x17]" to be correct [20 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x17"))
      [ 32 2 64 249 ]
    ;
    "ldr x0, [x18]" = expect ''"ldr x0, [x18]" to be correct [40 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x18"))
      [ 64 2 64 249 ]
    ;
    "ldr x0, [x19]" = expect ''"ldr x0, [x19]" to be correct [60 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x19"))
      [ 96 2 64 249 ]
    ;
    "ldr x0, [x20]" = expect ''"ldr x0, [x20]" to be correct [80 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x20"))
      [ 128 2 64 249 ]
    ;
    "ldr x0, [x21]" = expect ''"ldr x0, [x21]" to be correct [a0 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x21"))
      [ 160 2 64 249 ]
    ;
    "ldr x0, [x22]" = expect ''"ldr x0, [x22]" to be correct [c0 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x22"))
      [ 192 2 64 249 ]
    ;
    "ldr x0, [x23]" = expect ''"ldr x0, [x23]" to be correct [e0 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x23"))
      [ 224 2 64 249 ]
    ;
    "ldr x0, [x24]" = expect ''"ldr x0, [x24]" to be correct [0 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x24"))
      [ 0 3 64 249 ]
    ;
    "ldr x0, [x25]" = expect ''"ldr x0, [x25]" to be correct [20 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x25"))
      [ 32 3 64 249 ]
    ;
    "ldr x0, [x26]" = expect ''"ldr x0, [x26]" to be correct [40 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x26"))
      [ 64 3 64 249 ]
    ;
    "ldr x0, [x27]" = expect ''"ldr x0, [x27]" to be correct [60 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x27"))
      [ 96 3 64 249 ]
    ;
    "ldr x0, [x28]" = expect ''"ldr x0, [x28]" to be correct [80 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x28"))
      [ 128 3 64 249 ]
    ;
    "ldr x0, [x29]" = expect ''"ldr x0, [x29]" to be correct [a0 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x29"))
      [ 160 3 64 249 ]
    ;
    "ldr x0, [x30]" = expect ''"ldr x0, [x30]" to be correct [c0 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "x30"))
      [ 192 3 64 249 ]
    ;
    "ldr x0, [sp]" = expect ''"ldr x0, [sp]" to be correct [e0 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x0" "sp"))
      [ 224 3 64 249 ]
    ;
    "ldr x1, [x0]" = expect ''"ldr x1, [x0]" to be correct [1 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x0"))
      [ 1 0 64 249 ]
    ;
    "ldr x1, [x1]" = expect ''"ldr x1, [x1]" to be correct [21 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x1"))
      [ 33 0 64 249 ]
    ;
    "ldr x1, [x2]" = expect ''"ldr x1, [x2]" to be correct [41 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x2"))
      [ 65 0 64 249 ]
    ;
    "ldr x1, [x3]" = expect ''"ldr x1, [x3]" to be correct [61 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x3"))
      [ 97 0 64 249 ]
    ;
    "ldr x1, [x4]" = expect ''"ldr x1, [x4]" to be correct [81 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x4"))
      [ 129 0 64 249 ]
    ;
    "ldr x1, [x5]" = expect ''"ldr x1, [x5]" to be correct [a1 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x5"))
      [ 161 0 64 249 ]
    ;
    "ldr x1, [x6]" = expect ''"ldr x1, [x6]" to be correct [c1 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x6"))
      [ 193 0 64 249 ]
    ;
    "ldr x1, [x7]" = expect ''"ldr x1, [x7]" to be correct [e1 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x7"))
      [ 225 0 64 249 ]
    ;
    "ldr x1, [x8]" = expect ''"ldr x1, [x8]" to be correct [1 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x8"))
      [ 1 1 64 249 ]
    ;
    "ldr x1, [x9]" = expect ''"ldr x1, [x9]" to be correct [21 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x9"))
      [ 33 1 64 249 ]
    ;
    "ldr x1, [x10]" = expect ''"ldr x1, [x10]" to be correct [41 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x10"))
      [ 65 1 64 249 ]
    ;
    "ldr x1, [x11]" = expect ''"ldr x1, [x11]" to be correct [61 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x11"))
      [ 97 1 64 249 ]
    ;
    "ldr x1, [x12]" = expect ''"ldr x1, [x12]" to be correct [81 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x12"))
      [ 129 1 64 249 ]
    ;
    "ldr x1, [x13]" = expect ''"ldr x1, [x13]" to be correct [a1 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x13"))
      [ 161 1 64 249 ]
    ;
    "ldr x1, [x14]" = expect ''"ldr x1, [x14]" to be correct [c1 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x14"))
      [ 193 1 64 249 ]
    ;
    "ldr x1, [x15]" = expect ''"ldr x1, [x15]" to be correct [e1 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x15"))
      [ 225 1 64 249 ]
    ;
    "ldr x1, [x16]" = expect ''"ldr x1, [x16]" to be correct [1 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x16"))
      [ 1 2 64 249 ]
    ;
    "ldr x1, [x17]" = expect ''"ldr x1, [x17]" to be correct [21 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x17"))
      [ 33 2 64 249 ]
    ;
    "ldr x1, [x18]" = expect ''"ldr x1, [x18]" to be correct [41 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x18"))
      [ 65 2 64 249 ]
    ;
    "ldr x1, [x19]" = expect ''"ldr x1, [x19]" to be correct [61 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x19"))
      [ 97 2 64 249 ]
    ;
    "ldr x1, [x20]" = expect ''"ldr x1, [x20]" to be correct [81 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x20"))
      [ 129 2 64 249 ]
    ;
    "ldr x1, [x21]" = expect ''"ldr x1, [x21]" to be correct [a1 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x21"))
      [ 161 2 64 249 ]
    ;
    "ldr x1, [x22]" = expect ''"ldr x1, [x22]" to be correct [c1 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x22"))
      [ 193 2 64 249 ]
    ;
    "ldr x1, [x23]" = expect ''"ldr x1, [x23]" to be correct [e1 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x23"))
      [ 225 2 64 249 ]
    ;
    "ldr x1, [x24]" = expect ''"ldr x1, [x24]" to be correct [1 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x24"))
      [ 1 3 64 249 ]
    ;
    "ldr x1, [x25]" = expect ''"ldr x1, [x25]" to be correct [21 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x25"))
      [ 33 3 64 249 ]
    ;
    "ldr x1, [x26]" = expect ''"ldr x1, [x26]" to be correct [41 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x26"))
      [ 65 3 64 249 ]
    ;
    "ldr x1, [x27]" = expect ''"ldr x1, [x27]" to be correct [61 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x27"))
      [ 97 3 64 249 ]
    ;
    "ldr x1, [x28]" = expect ''"ldr x1, [x28]" to be correct [81 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x28"))
      [ 129 3 64 249 ]
    ;
    "ldr x1, [x29]" = expect ''"ldr x1, [x29]" to be correct [a1 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x29"))
      [ 161 3 64 249 ]
    ;
    "ldr x1, [x30]" = expect ''"ldr x1, [x30]" to be correct [c1 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "x30"))
      [ 193 3 64 249 ]
    ;
    "ldr x1, [sp]" = expect ''"ldr x1, [sp]" to be correct [e1 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x1" "sp"))
      [ 225 3 64 249 ]
    ;
    "ldr x2, [x0]" = expect ''"ldr x2, [x0]" to be correct [2 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x0"))
      [ 2 0 64 249 ]
    ;
    "ldr x2, [x1]" = expect ''"ldr x2, [x1]" to be correct [22 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x1"))
      [ 34 0 64 249 ]
    ;
    "ldr x2, [x2]" = expect ''"ldr x2, [x2]" to be correct [42 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x2"))
      [ 66 0 64 249 ]
    ;
    "ldr x2, [x3]" = expect ''"ldr x2, [x3]" to be correct [62 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x3"))
      [ 98 0 64 249 ]
    ;
    "ldr x2, [x4]" = expect ''"ldr x2, [x4]" to be correct [82 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x4"))
      [ 130 0 64 249 ]
    ;
    "ldr x2, [x5]" = expect ''"ldr x2, [x5]" to be correct [a2 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x5"))
      [ 162 0 64 249 ]
    ;
    "ldr x2, [x6]" = expect ''"ldr x2, [x6]" to be correct [c2 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x6"))
      [ 194 0 64 249 ]
    ;
    "ldr x2, [x7]" = expect ''"ldr x2, [x7]" to be correct [e2 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x7"))
      [ 226 0 64 249 ]
    ;
    "ldr x2, [x8]" = expect ''"ldr x2, [x8]" to be correct [2 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x8"))
      [ 2 1 64 249 ]
    ;
    "ldr x2, [x9]" = expect ''"ldr x2, [x9]" to be correct [22 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x9"))
      [ 34 1 64 249 ]
    ;
    "ldr x2, [x10]" = expect ''"ldr x2, [x10]" to be correct [42 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x10"))
      [ 66 1 64 249 ]
    ;
    "ldr x2, [x11]" = expect ''"ldr x2, [x11]" to be correct [62 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x11"))
      [ 98 1 64 249 ]
    ;
    "ldr x2, [x12]" = expect ''"ldr x2, [x12]" to be correct [82 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x12"))
      [ 130 1 64 249 ]
    ;
    "ldr x2, [x13]" = expect ''"ldr x2, [x13]" to be correct [a2 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x13"))
      [ 162 1 64 249 ]
    ;
    "ldr x2, [x14]" = expect ''"ldr x2, [x14]" to be correct [c2 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x14"))
      [ 194 1 64 249 ]
    ;
    "ldr x2, [x15]" = expect ''"ldr x2, [x15]" to be correct [e2 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x15"))
      [ 226 1 64 249 ]
    ;
    "ldr x2, [x16]" = expect ''"ldr x2, [x16]" to be correct [2 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x16"))
      [ 2 2 64 249 ]
    ;
    "ldr x2, [x17]" = expect ''"ldr x2, [x17]" to be correct [22 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x17"))
      [ 34 2 64 249 ]
    ;
    "ldr x2, [x18]" = expect ''"ldr x2, [x18]" to be correct [42 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x18"))
      [ 66 2 64 249 ]
    ;
    "ldr x2, [x19]" = expect ''"ldr x2, [x19]" to be correct [62 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x19"))
      [ 98 2 64 249 ]
    ;
    "ldr x2, [x20]" = expect ''"ldr x2, [x20]" to be correct [82 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x20"))
      [ 130 2 64 249 ]
    ;
    "ldr x2, [x21]" = expect ''"ldr x2, [x21]" to be correct [a2 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x21"))
      [ 162 2 64 249 ]
    ;
    "ldr x2, [x22]" = expect ''"ldr x2, [x22]" to be correct [c2 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x22"))
      [ 194 2 64 249 ]
    ;
    "ldr x2, [x23]" = expect ''"ldr x2, [x23]" to be correct [e2 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x23"))
      [ 226 2 64 249 ]
    ;
    "ldr x2, [x24]" = expect ''"ldr x2, [x24]" to be correct [2 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x24"))
      [ 2 3 64 249 ]
    ;
    "ldr x2, [x25]" = expect ''"ldr x2, [x25]" to be correct [22 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x25"))
      [ 34 3 64 249 ]
    ;
    "ldr x2, [x26]" = expect ''"ldr x2, [x26]" to be correct [42 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x26"))
      [ 66 3 64 249 ]
    ;
    "ldr x2, [x27]" = expect ''"ldr x2, [x27]" to be correct [62 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x27"))
      [ 98 3 64 249 ]
    ;
    "ldr x2, [x28]" = expect ''"ldr x2, [x28]" to be correct [82 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x28"))
      [ 130 3 64 249 ]
    ;
    "ldr x2, [x29]" = expect ''"ldr x2, [x29]" to be correct [a2 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x29"))
      [ 162 3 64 249 ]
    ;
    "ldr x2, [x30]" = expect ''"ldr x2, [x30]" to be correct [c2 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "x30"))
      [ 194 3 64 249 ]
    ;
    "ldr x2, [sp]" = expect ''"ldr x2, [sp]" to be correct [e2 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x2" "sp"))
      [ 226 3 64 249 ]
    ;
    "ldr x3, [x0]" = expect ''"ldr x3, [x0]" to be correct [3 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x0"))
      [ 3 0 64 249 ]
    ;
    "ldr x3, [x1]" = expect ''"ldr x3, [x1]" to be correct [23 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x1"))
      [ 35 0 64 249 ]
    ;
    "ldr x3, [x2]" = expect ''"ldr x3, [x2]" to be correct [43 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x2"))
      [ 67 0 64 249 ]
    ;
    "ldr x3, [x3]" = expect ''"ldr x3, [x3]" to be correct [63 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x3"))
      [ 99 0 64 249 ]
    ;
    "ldr x3, [x4]" = expect ''"ldr x3, [x4]" to be correct [83 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x4"))
      [ 131 0 64 249 ]
    ;
    "ldr x3, [x5]" = expect ''"ldr x3, [x5]" to be correct [a3 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x5"))
      [ 163 0 64 249 ]
    ;
    "ldr x3, [x6]" = expect ''"ldr x3, [x6]" to be correct [c3 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x6"))
      [ 195 0 64 249 ]
    ;
    "ldr x3, [x7]" = expect ''"ldr x3, [x7]" to be correct [e3 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x7"))
      [ 227 0 64 249 ]
    ;
    "ldr x3, [x8]" = expect ''"ldr x3, [x8]" to be correct [3 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x8"))
      [ 3 1 64 249 ]
    ;
    "ldr x3, [x9]" = expect ''"ldr x3, [x9]" to be correct [23 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x9"))
      [ 35 1 64 249 ]
    ;
    "ldr x3, [x10]" = expect ''"ldr x3, [x10]" to be correct [43 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x10"))
      [ 67 1 64 249 ]
    ;
    "ldr x3, [x11]" = expect ''"ldr x3, [x11]" to be correct [63 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x11"))
      [ 99 1 64 249 ]
    ;
    "ldr x3, [x12]" = expect ''"ldr x3, [x12]" to be correct [83 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x12"))
      [ 131 1 64 249 ]
    ;
    "ldr x3, [x13]" = expect ''"ldr x3, [x13]" to be correct [a3 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x13"))
      [ 163 1 64 249 ]
    ;
    "ldr x3, [x14]" = expect ''"ldr x3, [x14]" to be correct [c3 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x14"))
      [ 195 1 64 249 ]
    ;
    "ldr x3, [x15]" = expect ''"ldr x3, [x15]" to be correct [e3 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x15"))
      [ 227 1 64 249 ]
    ;
    "ldr x3, [x16]" = expect ''"ldr x3, [x16]" to be correct [3 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x16"))
      [ 3 2 64 249 ]
    ;
    "ldr x3, [x17]" = expect ''"ldr x3, [x17]" to be correct [23 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x17"))
      [ 35 2 64 249 ]
    ;
    "ldr x3, [x18]" = expect ''"ldr x3, [x18]" to be correct [43 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x18"))
      [ 67 2 64 249 ]
    ;
    "ldr x3, [x19]" = expect ''"ldr x3, [x19]" to be correct [63 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x19"))
      [ 99 2 64 249 ]
    ;
    "ldr x3, [x20]" = expect ''"ldr x3, [x20]" to be correct [83 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x20"))
      [ 131 2 64 249 ]
    ;
    "ldr x3, [x21]" = expect ''"ldr x3, [x21]" to be correct [a3 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x21"))
      [ 163 2 64 249 ]
    ;
    "ldr x3, [x22]" = expect ''"ldr x3, [x22]" to be correct [c3 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x22"))
      [ 195 2 64 249 ]
    ;
    "ldr x3, [x23]" = expect ''"ldr x3, [x23]" to be correct [e3 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x23"))
      [ 227 2 64 249 ]
    ;
    "ldr x3, [x24]" = expect ''"ldr x3, [x24]" to be correct [3 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x24"))
      [ 3 3 64 249 ]
    ;
    "ldr x3, [x25]" = expect ''"ldr x3, [x25]" to be correct [23 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x25"))
      [ 35 3 64 249 ]
    ;
    "ldr x3, [x26]" = expect ''"ldr x3, [x26]" to be correct [43 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x26"))
      [ 67 3 64 249 ]
    ;
    "ldr x3, [x27]" = expect ''"ldr x3, [x27]" to be correct [63 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x27"))
      [ 99 3 64 249 ]
    ;
    "ldr x3, [x28]" = expect ''"ldr x3, [x28]" to be correct [83 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x28"))
      [ 131 3 64 249 ]
    ;
    "ldr x3, [x29]" = expect ''"ldr x3, [x29]" to be correct [a3 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x29"))
      [ 163 3 64 249 ]
    ;
    "ldr x3, [x30]" = expect ''"ldr x3, [x30]" to be correct [c3 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "x30"))
      [ 195 3 64 249 ]
    ;
    "ldr x3, [sp]" = expect ''"ldr x3, [sp]" to be correct [e3 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x3" "sp"))
      [ 227 3 64 249 ]
    ;
    "ldr x4, [x0]" = expect ''"ldr x4, [x0]" to be correct [4 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x0"))
      [ 4 0 64 249 ]
    ;
    "ldr x4, [x1]" = expect ''"ldr x4, [x1]" to be correct [24 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x1"))
      [ 36 0 64 249 ]
    ;
    "ldr x4, [x2]" = expect ''"ldr x4, [x2]" to be correct [44 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x2"))
      [ 68 0 64 249 ]
    ;
    "ldr x4, [x3]" = expect ''"ldr x4, [x3]" to be correct [64 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x3"))
      [ 100 0 64 249 ]
    ;
    "ldr x4, [x4]" = expect ''"ldr x4, [x4]" to be correct [84 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x4"))
      [ 132 0 64 249 ]
    ;
    "ldr x4, [x5]" = expect ''"ldr x4, [x5]" to be correct [a4 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x5"))
      [ 164 0 64 249 ]
    ;
    "ldr x4, [x6]" = expect ''"ldr x4, [x6]" to be correct [c4 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x6"))
      [ 196 0 64 249 ]
    ;
    "ldr x4, [x7]" = expect ''"ldr x4, [x7]" to be correct [e4 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x7"))
      [ 228 0 64 249 ]
    ;
    "ldr x4, [x8]" = expect ''"ldr x4, [x8]" to be correct [4 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x8"))
      [ 4 1 64 249 ]
    ;
    "ldr x4, [x9]" = expect ''"ldr x4, [x9]" to be correct [24 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x9"))
      [ 36 1 64 249 ]
    ;
    "ldr x4, [x10]" = expect ''"ldr x4, [x10]" to be correct [44 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x10"))
      [ 68 1 64 249 ]
    ;
    "ldr x4, [x11]" = expect ''"ldr x4, [x11]" to be correct [64 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x11"))
      [ 100 1 64 249 ]
    ;
    "ldr x4, [x12]" = expect ''"ldr x4, [x12]" to be correct [84 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x12"))
      [ 132 1 64 249 ]
    ;
    "ldr x4, [x13]" = expect ''"ldr x4, [x13]" to be correct [a4 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x13"))
      [ 164 1 64 249 ]
    ;
    "ldr x4, [x14]" = expect ''"ldr x4, [x14]" to be correct [c4 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x14"))
      [ 196 1 64 249 ]
    ;
    "ldr x4, [x15]" = expect ''"ldr x4, [x15]" to be correct [e4 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x15"))
      [ 228 1 64 249 ]
    ;
    "ldr x4, [x16]" = expect ''"ldr x4, [x16]" to be correct [4 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x16"))
      [ 4 2 64 249 ]
    ;
    "ldr x4, [x17]" = expect ''"ldr x4, [x17]" to be correct [24 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x17"))
      [ 36 2 64 249 ]
    ;
    "ldr x4, [x18]" = expect ''"ldr x4, [x18]" to be correct [44 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x18"))
      [ 68 2 64 249 ]
    ;
    "ldr x4, [x19]" = expect ''"ldr x4, [x19]" to be correct [64 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x19"))
      [ 100 2 64 249 ]
    ;
    "ldr x4, [x20]" = expect ''"ldr x4, [x20]" to be correct [84 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x20"))
      [ 132 2 64 249 ]
    ;
    "ldr x4, [x21]" = expect ''"ldr x4, [x21]" to be correct [a4 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x21"))
      [ 164 2 64 249 ]
    ;
    "ldr x4, [x22]" = expect ''"ldr x4, [x22]" to be correct [c4 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x22"))
      [ 196 2 64 249 ]
    ;
    "ldr x4, [x23]" = expect ''"ldr x4, [x23]" to be correct [e4 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x23"))
      [ 228 2 64 249 ]
    ;
    "ldr x4, [x24]" = expect ''"ldr x4, [x24]" to be correct [4 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x24"))
      [ 4 3 64 249 ]
    ;
    "ldr x4, [x25]" = expect ''"ldr x4, [x25]" to be correct [24 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x25"))
      [ 36 3 64 249 ]
    ;
    "ldr x4, [x26]" = expect ''"ldr x4, [x26]" to be correct [44 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x26"))
      [ 68 3 64 249 ]
    ;
    "ldr x4, [x27]" = expect ''"ldr x4, [x27]" to be correct [64 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x27"))
      [ 100 3 64 249 ]
    ;
    "ldr x4, [x28]" = expect ''"ldr x4, [x28]" to be correct [84 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x28"))
      [ 132 3 64 249 ]
    ;
    "ldr x4, [x29]" = expect ''"ldr x4, [x29]" to be correct [a4 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x29"))
      [ 164 3 64 249 ]
    ;
    "ldr x4, [x30]" = expect ''"ldr x4, [x30]" to be correct [c4 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "x30"))
      [ 196 3 64 249 ]
    ;
    "ldr x4, [sp]" = expect ''"ldr x4, [sp]" to be correct [e4 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x4" "sp"))
      [ 228 3 64 249 ]
    ;
    "ldr x5, [x0]" = expect ''"ldr x5, [x0]" to be correct [5 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x0"))
      [ 5 0 64 249 ]
    ;
    "ldr x5, [x1]" = expect ''"ldr x5, [x1]" to be correct [25 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x1"))
      [ 37 0 64 249 ]
    ;
    "ldr x5, [x2]" = expect ''"ldr x5, [x2]" to be correct [45 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x2"))
      [ 69 0 64 249 ]
    ;
    "ldr x5, [x3]" = expect ''"ldr x5, [x3]" to be correct [65 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x3"))
      [ 101 0 64 249 ]
    ;
    "ldr x5, [x4]" = expect ''"ldr x5, [x4]" to be correct [85 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x4"))
      [ 133 0 64 249 ]
    ;
    "ldr x5, [x5]" = expect ''"ldr x5, [x5]" to be correct [a5 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x5"))
      [ 165 0 64 249 ]
    ;
    "ldr x5, [x6]" = expect ''"ldr x5, [x6]" to be correct [c5 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x6"))
      [ 197 0 64 249 ]
    ;
    "ldr x5, [x7]" = expect ''"ldr x5, [x7]" to be correct [e5 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x7"))
      [ 229 0 64 249 ]
    ;
    "ldr x5, [x8]" = expect ''"ldr x5, [x8]" to be correct [5 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x8"))
      [ 5 1 64 249 ]
    ;
    "ldr x5, [x9]" = expect ''"ldr x5, [x9]" to be correct [25 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x9"))
      [ 37 1 64 249 ]
    ;
    "ldr x5, [x10]" = expect ''"ldr x5, [x10]" to be correct [45 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x10"))
      [ 69 1 64 249 ]
    ;
    "ldr x5, [x11]" = expect ''"ldr x5, [x11]" to be correct [65 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x11"))
      [ 101 1 64 249 ]
    ;
    "ldr x5, [x12]" = expect ''"ldr x5, [x12]" to be correct [85 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x12"))
      [ 133 1 64 249 ]
    ;
    "ldr x5, [x13]" = expect ''"ldr x5, [x13]" to be correct [a5 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x13"))
      [ 165 1 64 249 ]
    ;
    "ldr x5, [x14]" = expect ''"ldr x5, [x14]" to be correct [c5 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x14"))
      [ 197 1 64 249 ]
    ;
    "ldr x5, [x15]" = expect ''"ldr x5, [x15]" to be correct [e5 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x15"))
      [ 229 1 64 249 ]
    ;
    "ldr x5, [x16]" = expect ''"ldr x5, [x16]" to be correct [5 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x16"))
      [ 5 2 64 249 ]
    ;
    "ldr x5, [x17]" = expect ''"ldr x5, [x17]" to be correct [25 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x17"))
      [ 37 2 64 249 ]
    ;
    "ldr x5, [x18]" = expect ''"ldr x5, [x18]" to be correct [45 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x18"))
      [ 69 2 64 249 ]
    ;
    "ldr x5, [x19]" = expect ''"ldr x5, [x19]" to be correct [65 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x19"))
      [ 101 2 64 249 ]
    ;
    "ldr x5, [x20]" = expect ''"ldr x5, [x20]" to be correct [85 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x20"))
      [ 133 2 64 249 ]
    ;
    "ldr x5, [x21]" = expect ''"ldr x5, [x21]" to be correct [a5 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x21"))
      [ 165 2 64 249 ]
    ;
    "ldr x5, [x22]" = expect ''"ldr x5, [x22]" to be correct [c5 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x22"))
      [ 197 2 64 249 ]
    ;
    "ldr x5, [x23]" = expect ''"ldr x5, [x23]" to be correct [e5 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x23"))
      [ 229 2 64 249 ]
    ;
    "ldr x5, [x24]" = expect ''"ldr x5, [x24]" to be correct [5 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x24"))
      [ 5 3 64 249 ]
    ;
    "ldr x5, [x25]" = expect ''"ldr x5, [x25]" to be correct [25 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x25"))
      [ 37 3 64 249 ]
    ;
    "ldr x5, [x26]" = expect ''"ldr x5, [x26]" to be correct [45 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x26"))
      [ 69 3 64 249 ]
    ;
    "ldr x5, [x27]" = expect ''"ldr x5, [x27]" to be correct [65 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x27"))
      [ 101 3 64 249 ]
    ;
    "ldr x5, [x28]" = expect ''"ldr x5, [x28]" to be correct [85 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x28"))
      [ 133 3 64 249 ]
    ;
    "ldr x5, [x29]" = expect ''"ldr x5, [x29]" to be correct [a5 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x29"))
      [ 165 3 64 249 ]
    ;
    "ldr x5, [x30]" = expect ''"ldr x5, [x30]" to be correct [c5 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "x30"))
      [ 197 3 64 249 ]
    ;
    "ldr x5, [sp]" = expect ''"ldr x5, [sp]" to be correct [e5 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x5" "sp"))
      [ 229 3 64 249 ]
    ;
    "ldr x6, [x0]" = expect ''"ldr x6, [x0]" to be correct [6 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x0"))
      [ 6 0 64 249 ]
    ;
    "ldr x6, [x1]" = expect ''"ldr x6, [x1]" to be correct [26 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x1"))
      [ 38 0 64 249 ]
    ;
    "ldr x6, [x2]" = expect ''"ldr x6, [x2]" to be correct [46 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x2"))
      [ 70 0 64 249 ]
    ;
    "ldr x6, [x3]" = expect ''"ldr x6, [x3]" to be correct [66 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x3"))
      [ 102 0 64 249 ]
    ;
    "ldr x6, [x4]" = expect ''"ldr x6, [x4]" to be correct [86 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x4"))
      [ 134 0 64 249 ]
    ;
    "ldr x6, [x5]" = expect ''"ldr x6, [x5]" to be correct [a6 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x5"))
      [ 166 0 64 249 ]
    ;
    "ldr x6, [x6]" = expect ''"ldr x6, [x6]" to be correct [c6 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x6"))
      [ 198 0 64 249 ]
    ;
    "ldr x6, [x7]" = expect ''"ldr x6, [x7]" to be correct [e6 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x7"))
      [ 230 0 64 249 ]
    ;
    "ldr x6, [x8]" = expect ''"ldr x6, [x8]" to be correct [6 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x8"))
      [ 6 1 64 249 ]
    ;
    "ldr x6, [x9]" = expect ''"ldr x6, [x9]" to be correct [26 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x9"))
      [ 38 1 64 249 ]
    ;
    "ldr x6, [x10]" = expect ''"ldr x6, [x10]" to be correct [46 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x10"))
      [ 70 1 64 249 ]
    ;
    "ldr x6, [x11]" = expect ''"ldr x6, [x11]" to be correct [66 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x11"))
      [ 102 1 64 249 ]
    ;
    "ldr x6, [x12]" = expect ''"ldr x6, [x12]" to be correct [86 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x12"))
      [ 134 1 64 249 ]
    ;
    "ldr x6, [x13]" = expect ''"ldr x6, [x13]" to be correct [a6 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x13"))
      [ 166 1 64 249 ]
    ;
    "ldr x6, [x14]" = expect ''"ldr x6, [x14]" to be correct [c6 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x14"))
      [ 198 1 64 249 ]
    ;
    "ldr x6, [x15]" = expect ''"ldr x6, [x15]" to be correct [e6 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x15"))
      [ 230 1 64 249 ]
    ;
    "ldr x6, [x16]" = expect ''"ldr x6, [x16]" to be correct [6 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x16"))
      [ 6 2 64 249 ]
    ;
    "ldr x6, [x17]" = expect ''"ldr x6, [x17]" to be correct [26 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x17"))
      [ 38 2 64 249 ]
    ;
    "ldr x6, [x18]" = expect ''"ldr x6, [x18]" to be correct [46 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x18"))
      [ 70 2 64 249 ]
    ;
    "ldr x6, [x19]" = expect ''"ldr x6, [x19]" to be correct [66 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x19"))
      [ 102 2 64 249 ]
    ;
    "ldr x6, [x20]" = expect ''"ldr x6, [x20]" to be correct [86 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x20"))
      [ 134 2 64 249 ]
    ;
    "ldr x6, [x21]" = expect ''"ldr x6, [x21]" to be correct [a6 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x21"))
      [ 166 2 64 249 ]
    ;
    "ldr x6, [x22]" = expect ''"ldr x6, [x22]" to be correct [c6 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x22"))
      [ 198 2 64 249 ]
    ;
    "ldr x6, [x23]" = expect ''"ldr x6, [x23]" to be correct [e6 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x23"))
      [ 230 2 64 249 ]
    ;
    "ldr x6, [x24]" = expect ''"ldr x6, [x24]" to be correct [6 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x24"))
      [ 6 3 64 249 ]
    ;
    "ldr x6, [x25]" = expect ''"ldr x6, [x25]" to be correct [26 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x25"))
      [ 38 3 64 249 ]
    ;
    "ldr x6, [x26]" = expect ''"ldr x6, [x26]" to be correct [46 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x26"))
      [ 70 3 64 249 ]
    ;
    "ldr x6, [x27]" = expect ''"ldr x6, [x27]" to be correct [66 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x27"))
      [ 102 3 64 249 ]
    ;
    "ldr x6, [x28]" = expect ''"ldr x6, [x28]" to be correct [86 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x28"))
      [ 134 3 64 249 ]
    ;
    "ldr x6, [x29]" = expect ''"ldr x6, [x29]" to be correct [a6 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x29"))
      [ 166 3 64 249 ]
    ;
    "ldr x6, [x30]" = expect ''"ldr x6, [x30]" to be correct [c6 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "x30"))
      [ 198 3 64 249 ]
    ;
    "ldr x6, [sp]" = expect ''"ldr x6, [sp]" to be correct [e6 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x6" "sp"))
      [ 230 3 64 249 ]
    ;
    "ldr x7, [x0]" = expect ''"ldr x7, [x0]" to be correct [7 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x0"))
      [ 7 0 64 249 ]
    ;
    "ldr x7, [x1]" = expect ''"ldr x7, [x1]" to be correct [27 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x1"))
      [ 39 0 64 249 ]
    ;
    "ldr x7, [x2]" = expect ''"ldr x7, [x2]" to be correct [47 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x2"))
      [ 71 0 64 249 ]
    ;
    "ldr x7, [x3]" = expect ''"ldr x7, [x3]" to be correct [67 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x3"))
      [ 103 0 64 249 ]
    ;
    "ldr x7, [x4]" = expect ''"ldr x7, [x4]" to be correct [87 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x4"))
      [ 135 0 64 249 ]
    ;
    "ldr x7, [x5]" = expect ''"ldr x7, [x5]" to be correct [a7 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x5"))
      [ 167 0 64 249 ]
    ;
    "ldr x7, [x6]" = expect ''"ldr x7, [x6]" to be correct [c7 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x6"))
      [ 199 0 64 249 ]
    ;
    "ldr x7, [x7]" = expect ''"ldr x7, [x7]" to be correct [e7 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x7"))
      [ 231 0 64 249 ]
    ;
    "ldr x7, [x8]" = expect ''"ldr x7, [x8]" to be correct [7 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x8"))
      [ 7 1 64 249 ]
    ;
    "ldr x7, [x9]" = expect ''"ldr x7, [x9]" to be correct [27 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x9"))
      [ 39 1 64 249 ]
    ;
    "ldr x7, [x10]" = expect ''"ldr x7, [x10]" to be correct [47 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x10"))
      [ 71 1 64 249 ]
    ;
    "ldr x7, [x11]" = expect ''"ldr x7, [x11]" to be correct [67 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x11"))
      [ 103 1 64 249 ]
    ;
    "ldr x7, [x12]" = expect ''"ldr x7, [x12]" to be correct [87 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x12"))
      [ 135 1 64 249 ]
    ;
    "ldr x7, [x13]" = expect ''"ldr x7, [x13]" to be correct [a7 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x13"))
      [ 167 1 64 249 ]
    ;
    "ldr x7, [x14]" = expect ''"ldr x7, [x14]" to be correct [c7 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x14"))
      [ 199 1 64 249 ]
    ;
    "ldr x7, [x15]" = expect ''"ldr x7, [x15]" to be correct [e7 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x15"))
      [ 231 1 64 249 ]
    ;
    "ldr x7, [x16]" = expect ''"ldr x7, [x16]" to be correct [7 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x16"))
      [ 7 2 64 249 ]
    ;
    "ldr x7, [x17]" = expect ''"ldr x7, [x17]" to be correct [27 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x17"))
      [ 39 2 64 249 ]
    ;
    "ldr x7, [x18]" = expect ''"ldr x7, [x18]" to be correct [47 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x18"))
      [ 71 2 64 249 ]
    ;
    "ldr x7, [x19]" = expect ''"ldr x7, [x19]" to be correct [67 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x19"))
      [ 103 2 64 249 ]
    ;
    "ldr x7, [x20]" = expect ''"ldr x7, [x20]" to be correct [87 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x20"))
      [ 135 2 64 249 ]
    ;
    "ldr x7, [x21]" = expect ''"ldr x7, [x21]" to be correct [a7 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x21"))
      [ 167 2 64 249 ]
    ;
    "ldr x7, [x22]" = expect ''"ldr x7, [x22]" to be correct [c7 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x22"))
      [ 199 2 64 249 ]
    ;
    "ldr x7, [x23]" = expect ''"ldr x7, [x23]" to be correct [e7 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x23"))
      [ 231 2 64 249 ]
    ;
    "ldr x7, [x24]" = expect ''"ldr x7, [x24]" to be correct [7 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x24"))
      [ 7 3 64 249 ]
    ;
    "ldr x7, [x25]" = expect ''"ldr x7, [x25]" to be correct [27 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x25"))
      [ 39 3 64 249 ]
    ;
    "ldr x7, [x26]" = expect ''"ldr x7, [x26]" to be correct [47 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x26"))
      [ 71 3 64 249 ]
    ;
    "ldr x7, [x27]" = expect ''"ldr x7, [x27]" to be correct [67 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x27"))
      [ 103 3 64 249 ]
    ;
    "ldr x7, [x28]" = expect ''"ldr x7, [x28]" to be correct [87 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x28"))
      [ 135 3 64 249 ]
    ;
    "ldr x7, [x29]" = expect ''"ldr x7, [x29]" to be correct [a7 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x29"))
      [ 167 3 64 249 ]
    ;
    "ldr x7, [x30]" = expect ''"ldr x7, [x30]" to be correct [c7 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "x30"))
      [ 199 3 64 249 ]
    ;
    "ldr x7, [sp]" = expect ''"ldr x7, [sp]" to be correct [e7 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x7" "sp"))
      [ 231 3 64 249 ]
    ;
    "ldr x8, [x0]" = expect ''"ldr x8, [x0]" to be correct [8 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x0"))
      [ 8 0 64 249 ]
    ;
    "ldr x8, [x1]" = expect ''"ldr x8, [x1]" to be correct [28 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x1"))
      [ 40 0 64 249 ]
    ;
    "ldr x8, [x2]" = expect ''"ldr x8, [x2]" to be correct [48 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x2"))
      [ 72 0 64 249 ]
    ;
    "ldr x8, [x3]" = expect ''"ldr x8, [x3]" to be correct [68 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x3"))
      [ 104 0 64 249 ]
    ;
    "ldr x8, [x4]" = expect ''"ldr x8, [x4]" to be correct [88 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x4"))
      [ 136 0 64 249 ]
    ;
    "ldr x8, [x5]" = expect ''"ldr x8, [x5]" to be correct [a8 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x5"))
      [ 168 0 64 249 ]
    ;
    "ldr x8, [x6]" = expect ''"ldr x8, [x6]" to be correct [c8 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x6"))
      [ 200 0 64 249 ]
    ;
    "ldr x8, [x7]" = expect ''"ldr x8, [x7]" to be correct [e8 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x7"))
      [ 232 0 64 249 ]
    ;
    "ldr x8, [x8]" = expect ''"ldr x8, [x8]" to be correct [8 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x8"))
      [ 8 1 64 249 ]
    ;
    "ldr x8, [x9]" = expect ''"ldr x8, [x9]" to be correct [28 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x9"))
      [ 40 1 64 249 ]
    ;
    "ldr x8, [x10]" = expect ''"ldr x8, [x10]" to be correct [48 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x10"))
      [ 72 1 64 249 ]
    ;
    "ldr x8, [x11]" = expect ''"ldr x8, [x11]" to be correct [68 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x11"))
      [ 104 1 64 249 ]
    ;
    "ldr x8, [x12]" = expect ''"ldr x8, [x12]" to be correct [88 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x12"))
      [ 136 1 64 249 ]
    ;
    "ldr x8, [x13]" = expect ''"ldr x8, [x13]" to be correct [a8 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x13"))
      [ 168 1 64 249 ]
    ;
    "ldr x8, [x14]" = expect ''"ldr x8, [x14]" to be correct [c8 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x14"))
      [ 200 1 64 249 ]
    ;
    "ldr x8, [x15]" = expect ''"ldr x8, [x15]" to be correct [e8 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x15"))
      [ 232 1 64 249 ]
    ;
    "ldr x8, [x16]" = expect ''"ldr x8, [x16]" to be correct [8 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x16"))
      [ 8 2 64 249 ]
    ;
    "ldr x8, [x17]" = expect ''"ldr x8, [x17]" to be correct [28 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x17"))
      [ 40 2 64 249 ]
    ;
    "ldr x8, [x18]" = expect ''"ldr x8, [x18]" to be correct [48 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x18"))
      [ 72 2 64 249 ]
    ;
    "ldr x8, [x19]" = expect ''"ldr x8, [x19]" to be correct [68 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x19"))
      [ 104 2 64 249 ]
    ;
    "ldr x8, [x20]" = expect ''"ldr x8, [x20]" to be correct [88 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x20"))
      [ 136 2 64 249 ]
    ;
    "ldr x8, [x21]" = expect ''"ldr x8, [x21]" to be correct [a8 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x21"))
      [ 168 2 64 249 ]
    ;
    "ldr x8, [x22]" = expect ''"ldr x8, [x22]" to be correct [c8 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x22"))
      [ 200 2 64 249 ]
    ;
    "ldr x8, [x23]" = expect ''"ldr x8, [x23]" to be correct [e8 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x23"))
      [ 232 2 64 249 ]
    ;
    "ldr x8, [x24]" = expect ''"ldr x8, [x24]" to be correct [8 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x24"))
      [ 8 3 64 249 ]
    ;
    "ldr x8, [x25]" = expect ''"ldr x8, [x25]" to be correct [28 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x25"))
      [ 40 3 64 249 ]
    ;
    "ldr x8, [x26]" = expect ''"ldr x8, [x26]" to be correct [48 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x26"))
      [ 72 3 64 249 ]
    ;
    "ldr x8, [x27]" = expect ''"ldr x8, [x27]" to be correct [68 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x27"))
      [ 104 3 64 249 ]
    ;
    "ldr x8, [x28]" = expect ''"ldr x8, [x28]" to be correct [88 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x28"))
      [ 136 3 64 249 ]
    ;
    "ldr x8, [x29]" = expect ''"ldr x8, [x29]" to be correct [a8 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x29"))
      [ 168 3 64 249 ]
    ;
    "ldr x8, [x30]" = expect ''"ldr x8, [x30]" to be correct [c8 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "x30"))
      [ 200 3 64 249 ]
    ;
    "ldr x8, [sp]" = expect ''"ldr x8, [sp]" to be correct [e8 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x8" "sp"))
      [ 232 3 64 249 ]
    ;
    "ldr x9, [x0]" = expect ''"ldr x9, [x0]" to be correct [9 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x0"))
      [ 9 0 64 249 ]
    ;
    "ldr x9, [x1]" = expect ''"ldr x9, [x1]" to be correct [29 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x1"))
      [ 41 0 64 249 ]
    ;
    "ldr x9, [x2]" = expect ''"ldr x9, [x2]" to be correct [49 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x2"))
      [ 73 0 64 249 ]
    ;
    "ldr x9, [x3]" = expect ''"ldr x9, [x3]" to be correct [69 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x3"))
      [ 105 0 64 249 ]
    ;
    "ldr x9, [x4]" = expect ''"ldr x9, [x4]" to be correct [89 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x4"))
      [ 137 0 64 249 ]
    ;
    "ldr x9, [x5]" = expect ''"ldr x9, [x5]" to be correct [a9 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x5"))
      [ 169 0 64 249 ]
    ;
    "ldr x9, [x6]" = expect ''"ldr x9, [x6]" to be correct [c9 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x6"))
      [ 201 0 64 249 ]
    ;
    "ldr x9, [x7]" = expect ''"ldr x9, [x7]" to be correct [e9 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x7"))
      [ 233 0 64 249 ]
    ;
    "ldr x9, [x8]" = expect ''"ldr x9, [x8]" to be correct [9 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x8"))
      [ 9 1 64 249 ]
    ;
    "ldr x9, [x9]" = expect ''"ldr x9, [x9]" to be correct [29 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x9"))
      [ 41 1 64 249 ]
    ;
    "ldr x9, [x10]" = expect ''"ldr x9, [x10]" to be correct [49 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x10"))
      [ 73 1 64 249 ]
    ;
    "ldr x9, [x11]" = expect ''"ldr x9, [x11]" to be correct [69 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x11"))
      [ 105 1 64 249 ]
    ;
    "ldr x9, [x12]" = expect ''"ldr x9, [x12]" to be correct [89 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x12"))
      [ 137 1 64 249 ]
    ;
    "ldr x9, [x13]" = expect ''"ldr x9, [x13]" to be correct [a9 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x13"))
      [ 169 1 64 249 ]
    ;
    "ldr x9, [x14]" = expect ''"ldr x9, [x14]" to be correct [c9 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x14"))
      [ 201 1 64 249 ]
    ;
    "ldr x9, [x15]" = expect ''"ldr x9, [x15]" to be correct [e9 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x15"))
      [ 233 1 64 249 ]
    ;
    "ldr x9, [x16]" = expect ''"ldr x9, [x16]" to be correct [9 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x16"))
      [ 9 2 64 249 ]
    ;
    "ldr x9, [x17]" = expect ''"ldr x9, [x17]" to be correct [29 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x17"))
      [ 41 2 64 249 ]
    ;
    "ldr x9, [x18]" = expect ''"ldr x9, [x18]" to be correct [49 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x18"))
      [ 73 2 64 249 ]
    ;
    "ldr x9, [x19]" = expect ''"ldr x9, [x19]" to be correct [69 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x19"))
      [ 105 2 64 249 ]
    ;
    "ldr x9, [x20]" = expect ''"ldr x9, [x20]" to be correct [89 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x20"))
      [ 137 2 64 249 ]
    ;
    "ldr x9, [x21]" = expect ''"ldr x9, [x21]" to be correct [a9 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x21"))
      [ 169 2 64 249 ]
    ;
    "ldr x9, [x22]" = expect ''"ldr x9, [x22]" to be correct [c9 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x22"))
      [ 201 2 64 249 ]
    ;
    "ldr x9, [x23]" = expect ''"ldr x9, [x23]" to be correct [e9 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x23"))
      [ 233 2 64 249 ]
    ;
    "ldr x9, [x24]" = expect ''"ldr x9, [x24]" to be correct [9 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x24"))
      [ 9 3 64 249 ]
    ;
    "ldr x9, [x25]" = expect ''"ldr x9, [x25]" to be correct [29 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x25"))
      [ 41 3 64 249 ]
    ;
    "ldr x9, [x26]" = expect ''"ldr x9, [x26]" to be correct [49 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x26"))
      [ 73 3 64 249 ]
    ;
    "ldr x9, [x27]" = expect ''"ldr x9, [x27]" to be correct [69 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x27"))
      [ 105 3 64 249 ]
    ;
    "ldr x9, [x28]" = expect ''"ldr x9, [x28]" to be correct [89 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x28"))
      [ 137 3 64 249 ]
    ;
    "ldr x9, [x29]" = expect ''"ldr x9, [x29]" to be correct [a9 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x29"))
      [ 169 3 64 249 ]
    ;
    "ldr x9, [x30]" = expect ''"ldr x9, [x30]" to be correct [c9 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "x30"))
      [ 201 3 64 249 ]
    ;
    "ldr x9, [sp]" = expect ''"ldr x9, [sp]" to be correct [e9 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x9" "sp"))
      [ 233 3 64 249 ]
    ;
    "ldr x10, [x0]" = expect ''"ldr x10, [x0]" to be correct [a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x0"))
      [ 10 0 64 249 ]
    ;
    "ldr x10, [x1]" = expect ''"ldr x10, [x1]" to be correct [2a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x1"))
      [ 42 0 64 249 ]
    ;
    "ldr x10, [x2]" = expect ''"ldr x10, [x2]" to be correct [4a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x2"))
      [ 74 0 64 249 ]
    ;
    "ldr x10, [x3]" = expect ''"ldr x10, [x3]" to be correct [6a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x3"))
      [ 106 0 64 249 ]
    ;
    "ldr x10, [x4]" = expect ''"ldr x10, [x4]" to be correct [8a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x4"))
      [ 138 0 64 249 ]
    ;
    "ldr x10, [x5]" = expect ''"ldr x10, [x5]" to be correct [aa 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x5"))
      [ 170 0 64 249 ]
    ;
    "ldr x10, [x6]" = expect ''"ldr x10, [x6]" to be correct [ca 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x6"))
      [ 202 0 64 249 ]
    ;
    "ldr x10, [x7]" = expect ''"ldr x10, [x7]" to be correct [ea 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x7"))
      [ 234 0 64 249 ]
    ;
    "ldr x10, [x8]" = expect ''"ldr x10, [x8]" to be correct [a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x8"))
      [ 10 1 64 249 ]
    ;
    "ldr x10, [x9]" = expect ''"ldr x10, [x9]" to be correct [2a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x9"))
      [ 42 1 64 249 ]
    ;
    "ldr x10, [x10]" = expect ''"ldr x10, [x10]" to be correct [4a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x10"))
      [ 74 1 64 249 ]
    ;
    "ldr x10, [x11]" = expect ''"ldr x10, [x11]" to be correct [6a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x11"))
      [ 106 1 64 249 ]
    ;
    "ldr x10, [x12]" = expect ''"ldr x10, [x12]" to be correct [8a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x12"))
      [ 138 1 64 249 ]
    ;
    "ldr x10, [x13]" = expect ''"ldr x10, [x13]" to be correct [aa 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x13"))
      [ 170 1 64 249 ]
    ;
    "ldr x10, [x14]" = expect ''"ldr x10, [x14]" to be correct [ca 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x14"))
      [ 202 1 64 249 ]
    ;
    "ldr x10, [x15]" = expect ''"ldr x10, [x15]" to be correct [ea 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x15"))
      [ 234 1 64 249 ]
    ;
    "ldr x10, [x16]" = expect ''"ldr x10, [x16]" to be correct [a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x16"))
      [ 10 2 64 249 ]
    ;
    "ldr x10, [x17]" = expect ''"ldr x10, [x17]" to be correct [2a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x17"))
      [ 42 2 64 249 ]
    ;
    "ldr x10, [x18]" = expect ''"ldr x10, [x18]" to be correct [4a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x18"))
      [ 74 2 64 249 ]
    ;
    "ldr x10, [x19]" = expect ''"ldr x10, [x19]" to be correct [6a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x19"))
      [ 106 2 64 249 ]
    ;
    "ldr x10, [x20]" = expect ''"ldr x10, [x20]" to be correct [8a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x20"))
      [ 138 2 64 249 ]
    ;
    "ldr x10, [x21]" = expect ''"ldr x10, [x21]" to be correct [aa 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x21"))
      [ 170 2 64 249 ]
    ;
    "ldr x10, [x22]" = expect ''"ldr x10, [x22]" to be correct [ca 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x22"))
      [ 202 2 64 249 ]
    ;
    "ldr x10, [x23]" = expect ''"ldr x10, [x23]" to be correct [ea 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x23"))
      [ 234 2 64 249 ]
    ;
    "ldr x10, [x24]" = expect ''"ldr x10, [x24]" to be correct [a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x24"))
      [ 10 3 64 249 ]
    ;
    "ldr x10, [x25]" = expect ''"ldr x10, [x25]" to be correct [2a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x25"))
      [ 42 3 64 249 ]
    ;
    "ldr x10, [x26]" = expect ''"ldr x10, [x26]" to be correct [4a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x26"))
      [ 74 3 64 249 ]
    ;
    "ldr x10, [x27]" = expect ''"ldr x10, [x27]" to be correct [6a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x27"))
      [ 106 3 64 249 ]
    ;
    "ldr x10, [x28]" = expect ''"ldr x10, [x28]" to be correct [8a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x28"))
      [ 138 3 64 249 ]
    ;
    "ldr x10, [x29]" = expect ''"ldr x10, [x29]" to be correct [aa 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x29"))
      [ 170 3 64 249 ]
    ;
    "ldr x10, [x30]" = expect ''"ldr x10, [x30]" to be correct [ca 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "x30"))
      [ 202 3 64 249 ]
    ;
    "ldr x10, [sp]" = expect ''"ldr x10, [sp]" to be correct [ea 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x10" "sp"))
      [ 234 3 64 249 ]
    ;
    "ldr x11, [x0]" = expect ''"ldr x11, [x0]" to be correct [b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x0"))
      [ 11 0 64 249 ]
    ;
    "ldr x11, [x1]" = expect ''"ldr x11, [x1]" to be correct [2b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x1"))
      [ 43 0 64 249 ]
    ;
    "ldr x11, [x2]" = expect ''"ldr x11, [x2]" to be correct [4b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x2"))
      [ 75 0 64 249 ]
    ;
    "ldr x11, [x3]" = expect ''"ldr x11, [x3]" to be correct [6b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x3"))
      [ 107 0 64 249 ]
    ;
    "ldr x11, [x4]" = expect ''"ldr x11, [x4]" to be correct [8b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x4"))
      [ 139 0 64 249 ]
    ;
    "ldr x11, [x5]" = expect ''"ldr x11, [x5]" to be correct [ab 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x5"))
      [ 171 0 64 249 ]
    ;
    "ldr x11, [x6]" = expect ''"ldr x11, [x6]" to be correct [cb 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x6"))
      [ 203 0 64 249 ]
    ;
    "ldr x11, [x7]" = expect ''"ldr x11, [x7]" to be correct [eb 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x7"))
      [ 235 0 64 249 ]
    ;
    "ldr x11, [x8]" = expect ''"ldr x11, [x8]" to be correct [b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x8"))
      [ 11 1 64 249 ]
    ;
    "ldr x11, [x9]" = expect ''"ldr x11, [x9]" to be correct [2b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x9"))
      [ 43 1 64 249 ]
    ;
    "ldr x11, [x10]" = expect ''"ldr x11, [x10]" to be correct [4b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x10"))
      [ 75 1 64 249 ]
    ;
    "ldr x11, [x11]" = expect ''"ldr x11, [x11]" to be correct [6b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x11"))
      [ 107 1 64 249 ]
    ;
    "ldr x11, [x12]" = expect ''"ldr x11, [x12]" to be correct [8b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x12"))
      [ 139 1 64 249 ]
    ;
    "ldr x11, [x13]" = expect ''"ldr x11, [x13]" to be correct [ab 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x13"))
      [ 171 1 64 249 ]
    ;
    "ldr x11, [x14]" = expect ''"ldr x11, [x14]" to be correct [cb 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x14"))
      [ 203 1 64 249 ]
    ;
    "ldr x11, [x15]" = expect ''"ldr x11, [x15]" to be correct [eb 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x15"))
      [ 235 1 64 249 ]
    ;
    "ldr x11, [x16]" = expect ''"ldr x11, [x16]" to be correct [b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x16"))
      [ 11 2 64 249 ]
    ;
    "ldr x11, [x17]" = expect ''"ldr x11, [x17]" to be correct [2b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x17"))
      [ 43 2 64 249 ]
    ;
    "ldr x11, [x18]" = expect ''"ldr x11, [x18]" to be correct [4b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x18"))
      [ 75 2 64 249 ]
    ;
    "ldr x11, [x19]" = expect ''"ldr x11, [x19]" to be correct [6b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x19"))
      [ 107 2 64 249 ]
    ;
    "ldr x11, [x20]" = expect ''"ldr x11, [x20]" to be correct [8b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x20"))
      [ 139 2 64 249 ]
    ;
    "ldr x11, [x21]" = expect ''"ldr x11, [x21]" to be correct [ab 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x21"))
      [ 171 2 64 249 ]
    ;
    "ldr x11, [x22]" = expect ''"ldr x11, [x22]" to be correct [cb 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x22"))
      [ 203 2 64 249 ]
    ;
    "ldr x11, [x23]" = expect ''"ldr x11, [x23]" to be correct [eb 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x23"))
      [ 235 2 64 249 ]
    ;
    "ldr x11, [x24]" = expect ''"ldr x11, [x24]" to be correct [b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x24"))
      [ 11 3 64 249 ]
    ;
    "ldr x11, [x25]" = expect ''"ldr x11, [x25]" to be correct [2b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x25"))
      [ 43 3 64 249 ]
    ;
    "ldr x11, [x26]" = expect ''"ldr x11, [x26]" to be correct [4b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x26"))
      [ 75 3 64 249 ]
    ;
    "ldr x11, [x27]" = expect ''"ldr x11, [x27]" to be correct [6b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x27"))
      [ 107 3 64 249 ]
    ;
    "ldr x11, [x28]" = expect ''"ldr x11, [x28]" to be correct [8b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x28"))
      [ 139 3 64 249 ]
    ;
    "ldr x11, [x29]" = expect ''"ldr x11, [x29]" to be correct [ab 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x29"))
      [ 171 3 64 249 ]
    ;
    "ldr x11, [x30]" = expect ''"ldr x11, [x30]" to be correct [cb 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "x30"))
      [ 203 3 64 249 ]
    ;
    "ldr x11, [sp]" = expect ''"ldr x11, [sp]" to be correct [eb 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x11" "sp"))
      [ 235 3 64 249 ]
    ;
    "ldr x12, [x0]" = expect ''"ldr x12, [x0]" to be correct [c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x0"))
      [ 12 0 64 249 ]
    ;
    "ldr x12, [x1]" = expect ''"ldr x12, [x1]" to be correct [2c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x1"))
      [ 44 0 64 249 ]
    ;
    "ldr x12, [x2]" = expect ''"ldr x12, [x2]" to be correct [4c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x2"))
      [ 76 0 64 249 ]
    ;
    "ldr x12, [x3]" = expect ''"ldr x12, [x3]" to be correct [6c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x3"))
      [ 108 0 64 249 ]
    ;
    "ldr x12, [x4]" = expect ''"ldr x12, [x4]" to be correct [8c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x4"))
      [ 140 0 64 249 ]
    ;
    "ldr x12, [x5]" = expect ''"ldr x12, [x5]" to be correct [ac 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x5"))
      [ 172 0 64 249 ]
    ;
    "ldr x12, [x6]" = expect ''"ldr x12, [x6]" to be correct [cc 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x6"))
      [ 204 0 64 249 ]
    ;
    "ldr x12, [x7]" = expect ''"ldr x12, [x7]" to be correct [ec 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x7"))
      [ 236 0 64 249 ]
    ;
    "ldr x12, [x8]" = expect ''"ldr x12, [x8]" to be correct [c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x8"))
      [ 12 1 64 249 ]
    ;
    "ldr x12, [x9]" = expect ''"ldr x12, [x9]" to be correct [2c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x9"))
      [ 44 1 64 249 ]
    ;
    "ldr x12, [x10]" = expect ''"ldr x12, [x10]" to be correct [4c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x10"))
      [ 76 1 64 249 ]
    ;
    "ldr x12, [x11]" = expect ''"ldr x12, [x11]" to be correct [6c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x11"))
      [ 108 1 64 249 ]
    ;
    "ldr x12, [x12]" = expect ''"ldr x12, [x12]" to be correct [8c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x12"))
      [ 140 1 64 249 ]
    ;
    "ldr x12, [x13]" = expect ''"ldr x12, [x13]" to be correct [ac 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x13"))
      [ 172 1 64 249 ]
    ;
    "ldr x12, [x14]" = expect ''"ldr x12, [x14]" to be correct [cc 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x14"))
      [ 204 1 64 249 ]
    ;
    "ldr x12, [x15]" = expect ''"ldr x12, [x15]" to be correct [ec 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x15"))
      [ 236 1 64 249 ]
    ;
    "ldr x12, [x16]" = expect ''"ldr x12, [x16]" to be correct [c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x16"))
      [ 12 2 64 249 ]
    ;
    "ldr x12, [x17]" = expect ''"ldr x12, [x17]" to be correct [2c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x17"))
      [ 44 2 64 249 ]
    ;
    "ldr x12, [x18]" = expect ''"ldr x12, [x18]" to be correct [4c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x18"))
      [ 76 2 64 249 ]
    ;
    "ldr x12, [x19]" = expect ''"ldr x12, [x19]" to be correct [6c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x19"))
      [ 108 2 64 249 ]
    ;
    "ldr x12, [x20]" = expect ''"ldr x12, [x20]" to be correct [8c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x20"))
      [ 140 2 64 249 ]
    ;
    "ldr x12, [x21]" = expect ''"ldr x12, [x21]" to be correct [ac 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x21"))
      [ 172 2 64 249 ]
    ;
    "ldr x12, [x22]" = expect ''"ldr x12, [x22]" to be correct [cc 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x22"))
      [ 204 2 64 249 ]
    ;
    "ldr x12, [x23]" = expect ''"ldr x12, [x23]" to be correct [ec 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x23"))
      [ 236 2 64 249 ]
    ;
    "ldr x12, [x24]" = expect ''"ldr x12, [x24]" to be correct [c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x24"))
      [ 12 3 64 249 ]
    ;
    "ldr x12, [x25]" = expect ''"ldr x12, [x25]" to be correct [2c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x25"))
      [ 44 3 64 249 ]
    ;
    "ldr x12, [x26]" = expect ''"ldr x12, [x26]" to be correct [4c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x26"))
      [ 76 3 64 249 ]
    ;
    "ldr x12, [x27]" = expect ''"ldr x12, [x27]" to be correct [6c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x27"))
      [ 108 3 64 249 ]
    ;
    "ldr x12, [x28]" = expect ''"ldr x12, [x28]" to be correct [8c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x28"))
      [ 140 3 64 249 ]
    ;
    "ldr x12, [x29]" = expect ''"ldr x12, [x29]" to be correct [ac 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x29"))
      [ 172 3 64 249 ]
    ;
    "ldr x12, [x30]" = expect ''"ldr x12, [x30]" to be correct [cc 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "x30"))
      [ 204 3 64 249 ]
    ;
    "ldr x12, [sp]" = expect ''"ldr x12, [sp]" to be correct [ec 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x12" "sp"))
      [ 236 3 64 249 ]
    ;
    "ldr x13, [x0]" = expect ''"ldr x13, [x0]" to be correct [d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x0"))
      [ 13 0 64 249 ]
    ;
    "ldr x13, [x1]" = expect ''"ldr x13, [x1]" to be correct [2d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x1"))
      [ 45 0 64 249 ]
    ;
    "ldr x13, [x2]" = expect ''"ldr x13, [x2]" to be correct [4d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x2"))
      [ 77 0 64 249 ]
    ;
    "ldr x13, [x3]" = expect ''"ldr x13, [x3]" to be correct [6d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x3"))
      [ 109 0 64 249 ]
    ;
    "ldr x13, [x4]" = expect ''"ldr x13, [x4]" to be correct [8d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x4"))
      [ 141 0 64 249 ]
    ;
    "ldr x13, [x5]" = expect ''"ldr x13, [x5]" to be correct [ad 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x5"))
      [ 173 0 64 249 ]
    ;
    "ldr x13, [x6]" = expect ''"ldr x13, [x6]" to be correct [cd 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x6"))
      [ 205 0 64 249 ]
    ;
    "ldr x13, [x7]" = expect ''"ldr x13, [x7]" to be correct [ed 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x7"))
      [ 237 0 64 249 ]
    ;
    "ldr x13, [x8]" = expect ''"ldr x13, [x8]" to be correct [d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x8"))
      [ 13 1 64 249 ]
    ;
    "ldr x13, [x9]" = expect ''"ldr x13, [x9]" to be correct [2d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x9"))
      [ 45 1 64 249 ]
    ;
    "ldr x13, [x10]" = expect ''"ldr x13, [x10]" to be correct [4d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x10"))
      [ 77 1 64 249 ]
    ;
    "ldr x13, [x11]" = expect ''"ldr x13, [x11]" to be correct [6d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x11"))
      [ 109 1 64 249 ]
    ;
    "ldr x13, [x12]" = expect ''"ldr x13, [x12]" to be correct [8d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x12"))
      [ 141 1 64 249 ]
    ;
    "ldr x13, [x13]" = expect ''"ldr x13, [x13]" to be correct [ad 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x13"))
      [ 173 1 64 249 ]
    ;
    "ldr x13, [x14]" = expect ''"ldr x13, [x14]" to be correct [cd 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x14"))
      [ 205 1 64 249 ]
    ;
    "ldr x13, [x15]" = expect ''"ldr x13, [x15]" to be correct [ed 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x15"))
      [ 237 1 64 249 ]
    ;
    "ldr x13, [x16]" = expect ''"ldr x13, [x16]" to be correct [d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x16"))
      [ 13 2 64 249 ]
    ;
    "ldr x13, [x17]" = expect ''"ldr x13, [x17]" to be correct [2d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x17"))
      [ 45 2 64 249 ]
    ;
    "ldr x13, [x18]" = expect ''"ldr x13, [x18]" to be correct [4d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x18"))
      [ 77 2 64 249 ]
    ;
    "ldr x13, [x19]" = expect ''"ldr x13, [x19]" to be correct [6d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x19"))
      [ 109 2 64 249 ]
    ;
    "ldr x13, [x20]" = expect ''"ldr x13, [x20]" to be correct [8d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x20"))
      [ 141 2 64 249 ]
    ;
    "ldr x13, [x21]" = expect ''"ldr x13, [x21]" to be correct [ad 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x21"))
      [ 173 2 64 249 ]
    ;
    "ldr x13, [x22]" = expect ''"ldr x13, [x22]" to be correct [cd 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x22"))
      [ 205 2 64 249 ]
    ;
    "ldr x13, [x23]" = expect ''"ldr x13, [x23]" to be correct [ed 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x23"))
      [ 237 2 64 249 ]
    ;
    "ldr x13, [x24]" = expect ''"ldr x13, [x24]" to be correct [d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x24"))
      [ 13 3 64 249 ]
    ;
    "ldr x13, [x25]" = expect ''"ldr x13, [x25]" to be correct [2d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x25"))
      [ 45 3 64 249 ]
    ;
    "ldr x13, [x26]" = expect ''"ldr x13, [x26]" to be correct [4d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x26"))
      [ 77 3 64 249 ]
    ;
    "ldr x13, [x27]" = expect ''"ldr x13, [x27]" to be correct [6d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x27"))
      [ 109 3 64 249 ]
    ;
    "ldr x13, [x28]" = expect ''"ldr x13, [x28]" to be correct [8d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x28"))
      [ 141 3 64 249 ]
    ;
    "ldr x13, [x29]" = expect ''"ldr x13, [x29]" to be correct [ad 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x29"))
      [ 173 3 64 249 ]
    ;
    "ldr x13, [x30]" = expect ''"ldr x13, [x30]" to be correct [cd 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "x30"))
      [ 205 3 64 249 ]
    ;
    "ldr x13, [sp]" = expect ''"ldr x13, [sp]" to be correct [ed 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x13" "sp"))
      [ 237 3 64 249 ]
    ;
    "ldr x14, [x0]" = expect ''"ldr x14, [x0]" to be correct [e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x0"))
      [ 14 0 64 249 ]
    ;
    "ldr x14, [x1]" = expect ''"ldr x14, [x1]" to be correct [2e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x1"))
      [ 46 0 64 249 ]
    ;
    "ldr x14, [x2]" = expect ''"ldr x14, [x2]" to be correct [4e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x2"))
      [ 78 0 64 249 ]
    ;
    "ldr x14, [x3]" = expect ''"ldr x14, [x3]" to be correct [6e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x3"))
      [ 110 0 64 249 ]
    ;
    "ldr x14, [x4]" = expect ''"ldr x14, [x4]" to be correct [8e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x4"))
      [ 142 0 64 249 ]
    ;
    "ldr x14, [x5]" = expect ''"ldr x14, [x5]" to be correct [ae 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x5"))
      [ 174 0 64 249 ]
    ;
    "ldr x14, [x6]" = expect ''"ldr x14, [x6]" to be correct [ce 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x6"))
      [ 206 0 64 249 ]
    ;
    "ldr x14, [x7]" = expect ''"ldr x14, [x7]" to be correct [ee 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x7"))
      [ 238 0 64 249 ]
    ;
    "ldr x14, [x8]" = expect ''"ldr x14, [x8]" to be correct [e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x8"))
      [ 14 1 64 249 ]
    ;
    "ldr x14, [x9]" = expect ''"ldr x14, [x9]" to be correct [2e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x9"))
      [ 46 1 64 249 ]
    ;
    "ldr x14, [x10]" = expect ''"ldr x14, [x10]" to be correct [4e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x10"))
      [ 78 1 64 249 ]
    ;
    "ldr x14, [x11]" = expect ''"ldr x14, [x11]" to be correct [6e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x11"))
      [ 110 1 64 249 ]
    ;
    "ldr x14, [x12]" = expect ''"ldr x14, [x12]" to be correct [8e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x12"))
      [ 142 1 64 249 ]
    ;
    "ldr x14, [x13]" = expect ''"ldr x14, [x13]" to be correct [ae 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x13"))
      [ 174 1 64 249 ]
    ;
    "ldr x14, [x14]" = expect ''"ldr x14, [x14]" to be correct [ce 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x14"))
      [ 206 1 64 249 ]
    ;
    "ldr x14, [x15]" = expect ''"ldr x14, [x15]" to be correct [ee 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x15"))
      [ 238 1 64 249 ]
    ;
    "ldr x14, [x16]" = expect ''"ldr x14, [x16]" to be correct [e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x16"))
      [ 14 2 64 249 ]
    ;
    "ldr x14, [x17]" = expect ''"ldr x14, [x17]" to be correct [2e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x17"))
      [ 46 2 64 249 ]
    ;
    "ldr x14, [x18]" = expect ''"ldr x14, [x18]" to be correct [4e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x18"))
      [ 78 2 64 249 ]
    ;
    "ldr x14, [x19]" = expect ''"ldr x14, [x19]" to be correct [6e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x19"))
      [ 110 2 64 249 ]
    ;
    "ldr x14, [x20]" = expect ''"ldr x14, [x20]" to be correct [8e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x20"))
      [ 142 2 64 249 ]
    ;
    "ldr x14, [x21]" = expect ''"ldr x14, [x21]" to be correct [ae 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x21"))
      [ 174 2 64 249 ]
    ;
    "ldr x14, [x22]" = expect ''"ldr x14, [x22]" to be correct [ce 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x22"))
      [ 206 2 64 249 ]
    ;
    "ldr x14, [x23]" = expect ''"ldr x14, [x23]" to be correct [ee 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x23"))
      [ 238 2 64 249 ]
    ;
    "ldr x14, [x24]" = expect ''"ldr x14, [x24]" to be correct [e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x24"))
      [ 14 3 64 249 ]
    ;
    "ldr x14, [x25]" = expect ''"ldr x14, [x25]" to be correct [2e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x25"))
      [ 46 3 64 249 ]
    ;
    "ldr x14, [x26]" = expect ''"ldr x14, [x26]" to be correct [4e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x26"))
      [ 78 3 64 249 ]
    ;
    "ldr x14, [x27]" = expect ''"ldr x14, [x27]" to be correct [6e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x27"))
      [ 110 3 64 249 ]
    ;
    "ldr x14, [x28]" = expect ''"ldr x14, [x28]" to be correct [8e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x28"))
      [ 142 3 64 249 ]
    ;
    "ldr x14, [x29]" = expect ''"ldr x14, [x29]" to be correct [ae 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x29"))
      [ 174 3 64 249 ]
    ;
    "ldr x14, [x30]" = expect ''"ldr x14, [x30]" to be correct [ce 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "x30"))
      [ 206 3 64 249 ]
    ;
    "ldr x14, [sp]" = expect ''"ldr x14, [sp]" to be correct [ee 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x14" "sp"))
      [ 238 3 64 249 ]
    ;
    "ldr x15, [x0]" = expect ''"ldr x15, [x0]" to be correct [f 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x0"))
      [ 15 0 64 249 ]
    ;
    "ldr x15, [x1]" = expect ''"ldr x15, [x1]" to be correct [2f 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x1"))
      [ 47 0 64 249 ]
    ;
    "ldr x15, [x2]" = expect ''"ldr x15, [x2]" to be correct [4f 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x2"))
      [ 79 0 64 249 ]
    ;
    "ldr x15, [x3]" = expect ''"ldr x15, [x3]" to be correct [6f 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x3"))
      [ 111 0 64 249 ]
    ;
    "ldr x15, [x4]" = expect ''"ldr x15, [x4]" to be correct [8f 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x4"))
      [ 143 0 64 249 ]
    ;
    "ldr x15, [x5]" = expect ''"ldr x15, [x5]" to be correct [af 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x5"))
      [ 175 0 64 249 ]
    ;
    "ldr x15, [x6]" = expect ''"ldr x15, [x6]" to be correct [cf 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x6"))
      [ 207 0 64 249 ]
    ;
    "ldr x15, [x7]" = expect ''"ldr x15, [x7]" to be correct [ef 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x7"))
      [ 239 0 64 249 ]
    ;
    "ldr x15, [x8]" = expect ''"ldr x15, [x8]" to be correct [f 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x8"))
      [ 15 1 64 249 ]
    ;
    "ldr x15, [x9]" = expect ''"ldr x15, [x9]" to be correct [2f 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x9"))
      [ 47 1 64 249 ]
    ;
    "ldr x15, [x10]" = expect ''"ldr x15, [x10]" to be correct [4f 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x10"))
      [ 79 1 64 249 ]
    ;
    "ldr x15, [x11]" = expect ''"ldr x15, [x11]" to be correct [6f 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x11"))
      [ 111 1 64 249 ]
    ;
    "ldr x15, [x12]" = expect ''"ldr x15, [x12]" to be correct [8f 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x12"))
      [ 143 1 64 249 ]
    ;
    "ldr x15, [x13]" = expect ''"ldr x15, [x13]" to be correct [af 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x13"))
      [ 175 1 64 249 ]
    ;
    "ldr x15, [x14]" = expect ''"ldr x15, [x14]" to be correct [cf 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x14"))
      [ 207 1 64 249 ]
    ;
    "ldr x15, [x15]" = expect ''"ldr x15, [x15]" to be correct [ef 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x15"))
      [ 239 1 64 249 ]
    ;
    "ldr x15, [x16]" = expect ''"ldr x15, [x16]" to be correct [f 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x16"))
      [ 15 2 64 249 ]
    ;
    "ldr x15, [x17]" = expect ''"ldr x15, [x17]" to be correct [2f 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x17"))
      [ 47 2 64 249 ]
    ;
    "ldr x15, [x18]" = expect ''"ldr x15, [x18]" to be correct [4f 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x18"))
      [ 79 2 64 249 ]
    ;
    "ldr x15, [x19]" = expect ''"ldr x15, [x19]" to be correct [6f 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x19"))
      [ 111 2 64 249 ]
    ;
    "ldr x15, [x20]" = expect ''"ldr x15, [x20]" to be correct [8f 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x20"))
      [ 143 2 64 249 ]
    ;
    "ldr x15, [x21]" = expect ''"ldr x15, [x21]" to be correct [af 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x21"))
      [ 175 2 64 249 ]
    ;
    "ldr x15, [x22]" = expect ''"ldr x15, [x22]" to be correct [cf 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x22"))
      [ 207 2 64 249 ]
    ;
    "ldr x15, [x23]" = expect ''"ldr x15, [x23]" to be correct [ef 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x23"))
      [ 239 2 64 249 ]
    ;
    "ldr x15, [x24]" = expect ''"ldr x15, [x24]" to be correct [f 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x24"))
      [ 15 3 64 249 ]
    ;
    "ldr x15, [x25]" = expect ''"ldr x15, [x25]" to be correct [2f 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x25"))
      [ 47 3 64 249 ]
    ;
    "ldr x15, [x26]" = expect ''"ldr x15, [x26]" to be correct [4f 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x26"))
      [ 79 3 64 249 ]
    ;
    "ldr x15, [x27]" = expect ''"ldr x15, [x27]" to be correct [6f 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x27"))
      [ 111 3 64 249 ]
    ;
    "ldr x15, [x28]" = expect ''"ldr x15, [x28]" to be correct [8f 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x28"))
      [ 143 3 64 249 ]
    ;
    "ldr x15, [x29]" = expect ''"ldr x15, [x29]" to be correct [af 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x29"))
      [ 175 3 64 249 ]
    ;
    "ldr x15, [x30]" = expect ''"ldr x15, [x30]" to be correct [cf 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "x30"))
      [ 207 3 64 249 ]
    ;
    "ldr x15, [sp]" = expect ''"ldr x15, [sp]" to be correct [ef 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x15" "sp"))
      [ 239 3 64 249 ]
    ;
    "ldr x16, [x0]" = expect ''"ldr x16, [x0]" to be correct [10 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x0"))
      [ 16 0 64 249 ]
    ;
    "ldr x16, [x1]" = expect ''"ldr x16, [x1]" to be correct [30 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x1"))
      [ 48 0 64 249 ]
    ;
    "ldr x16, [x2]" = expect ''"ldr x16, [x2]" to be correct [50 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x2"))
      [ 80 0 64 249 ]
    ;
    "ldr x16, [x3]" = expect ''"ldr x16, [x3]" to be correct [70 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x3"))
      [ 112 0 64 249 ]
    ;
    "ldr x16, [x4]" = expect ''"ldr x16, [x4]" to be correct [90 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x4"))
      [ 144 0 64 249 ]
    ;
    "ldr x16, [x5]" = expect ''"ldr x16, [x5]" to be correct [b0 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x5"))
      [ 176 0 64 249 ]
    ;
    "ldr x16, [x6]" = expect ''"ldr x16, [x6]" to be correct [d0 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x6"))
      [ 208 0 64 249 ]
    ;
    "ldr x16, [x7]" = expect ''"ldr x16, [x7]" to be correct [f0 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x7"))
      [ 240 0 64 249 ]
    ;
    "ldr x16, [x8]" = expect ''"ldr x16, [x8]" to be correct [10 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x8"))
      [ 16 1 64 249 ]
    ;
    "ldr x16, [x9]" = expect ''"ldr x16, [x9]" to be correct [30 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x9"))
      [ 48 1 64 249 ]
    ;
    "ldr x16, [x10]" = expect ''"ldr x16, [x10]" to be correct [50 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x10"))
      [ 80 1 64 249 ]
    ;
    "ldr x16, [x11]" = expect ''"ldr x16, [x11]" to be correct [70 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x11"))
      [ 112 1 64 249 ]
    ;
    "ldr x16, [x12]" = expect ''"ldr x16, [x12]" to be correct [90 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x12"))
      [ 144 1 64 249 ]
    ;
    "ldr x16, [x13]" = expect ''"ldr x16, [x13]" to be correct [b0 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x13"))
      [ 176 1 64 249 ]
    ;
    "ldr x16, [x14]" = expect ''"ldr x16, [x14]" to be correct [d0 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x14"))
      [ 208 1 64 249 ]
    ;
    "ldr x16, [x15]" = expect ''"ldr x16, [x15]" to be correct [f0 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x15"))
      [ 240 1 64 249 ]
    ;
    "ldr x16, [x16]" = expect ''"ldr x16, [x16]" to be correct [10 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x16"))
      [ 16 2 64 249 ]
    ;
    "ldr x16, [x17]" = expect ''"ldr x16, [x17]" to be correct [30 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x17"))
      [ 48 2 64 249 ]
    ;
    "ldr x16, [x18]" = expect ''"ldr x16, [x18]" to be correct [50 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x18"))
      [ 80 2 64 249 ]
    ;
    "ldr x16, [x19]" = expect ''"ldr x16, [x19]" to be correct [70 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x19"))
      [ 112 2 64 249 ]
    ;
    "ldr x16, [x20]" = expect ''"ldr x16, [x20]" to be correct [90 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x20"))
      [ 144 2 64 249 ]
    ;
    "ldr x16, [x21]" = expect ''"ldr x16, [x21]" to be correct [b0 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x21"))
      [ 176 2 64 249 ]
    ;
    "ldr x16, [x22]" = expect ''"ldr x16, [x22]" to be correct [d0 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x22"))
      [ 208 2 64 249 ]
    ;
    "ldr x16, [x23]" = expect ''"ldr x16, [x23]" to be correct [f0 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x23"))
      [ 240 2 64 249 ]
    ;
    "ldr x16, [x24]" = expect ''"ldr x16, [x24]" to be correct [10 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x24"))
      [ 16 3 64 249 ]
    ;
    "ldr x16, [x25]" = expect ''"ldr x16, [x25]" to be correct [30 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x25"))
      [ 48 3 64 249 ]
    ;
    "ldr x16, [x26]" = expect ''"ldr x16, [x26]" to be correct [50 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x26"))
      [ 80 3 64 249 ]
    ;
    "ldr x16, [x27]" = expect ''"ldr x16, [x27]" to be correct [70 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x27"))
      [ 112 3 64 249 ]
    ;
    "ldr x16, [x28]" = expect ''"ldr x16, [x28]" to be correct [90 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x28"))
      [ 144 3 64 249 ]
    ;
    "ldr x16, [x29]" = expect ''"ldr x16, [x29]" to be correct [b0 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x29"))
      [ 176 3 64 249 ]
    ;
    "ldr x16, [x30]" = expect ''"ldr x16, [x30]" to be correct [d0 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "x30"))
      [ 208 3 64 249 ]
    ;
    "ldr x16, [sp]" = expect ''"ldr x16, [sp]" to be correct [f0 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x16" "sp"))
      [ 240 3 64 249 ]
    ;
    "ldr x17, [x0]" = expect ''"ldr x17, [x0]" to be correct [11 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x0"))
      [ 17 0 64 249 ]
    ;
    "ldr x17, [x1]" = expect ''"ldr x17, [x1]" to be correct [31 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x1"))
      [ 49 0 64 249 ]
    ;
    "ldr x17, [x2]" = expect ''"ldr x17, [x2]" to be correct [51 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x2"))
      [ 81 0 64 249 ]
    ;
    "ldr x17, [x3]" = expect ''"ldr x17, [x3]" to be correct [71 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x3"))
      [ 113 0 64 249 ]
    ;
    "ldr x17, [x4]" = expect ''"ldr x17, [x4]" to be correct [91 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x4"))
      [ 145 0 64 249 ]
    ;
    "ldr x17, [x5]" = expect ''"ldr x17, [x5]" to be correct [b1 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x5"))
      [ 177 0 64 249 ]
    ;
    "ldr x17, [x6]" = expect ''"ldr x17, [x6]" to be correct [d1 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x6"))
      [ 209 0 64 249 ]
    ;
    "ldr x17, [x7]" = expect ''"ldr x17, [x7]" to be correct [f1 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x7"))
      [ 241 0 64 249 ]
    ;
    "ldr x17, [x8]" = expect ''"ldr x17, [x8]" to be correct [11 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x8"))
      [ 17 1 64 249 ]
    ;
    "ldr x17, [x9]" = expect ''"ldr x17, [x9]" to be correct [31 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x9"))
      [ 49 1 64 249 ]
    ;
    "ldr x17, [x10]" = expect ''"ldr x17, [x10]" to be correct [51 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x10"))
      [ 81 1 64 249 ]
    ;
    "ldr x17, [x11]" = expect ''"ldr x17, [x11]" to be correct [71 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x11"))
      [ 113 1 64 249 ]
    ;
    "ldr x17, [x12]" = expect ''"ldr x17, [x12]" to be correct [91 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x12"))
      [ 145 1 64 249 ]
    ;
    "ldr x17, [x13]" = expect ''"ldr x17, [x13]" to be correct [b1 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x13"))
      [ 177 1 64 249 ]
    ;
    "ldr x17, [x14]" = expect ''"ldr x17, [x14]" to be correct [d1 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x14"))
      [ 209 1 64 249 ]
    ;
    "ldr x17, [x15]" = expect ''"ldr x17, [x15]" to be correct [f1 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x15"))
      [ 241 1 64 249 ]
    ;
    "ldr x17, [x16]" = expect ''"ldr x17, [x16]" to be correct [11 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x16"))
      [ 17 2 64 249 ]
    ;
    "ldr x17, [x17]" = expect ''"ldr x17, [x17]" to be correct [31 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x17"))
      [ 49 2 64 249 ]
    ;
    "ldr x17, [x18]" = expect ''"ldr x17, [x18]" to be correct [51 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x18"))
      [ 81 2 64 249 ]
    ;
    "ldr x17, [x19]" = expect ''"ldr x17, [x19]" to be correct [71 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x19"))
      [ 113 2 64 249 ]
    ;
    "ldr x17, [x20]" = expect ''"ldr x17, [x20]" to be correct [91 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x20"))
      [ 145 2 64 249 ]
    ;
    "ldr x17, [x21]" = expect ''"ldr x17, [x21]" to be correct [b1 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x21"))
      [ 177 2 64 249 ]
    ;
    "ldr x17, [x22]" = expect ''"ldr x17, [x22]" to be correct [d1 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x22"))
      [ 209 2 64 249 ]
    ;
    "ldr x17, [x23]" = expect ''"ldr x17, [x23]" to be correct [f1 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x23"))
      [ 241 2 64 249 ]
    ;
    "ldr x17, [x24]" = expect ''"ldr x17, [x24]" to be correct [11 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x24"))
      [ 17 3 64 249 ]
    ;
    "ldr x17, [x25]" = expect ''"ldr x17, [x25]" to be correct [31 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x25"))
      [ 49 3 64 249 ]
    ;
    "ldr x17, [x26]" = expect ''"ldr x17, [x26]" to be correct [51 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x26"))
      [ 81 3 64 249 ]
    ;
    "ldr x17, [x27]" = expect ''"ldr x17, [x27]" to be correct [71 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x27"))
      [ 113 3 64 249 ]
    ;
    "ldr x17, [x28]" = expect ''"ldr x17, [x28]" to be correct [91 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x28"))
      [ 145 3 64 249 ]
    ;
    "ldr x17, [x29]" = expect ''"ldr x17, [x29]" to be correct [b1 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x29"))
      [ 177 3 64 249 ]
    ;
    "ldr x17, [x30]" = expect ''"ldr x17, [x30]" to be correct [d1 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "x30"))
      [ 209 3 64 249 ]
    ;
    "ldr x17, [sp]" = expect ''"ldr x17, [sp]" to be correct [f1 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x17" "sp"))
      [ 241 3 64 249 ]
    ;
    "ldr x18, [x0]" = expect ''"ldr x18, [x0]" to be correct [12 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x0"))
      [ 18 0 64 249 ]
    ;
    "ldr x18, [x1]" = expect ''"ldr x18, [x1]" to be correct [32 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x1"))
      [ 50 0 64 249 ]
    ;
    "ldr x18, [x2]" = expect ''"ldr x18, [x2]" to be correct [52 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x2"))
      [ 82 0 64 249 ]
    ;
    "ldr x18, [x3]" = expect ''"ldr x18, [x3]" to be correct [72 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x3"))
      [ 114 0 64 249 ]
    ;
    "ldr x18, [x4]" = expect ''"ldr x18, [x4]" to be correct [92 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x4"))
      [ 146 0 64 249 ]
    ;
    "ldr x18, [x5]" = expect ''"ldr x18, [x5]" to be correct [b2 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x5"))
      [ 178 0 64 249 ]
    ;
    "ldr x18, [x6]" = expect ''"ldr x18, [x6]" to be correct [d2 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x6"))
      [ 210 0 64 249 ]
    ;
    "ldr x18, [x7]" = expect ''"ldr x18, [x7]" to be correct [f2 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x7"))
      [ 242 0 64 249 ]
    ;
    "ldr x18, [x8]" = expect ''"ldr x18, [x8]" to be correct [12 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x8"))
      [ 18 1 64 249 ]
    ;
    "ldr x18, [x9]" = expect ''"ldr x18, [x9]" to be correct [32 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x9"))
      [ 50 1 64 249 ]
    ;
    "ldr x18, [x10]" = expect ''"ldr x18, [x10]" to be correct [52 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x10"))
      [ 82 1 64 249 ]
    ;
    "ldr x18, [x11]" = expect ''"ldr x18, [x11]" to be correct [72 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x11"))
      [ 114 1 64 249 ]
    ;
    "ldr x18, [x12]" = expect ''"ldr x18, [x12]" to be correct [92 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x12"))
      [ 146 1 64 249 ]
    ;
    "ldr x18, [x13]" = expect ''"ldr x18, [x13]" to be correct [b2 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x13"))
      [ 178 1 64 249 ]
    ;
    "ldr x18, [x14]" = expect ''"ldr x18, [x14]" to be correct [d2 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x14"))
      [ 210 1 64 249 ]
    ;
    "ldr x18, [x15]" = expect ''"ldr x18, [x15]" to be correct [f2 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x15"))
      [ 242 1 64 249 ]
    ;
    "ldr x18, [x16]" = expect ''"ldr x18, [x16]" to be correct [12 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x16"))
      [ 18 2 64 249 ]
    ;
    "ldr x18, [x17]" = expect ''"ldr x18, [x17]" to be correct [32 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x17"))
      [ 50 2 64 249 ]
    ;
    "ldr x18, [x18]" = expect ''"ldr x18, [x18]" to be correct [52 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x18"))
      [ 82 2 64 249 ]
    ;
    "ldr x18, [x19]" = expect ''"ldr x18, [x19]" to be correct [72 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x19"))
      [ 114 2 64 249 ]
    ;
    "ldr x18, [x20]" = expect ''"ldr x18, [x20]" to be correct [92 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x20"))
      [ 146 2 64 249 ]
    ;
    "ldr x18, [x21]" = expect ''"ldr x18, [x21]" to be correct [b2 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x21"))
      [ 178 2 64 249 ]
    ;
    "ldr x18, [x22]" = expect ''"ldr x18, [x22]" to be correct [d2 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x22"))
      [ 210 2 64 249 ]
    ;
    "ldr x18, [x23]" = expect ''"ldr x18, [x23]" to be correct [f2 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x23"))
      [ 242 2 64 249 ]
    ;
    "ldr x18, [x24]" = expect ''"ldr x18, [x24]" to be correct [12 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x24"))
      [ 18 3 64 249 ]
    ;
    "ldr x18, [x25]" = expect ''"ldr x18, [x25]" to be correct [32 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x25"))
      [ 50 3 64 249 ]
    ;
    "ldr x18, [x26]" = expect ''"ldr x18, [x26]" to be correct [52 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x26"))
      [ 82 3 64 249 ]
    ;
    "ldr x18, [x27]" = expect ''"ldr x18, [x27]" to be correct [72 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x27"))
      [ 114 3 64 249 ]
    ;
    "ldr x18, [x28]" = expect ''"ldr x18, [x28]" to be correct [92 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x28"))
      [ 146 3 64 249 ]
    ;
    "ldr x18, [x29]" = expect ''"ldr x18, [x29]" to be correct [b2 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x29"))
      [ 178 3 64 249 ]
    ;
    "ldr x18, [x30]" = expect ''"ldr x18, [x30]" to be correct [d2 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "x30"))
      [ 210 3 64 249 ]
    ;
    "ldr x18, [sp]" = expect ''"ldr x18, [sp]" to be correct [f2 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x18" "sp"))
      [ 242 3 64 249 ]
    ;
    "ldr x19, [x0]" = expect ''"ldr x19, [x0]" to be correct [13 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x0"))
      [ 19 0 64 249 ]
    ;
    "ldr x19, [x1]" = expect ''"ldr x19, [x1]" to be correct [33 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x1"))
      [ 51 0 64 249 ]
    ;
    "ldr x19, [x2]" = expect ''"ldr x19, [x2]" to be correct [53 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x2"))
      [ 83 0 64 249 ]
    ;
    "ldr x19, [x3]" = expect ''"ldr x19, [x3]" to be correct [73 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x3"))
      [ 115 0 64 249 ]
    ;
    "ldr x19, [x4]" = expect ''"ldr x19, [x4]" to be correct [93 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x4"))
      [ 147 0 64 249 ]
    ;
    "ldr x19, [x5]" = expect ''"ldr x19, [x5]" to be correct [b3 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x5"))
      [ 179 0 64 249 ]
    ;
    "ldr x19, [x6]" = expect ''"ldr x19, [x6]" to be correct [d3 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x6"))
      [ 211 0 64 249 ]
    ;
    "ldr x19, [x7]" = expect ''"ldr x19, [x7]" to be correct [f3 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x7"))
      [ 243 0 64 249 ]
    ;
    "ldr x19, [x8]" = expect ''"ldr x19, [x8]" to be correct [13 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x8"))
      [ 19 1 64 249 ]
    ;
    "ldr x19, [x9]" = expect ''"ldr x19, [x9]" to be correct [33 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x9"))
      [ 51 1 64 249 ]
    ;
    "ldr x19, [x10]" = expect ''"ldr x19, [x10]" to be correct [53 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x10"))
      [ 83 1 64 249 ]
    ;
    "ldr x19, [x11]" = expect ''"ldr x19, [x11]" to be correct [73 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x11"))
      [ 115 1 64 249 ]
    ;
    "ldr x19, [x12]" = expect ''"ldr x19, [x12]" to be correct [93 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x12"))
      [ 147 1 64 249 ]
    ;
    "ldr x19, [x13]" = expect ''"ldr x19, [x13]" to be correct [b3 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x13"))
      [ 179 1 64 249 ]
    ;
    "ldr x19, [x14]" = expect ''"ldr x19, [x14]" to be correct [d3 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x14"))
      [ 211 1 64 249 ]
    ;
    "ldr x19, [x15]" = expect ''"ldr x19, [x15]" to be correct [f3 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x15"))
      [ 243 1 64 249 ]
    ;
    "ldr x19, [x16]" = expect ''"ldr x19, [x16]" to be correct [13 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x16"))
      [ 19 2 64 249 ]
    ;
    "ldr x19, [x17]" = expect ''"ldr x19, [x17]" to be correct [33 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x17"))
      [ 51 2 64 249 ]
    ;
    "ldr x19, [x18]" = expect ''"ldr x19, [x18]" to be correct [53 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x18"))
      [ 83 2 64 249 ]
    ;
    "ldr x19, [x19]" = expect ''"ldr x19, [x19]" to be correct [73 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x19"))
      [ 115 2 64 249 ]
    ;
    "ldr x19, [x20]" = expect ''"ldr x19, [x20]" to be correct [93 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x20"))
      [ 147 2 64 249 ]
    ;
    "ldr x19, [x21]" = expect ''"ldr x19, [x21]" to be correct [b3 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x21"))
      [ 179 2 64 249 ]
    ;
    "ldr x19, [x22]" = expect ''"ldr x19, [x22]" to be correct [d3 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x22"))
      [ 211 2 64 249 ]
    ;
    "ldr x19, [x23]" = expect ''"ldr x19, [x23]" to be correct [f3 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x23"))
      [ 243 2 64 249 ]
    ;
    "ldr x19, [x24]" = expect ''"ldr x19, [x24]" to be correct [13 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x24"))
      [ 19 3 64 249 ]
    ;
    "ldr x19, [x25]" = expect ''"ldr x19, [x25]" to be correct [33 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x25"))
      [ 51 3 64 249 ]
    ;
    "ldr x19, [x26]" = expect ''"ldr x19, [x26]" to be correct [53 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x26"))
      [ 83 3 64 249 ]
    ;
    "ldr x19, [x27]" = expect ''"ldr x19, [x27]" to be correct [73 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x27"))
      [ 115 3 64 249 ]
    ;
    "ldr x19, [x28]" = expect ''"ldr x19, [x28]" to be correct [93 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x28"))
      [ 147 3 64 249 ]
    ;
    "ldr x19, [x29]" = expect ''"ldr x19, [x29]" to be correct [b3 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x29"))
      [ 179 3 64 249 ]
    ;
    "ldr x19, [x30]" = expect ''"ldr x19, [x30]" to be correct [d3 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "x30"))
      [ 211 3 64 249 ]
    ;
    "ldr x19, [sp]" = expect ''"ldr x19, [sp]" to be correct [f3 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x19" "sp"))
      [ 243 3 64 249 ]
    ;
    "ldr x20, [x0]" = expect ''"ldr x20, [x0]" to be correct [14 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x0"))
      [ 20 0 64 249 ]
    ;
    "ldr x20, [x1]" = expect ''"ldr x20, [x1]" to be correct [34 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x1"))
      [ 52 0 64 249 ]
    ;
    "ldr x20, [x2]" = expect ''"ldr x20, [x2]" to be correct [54 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x2"))
      [ 84 0 64 249 ]
    ;
    "ldr x20, [x3]" = expect ''"ldr x20, [x3]" to be correct [74 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x3"))
      [ 116 0 64 249 ]
    ;
    "ldr x20, [x4]" = expect ''"ldr x20, [x4]" to be correct [94 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x4"))
      [ 148 0 64 249 ]
    ;
    "ldr x20, [x5]" = expect ''"ldr x20, [x5]" to be correct [b4 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x5"))
      [ 180 0 64 249 ]
    ;
    "ldr x20, [x6]" = expect ''"ldr x20, [x6]" to be correct [d4 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x6"))
      [ 212 0 64 249 ]
    ;
    "ldr x20, [x7]" = expect ''"ldr x20, [x7]" to be correct [f4 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x7"))
      [ 244 0 64 249 ]
    ;
    "ldr x20, [x8]" = expect ''"ldr x20, [x8]" to be correct [14 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x8"))
      [ 20 1 64 249 ]
    ;
    "ldr x20, [x9]" = expect ''"ldr x20, [x9]" to be correct [34 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x9"))
      [ 52 1 64 249 ]
    ;
    "ldr x20, [x10]" = expect ''"ldr x20, [x10]" to be correct [54 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x10"))
      [ 84 1 64 249 ]
    ;
    "ldr x20, [x11]" = expect ''"ldr x20, [x11]" to be correct [74 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x11"))
      [ 116 1 64 249 ]
    ;
    "ldr x20, [x12]" = expect ''"ldr x20, [x12]" to be correct [94 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x12"))
      [ 148 1 64 249 ]
    ;
    "ldr x20, [x13]" = expect ''"ldr x20, [x13]" to be correct [b4 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x13"))
      [ 180 1 64 249 ]
    ;
    "ldr x20, [x14]" = expect ''"ldr x20, [x14]" to be correct [d4 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x14"))
      [ 212 1 64 249 ]
    ;
    "ldr x20, [x15]" = expect ''"ldr x20, [x15]" to be correct [f4 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x15"))
      [ 244 1 64 249 ]
    ;
    "ldr x20, [x16]" = expect ''"ldr x20, [x16]" to be correct [14 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x16"))
      [ 20 2 64 249 ]
    ;
    "ldr x20, [x17]" = expect ''"ldr x20, [x17]" to be correct [34 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x17"))
      [ 52 2 64 249 ]
    ;
    "ldr x20, [x18]" = expect ''"ldr x20, [x18]" to be correct [54 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x18"))
      [ 84 2 64 249 ]
    ;
    "ldr x20, [x19]" = expect ''"ldr x20, [x19]" to be correct [74 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x19"))
      [ 116 2 64 249 ]
    ;
    "ldr x20, [x20]" = expect ''"ldr x20, [x20]" to be correct [94 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x20"))
      [ 148 2 64 249 ]
    ;
    "ldr x20, [x21]" = expect ''"ldr x20, [x21]" to be correct [b4 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x21"))
      [ 180 2 64 249 ]
    ;
    "ldr x20, [x22]" = expect ''"ldr x20, [x22]" to be correct [d4 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x22"))
      [ 212 2 64 249 ]
    ;
    "ldr x20, [x23]" = expect ''"ldr x20, [x23]" to be correct [f4 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x23"))
      [ 244 2 64 249 ]
    ;
    "ldr x20, [x24]" = expect ''"ldr x20, [x24]" to be correct [14 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x24"))
      [ 20 3 64 249 ]
    ;
    "ldr x20, [x25]" = expect ''"ldr x20, [x25]" to be correct [34 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x25"))
      [ 52 3 64 249 ]
    ;
    "ldr x20, [x26]" = expect ''"ldr x20, [x26]" to be correct [54 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x26"))
      [ 84 3 64 249 ]
    ;
    "ldr x20, [x27]" = expect ''"ldr x20, [x27]" to be correct [74 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x27"))
      [ 116 3 64 249 ]
    ;
    "ldr x20, [x28]" = expect ''"ldr x20, [x28]" to be correct [94 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x28"))
      [ 148 3 64 249 ]
    ;
    "ldr x20, [x29]" = expect ''"ldr x20, [x29]" to be correct [b4 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x29"))
      [ 180 3 64 249 ]
    ;
    "ldr x20, [x30]" = expect ''"ldr x20, [x30]" to be correct [d4 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "x30"))
      [ 212 3 64 249 ]
    ;
    "ldr x20, [sp]" = expect ''"ldr x20, [sp]" to be correct [f4 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x20" "sp"))
      [ 244 3 64 249 ]
    ;
    "ldr x21, [x0]" = expect ''"ldr x21, [x0]" to be correct [15 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x0"))
      [ 21 0 64 249 ]
    ;
    "ldr x21, [x1]" = expect ''"ldr x21, [x1]" to be correct [35 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x1"))
      [ 53 0 64 249 ]
    ;
    "ldr x21, [x2]" = expect ''"ldr x21, [x2]" to be correct [55 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x2"))
      [ 85 0 64 249 ]
    ;
    "ldr x21, [x3]" = expect ''"ldr x21, [x3]" to be correct [75 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x3"))
      [ 117 0 64 249 ]
    ;
    "ldr x21, [x4]" = expect ''"ldr x21, [x4]" to be correct [95 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x4"))
      [ 149 0 64 249 ]
    ;
    "ldr x21, [x5]" = expect ''"ldr x21, [x5]" to be correct [b5 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x5"))
      [ 181 0 64 249 ]
    ;
    "ldr x21, [x6]" = expect ''"ldr x21, [x6]" to be correct [d5 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x6"))
      [ 213 0 64 249 ]
    ;
    "ldr x21, [x7]" = expect ''"ldr x21, [x7]" to be correct [f5 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x7"))
      [ 245 0 64 249 ]
    ;
    "ldr x21, [x8]" = expect ''"ldr x21, [x8]" to be correct [15 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x8"))
      [ 21 1 64 249 ]
    ;
    "ldr x21, [x9]" = expect ''"ldr x21, [x9]" to be correct [35 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x9"))
      [ 53 1 64 249 ]
    ;
    "ldr x21, [x10]" = expect ''"ldr x21, [x10]" to be correct [55 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x10"))
      [ 85 1 64 249 ]
    ;
    "ldr x21, [x11]" = expect ''"ldr x21, [x11]" to be correct [75 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x11"))
      [ 117 1 64 249 ]
    ;
    "ldr x21, [x12]" = expect ''"ldr x21, [x12]" to be correct [95 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x12"))
      [ 149 1 64 249 ]
    ;
    "ldr x21, [x13]" = expect ''"ldr x21, [x13]" to be correct [b5 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x13"))
      [ 181 1 64 249 ]
    ;
    "ldr x21, [x14]" = expect ''"ldr x21, [x14]" to be correct [d5 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x14"))
      [ 213 1 64 249 ]
    ;
    "ldr x21, [x15]" = expect ''"ldr x21, [x15]" to be correct [f5 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x15"))
      [ 245 1 64 249 ]
    ;
    "ldr x21, [x16]" = expect ''"ldr x21, [x16]" to be correct [15 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x16"))
      [ 21 2 64 249 ]
    ;
    "ldr x21, [x17]" = expect ''"ldr x21, [x17]" to be correct [35 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x17"))
      [ 53 2 64 249 ]
    ;
    "ldr x21, [x18]" = expect ''"ldr x21, [x18]" to be correct [55 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x18"))
      [ 85 2 64 249 ]
    ;
    "ldr x21, [x19]" = expect ''"ldr x21, [x19]" to be correct [75 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x19"))
      [ 117 2 64 249 ]
    ;
    "ldr x21, [x20]" = expect ''"ldr x21, [x20]" to be correct [95 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x20"))
      [ 149 2 64 249 ]
    ;
    "ldr x21, [x21]" = expect ''"ldr x21, [x21]" to be correct [b5 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x21"))
      [ 181 2 64 249 ]
    ;
    "ldr x21, [x22]" = expect ''"ldr x21, [x22]" to be correct [d5 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x22"))
      [ 213 2 64 249 ]
    ;
    "ldr x21, [x23]" = expect ''"ldr x21, [x23]" to be correct [f5 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x23"))
      [ 245 2 64 249 ]
    ;
    "ldr x21, [x24]" = expect ''"ldr x21, [x24]" to be correct [15 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x24"))
      [ 21 3 64 249 ]
    ;
    "ldr x21, [x25]" = expect ''"ldr x21, [x25]" to be correct [35 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x25"))
      [ 53 3 64 249 ]
    ;
    "ldr x21, [x26]" = expect ''"ldr x21, [x26]" to be correct [55 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x26"))
      [ 85 3 64 249 ]
    ;
    "ldr x21, [x27]" = expect ''"ldr x21, [x27]" to be correct [75 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x27"))
      [ 117 3 64 249 ]
    ;
    "ldr x21, [x28]" = expect ''"ldr x21, [x28]" to be correct [95 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x28"))
      [ 149 3 64 249 ]
    ;
    "ldr x21, [x29]" = expect ''"ldr x21, [x29]" to be correct [b5 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x29"))
      [ 181 3 64 249 ]
    ;
    "ldr x21, [x30]" = expect ''"ldr x21, [x30]" to be correct [d5 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "x30"))
      [ 213 3 64 249 ]
    ;
    "ldr x21, [sp]" = expect ''"ldr x21, [sp]" to be correct [f5 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x21" "sp"))
      [ 245 3 64 249 ]
    ;
    "ldr x22, [x0]" = expect ''"ldr x22, [x0]" to be correct [16 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x0"))
      [ 22 0 64 249 ]
    ;
    "ldr x22, [x1]" = expect ''"ldr x22, [x1]" to be correct [36 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x1"))
      [ 54 0 64 249 ]
    ;
    "ldr x22, [x2]" = expect ''"ldr x22, [x2]" to be correct [56 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x2"))
      [ 86 0 64 249 ]
    ;
    "ldr x22, [x3]" = expect ''"ldr x22, [x3]" to be correct [76 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x3"))
      [ 118 0 64 249 ]
    ;
    "ldr x22, [x4]" = expect ''"ldr x22, [x4]" to be correct [96 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x4"))
      [ 150 0 64 249 ]
    ;
    "ldr x22, [x5]" = expect ''"ldr x22, [x5]" to be correct [b6 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x5"))
      [ 182 0 64 249 ]
    ;
    "ldr x22, [x6]" = expect ''"ldr x22, [x6]" to be correct [d6 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x6"))
      [ 214 0 64 249 ]
    ;
    "ldr x22, [x7]" = expect ''"ldr x22, [x7]" to be correct [f6 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x7"))
      [ 246 0 64 249 ]
    ;
    "ldr x22, [x8]" = expect ''"ldr x22, [x8]" to be correct [16 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x8"))
      [ 22 1 64 249 ]
    ;
    "ldr x22, [x9]" = expect ''"ldr x22, [x9]" to be correct [36 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x9"))
      [ 54 1 64 249 ]
    ;
    "ldr x22, [x10]" = expect ''"ldr x22, [x10]" to be correct [56 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x10"))
      [ 86 1 64 249 ]
    ;
    "ldr x22, [x11]" = expect ''"ldr x22, [x11]" to be correct [76 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x11"))
      [ 118 1 64 249 ]
    ;
    "ldr x22, [x12]" = expect ''"ldr x22, [x12]" to be correct [96 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x12"))
      [ 150 1 64 249 ]
    ;
    "ldr x22, [x13]" = expect ''"ldr x22, [x13]" to be correct [b6 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x13"))
      [ 182 1 64 249 ]
    ;
    "ldr x22, [x14]" = expect ''"ldr x22, [x14]" to be correct [d6 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x14"))
      [ 214 1 64 249 ]
    ;
    "ldr x22, [x15]" = expect ''"ldr x22, [x15]" to be correct [f6 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x15"))
      [ 246 1 64 249 ]
    ;
    "ldr x22, [x16]" = expect ''"ldr x22, [x16]" to be correct [16 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x16"))
      [ 22 2 64 249 ]
    ;
    "ldr x22, [x17]" = expect ''"ldr x22, [x17]" to be correct [36 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x17"))
      [ 54 2 64 249 ]
    ;
    "ldr x22, [x18]" = expect ''"ldr x22, [x18]" to be correct [56 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x18"))
      [ 86 2 64 249 ]
    ;
    "ldr x22, [x19]" = expect ''"ldr x22, [x19]" to be correct [76 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x19"))
      [ 118 2 64 249 ]
    ;
    "ldr x22, [x20]" = expect ''"ldr x22, [x20]" to be correct [96 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x20"))
      [ 150 2 64 249 ]
    ;
    "ldr x22, [x21]" = expect ''"ldr x22, [x21]" to be correct [b6 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x21"))
      [ 182 2 64 249 ]
    ;
    "ldr x22, [x22]" = expect ''"ldr x22, [x22]" to be correct [d6 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x22"))
      [ 214 2 64 249 ]
    ;
    "ldr x22, [x23]" = expect ''"ldr x22, [x23]" to be correct [f6 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x23"))
      [ 246 2 64 249 ]
    ;
    "ldr x22, [x24]" = expect ''"ldr x22, [x24]" to be correct [16 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x24"))
      [ 22 3 64 249 ]
    ;
    "ldr x22, [x25]" = expect ''"ldr x22, [x25]" to be correct [36 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x25"))
      [ 54 3 64 249 ]
    ;
    "ldr x22, [x26]" = expect ''"ldr x22, [x26]" to be correct [56 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x26"))
      [ 86 3 64 249 ]
    ;
    "ldr x22, [x27]" = expect ''"ldr x22, [x27]" to be correct [76 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x27"))
      [ 118 3 64 249 ]
    ;
    "ldr x22, [x28]" = expect ''"ldr x22, [x28]" to be correct [96 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x28"))
      [ 150 3 64 249 ]
    ;
    "ldr x22, [x29]" = expect ''"ldr x22, [x29]" to be correct [b6 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x29"))
      [ 182 3 64 249 ]
    ;
    "ldr x22, [x30]" = expect ''"ldr x22, [x30]" to be correct [d6 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "x30"))
      [ 214 3 64 249 ]
    ;
    "ldr x22, [sp]" = expect ''"ldr x22, [sp]" to be correct [f6 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x22" "sp"))
      [ 246 3 64 249 ]
    ;
    "ldr x23, [x0]" = expect ''"ldr x23, [x0]" to be correct [17 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x0"))
      [ 23 0 64 249 ]
    ;
    "ldr x23, [x1]" = expect ''"ldr x23, [x1]" to be correct [37 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x1"))
      [ 55 0 64 249 ]
    ;
    "ldr x23, [x2]" = expect ''"ldr x23, [x2]" to be correct [57 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x2"))
      [ 87 0 64 249 ]
    ;
    "ldr x23, [x3]" = expect ''"ldr x23, [x3]" to be correct [77 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x3"))
      [ 119 0 64 249 ]
    ;
    "ldr x23, [x4]" = expect ''"ldr x23, [x4]" to be correct [97 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x4"))
      [ 151 0 64 249 ]
    ;
    "ldr x23, [x5]" = expect ''"ldr x23, [x5]" to be correct [b7 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x5"))
      [ 183 0 64 249 ]
    ;
    "ldr x23, [x6]" = expect ''"ldr x23, [x6]" to be correct [d7 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x6"))
      [ 215 0 64 249 ]
    ;
    "ldr x23, [x7]" = expect ''"ldr x23, [x7]" to be correct [f7 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x7"))
      [ 247 0 64 249 ]
    ;
    "ldr x23, [x8]" = expect ''"ldr x23, [x8]" to be correct [17 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x8"))
      [ 23 1 64 249 ]
    ;
    "ldr x23, [x9]" = expect ''"ldr x23, [x9]" to be correct [37 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x9"))
      [ 55 1 64 249 ]
    ;
    "ldr x23, [x10]" = expect ''"ldr x23, [x10]" to be correct [57 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x10"))
      [ 87 1 64 249 ]
    ;
    "ldr x23, [x11]" = expect ''"ldr x23, [x11]" to be correct [77 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x11"))
      [ 119 1 64 249 ]
    ;
    "ldr x23, [x12]" = expect ''"ldr x23, [x12]" to be correct [97 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x12"))
      [ 151 1 64 249 ]
    ;
    "ldr x23, [x13]" = expect ''"ldr x23, [x13]" to be correct [b7 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x13"))
      [ 183 1 64 249 ]
    ;
    "ldr x23, [x14]" = expect ''"ldr x23, [x14]" to be correct [d7 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x14"))
      [ 215 1 64 249 ]
    ;
    "ldr x23, [x15]" = expect ''"ldr x23, [x15]" to be correct [f7 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x15"))
      [ 247 1 64 249 ]
    ;
    "ldr x23, [x16]" = expect ''"ldr x23, [x16]" to be correct [17 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x16"))
      [ 23 2 64 249 ]
    ;
    "ldr x23, [x17]" = expect ''"ldr x23, [x17]" to be correct [37 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x17"))
      [ 55 2 64 249 ]
    ;
    "ldr x23, [x18]" = expect ''"ldr x23, [x18]" to be correct [57 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x18"))
      [ 87 2 64 249 ]
    ;
    "ldr x23, [x19]" = expect ''"ldr x23, [x19]" to be correct [77 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x19"))
      [ 119 2 64 249 ]
    ;
    "ldr x23, [x20]" = expect ''"ldr x23, [x20]" to be correct [97 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x20"))
      [ 151 2 64 249 ]
    ;
    "ldr x23, [x21]" = expect ''"ldr x23, [x21]" to be correct [b7 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x21"))
      [ 183 2 64 249 ]
    ;
    "ldr x23, [x22]" = expect ''"ldr x23, [x22]" to be correct [d7 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x22"))
      [ 215 2 64 249 ]
    ;
    "ldr x23, [x23]" = expect ''"ldr x23, [x23]" to be correct [f7 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x23"))
      [ 247 2 64 249 ]
    ;
    "ldr x23, [x24]" = expect ''"ldr x23, [x24]" to be correct [17 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x24"))
      [ 23 3 64 249 ]
    ;
    "ldr x23, [x25]" = expect ''"ldr x23, [x25]" to be correct [37 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x25"))
      [ 55 3 64 249 ]
    ;
    "ldr x23, [x26]" = expect ''"ldr x23, [x26]" to be correct [57 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x26"))
      [ 87 3 64 249 ]
    ;
    "ldr x23, [x27]" = expect ''"ldr x23, [x27]" to be correct [77 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x27"))
      [ 119 3 64 249 ]
    ;
    "ldr x23, [x28]" = expect ''"ldr x23, [x28]" to be correct [97 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x28"))
      [ 151 3 64 249 ]
    ;
    "ldr x23, [x29]" = expect ''"ldr x23, [x29]" to be correct [b7 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x29"))
      [ 183 3 64 249 ]
    ;
    "ldr x23, [x30]" = expect ''"ldr x23, [x30]" to be correct [d7 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "x30"))
      [ 215 3 64 249 ]
    ;
    "ldr x23, [sp]" = expect ''"ldr x23, [sp]" to be correct [f7 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x23" "sp"))
      [ 247 3 64 249 ]
    ;
    "ldr x24, [x0]" = expect ''"ldr x24, [x0]" to be correct [18 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x0"))
      [ 24 0 64 249 ]
    ;
    "ldr x24, [x1]" = expect ''"ldr x24, [x1]" to be correct [38 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x1"))
      [ 56 0 64 249 ]
    ;
    "ldr x24, [x2]" = expect ''"ldr x24, [x2]" to be correct [58 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x2"))
      [ 88 0 64 249 ]
    ;
    "ldr x24, [x3]" = expect ''"ldr x24, [x3]" to be correct [78 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x3"))
      [ 120 0 64 249 ]
    ;
    "ldr x24, [x4]" = expect ''"ldr x24, [x4]" to be correct [98 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x4"))
      [ 152 0 64 249 ]
    ;
    "ldr x24, [x5]" = expect ''"ldr x24, [x5]" to be correct [b8 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x5"))
      [ 184 0 64 249 ]
    ;
    "ldr x24, [x6]" = expect ''"ldr x24, [x6]" to be correct [d8 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x6"))
      [ 216 0 64 249 ]
    ;
    "ldr x24, [x7]" = expect ''"ldr x24, [x7]" to be correct [f8 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x7"))
      [ 248 0 64 249 ]
    ;
    "ldr x24, [x8]" = expect ''"ldr x24, [x8]" to be correct [18 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x8"))
      [ 24 1 64 249 ]
    ;
    "ldr x24, [x9]" = expect ''"ldr x24, [x9]" to be correct [38 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x9"))
      [ 56 1 64 249 ]
    ;
    "ldr x24, [x10]" = expect ''"ldr x24, [x10]" to be correct [58 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x10"))
      [ 88 1 64 249 ]
    ;
    "ldr x24, [x11]" = expect ''"ldr x24, [x11]" to be correct [78 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x11"))
      [ 120 1 64 249 ]
    ;
    "ldr x24, [x12]" = expect ''"ldr x24, [x12]" to be correct [98 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x12"))
      [ 152 1 64 249 ]
    ;
    "ldr x24, [x13]" = expect ''"ldr x24, [x13]" to be correct [b8 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x13"))
      [ 184 1 64 249 ]
    ;
    "ldr x24, [x14]" = expect ''"ldr x24, [x14]" to be correct [d8 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x14"))
      [ 216 1 64 249 ]
    ;
    "ldr x24, [x15]" = expect ''"ldr x24, [x15]" to be correct [f8 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x15"))
      [ 248 1 64 249 ]
    ;
    "ldr x24, [x16]" = expect ''"ldr x24, [x16]" to be correct [18 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x16"))
      [ 24 2 64 249 ]
    ;
    "ldr x24, [x17]" = expect ''"ldr x24, [x17]" to be correct [38 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x17"))
      [ 56 2 64 249 ]
    ;
    "ldr x24, [x18]" = expect ''"ldr x24, [x18]" to be correct [58 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x18"))
      [ 88 2 64 249 ]
    ;
    "ldr x24, [x19]" = expect ''"ldr x24, [x19]" to be correct [78 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x19"))
      [ 120 2 64 249 ]
    ;
    "ldr x24, [x20]" = expect ''"ldr x24, [x20]" to be correct [98 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x20"))
      [ 152 2 64 249 ]
    ;
    "ldr x24, [x21]" = expect ''"ldr x24, [x21]" to be correct [b8 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x21"))
      [ 184 2 64 249 ]
    ;
    "ldr x24, [x22]" = expect ''"ldr x24, [x22]" to be correct [d8 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x22"))
      [ 216 2 64 249 ]
    ;
    "ldr x24, [x23]" = expect ''"ldr x24, [x23]" to be correct [f8 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x23"))
      [ 248 2 64 249 ]
    ;
    "ldr x24, [x24]" = expect ''"ldr x24, [x24]" to be correct [18 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x24"))
      [ 24 3 64 249 ]
    ;
    "ldr x24, [x25]" = expect ''"ldr x24, [x25]" to be correct [38 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x25"))
      [ 56 3 64 249 ]
    ;
    "ldr x24, [x26]" = expect ''"ldr x24, [x26]" to be correct [58 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x26"))
      [ 88 3 64 249 ]
    ;
    "ldr x24, [x27]" = expect ''"ldr x24, [x27]" to be correct [78 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x27"))
      [ 120 3 64 249 ]
    ;
    "ldr x24, [x28]" = expect ''"ldr x24, [x28]" to be correct [98 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x28"))
      [ 152 3 64 249 ]
    ;
    "ldr x24, [x29]" = expect ''"ldr x24, [x29]" to be correct [b8 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x29"))
      [ 184 3 64 249 ]
    ;
    "ldr x24, [x30]" = expect ''"ldr x24, [x30]" to be correct [d8 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "x30"))
      [ 216 3 64 249 ]
    ;
    "ldr x24, [sp]" = expect ''"ldr x24, [sp]" to be correct [f8 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x24" "sp"))
      [ 248 3 64 249 ]
    ;
    "ldr x25, [x0]" = expect ''"ldr x25, [x0]" to be correct [19 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x0"))
      [ 25 0 64 249 ]
    ;
    "ldr x25, [x1]" = expect ''"ldr x25, [x1]" to be correct [39 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x1"))
      [ 57 0 64 249 ]
    ;
    "ldr x25, [x2]" = expect ''"ldr x25, [x2]" to be correct [59 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x2"))
      [ 89 0 64 249 ]
    ;
    "ldr x25, [x3]" = expect ''"ldr x25, [x3]" to be correct [79 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x3"))
      [ 121 0 64 249 ]
    ;
    "ldr x25, [x4]" = expect ''"ldr x25, [x4]" to be correct [99 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x4"))
      [ 153 0 64 249 ]
    ;
    "ldr x25, [x5]" = expect ''"ldr x25, [x5]" to be correct [b9 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x5"))
      [ 185 0 64 249 ]
    ;
    "ldr x25, [x6]" = expect ''"ldr x25, [x6]" to be correct [d9 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x6"))
      [ 217 0 64 249 ]
    ;
    "ldr x25, [x7]" = expect ''"ldr x25, [x7]" to be correct [f9 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x7"))
      [ 249 0 64 249 ]
    ;
    "ldr x25, [x8]" = expect ''"ldr x25, [x8]" to be correct [19 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x8"))
      [ 25 1 64 249 ]
    ;
    "ldr x25, [x9]" = expect ''"ldr x25, [x9]" to be correct [39 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x9"))
      [ 57 1 64 249 ]
    ;
    "ldr x25, [x10]" = expect ''"ldr x25, [x10]" to be correct [59 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x10"))
      [ 89 1 64 249 ]
    ;
    "ldr x25, [x11]" = expect ''"ldr x25, [x11]" to be correct [79 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x11"))
      [ 121 1 64 249 ]
    ;
    "ldr x25, [x12]" = expect ''"ldr x25, [x12]" to be correct [99 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x12"))
      [ 153 1 64 249 ]
    ;
    "ldr x25, [x13]" = expect ''"ldr x25, [x13]" to be correct [b9 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x13"))
      [ 185 1 64 249 ]
    ;
    "ldr x25, [x14]" = expect ''"ldr x25, [x14]" to be correct [d9 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x14"))
      [ 217 1 64 249 ]
    ;
    "ldr x25, [x15]" = expect ''"ldr x25, [x15]" to be correct [f9 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x15"))
      [ 249 1 64 249 ]
    ;
    "ldr x25, [x16]" = expect ''"ldr x25, [x16]" to be correct [19 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x16"))
      [ 25 2 64 249 ]
    ;
    "ldr x25, [x17]" = expect ''"ldr x25, [x17]" to be correct [39 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x17"))
      [ 57 2 64 249 ]
    ;
    "ldr x25, [x18]" = expect ''"ldr x25, [x18]" to be correct [59 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x18"))
      [ 89 2 64 249 ]
    ;
    "ldr x25, [x19]" = expect ''"ldr x25, [x19]" to be correct [79 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x19"))
      [ 121 2 64 249 ]
    ;
    "ldr x25, [x20]" = expect ''"ldr x25, [x20]" to be correct [99 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x20"))
      [ 153 2 64 249 ]
    ;
    "ldr x25, [x21]" = expect ''"ldr x25, [x21]" to be correct [b9 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x21"))
      [ 185 2 64 249 ]
    ;
    "ldr x25, [x22]" = expect ''"ldr x25, [x22]" to be correct [d9 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x22"))
      [ 217 2 64 249 ]
    ;
    "ldr x25, [x23]" = expect ''"ldr x25, [x23]" to be correct [f9 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x23"))
      [ 249 2 64 249 ]
    ;
    "ldr x25, [x24]" = expect ''"ldr x25, [x24]" to be correct [19 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x24"))
      [ 25 3 64 249 ]
    ;
    "ldr x25, [x25]" = expect ''"ldr x25, [x25]" to be correct [39 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x25"))
      [ 57 3 64 249 ]
    ;
    "ldr x25, [x26]" = expect ''"ldr x25, [x26]" to be correct [59 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x26"))
      [ 89 3 64 249 ]
    ;
    "ldr x25, [x27]" = expect ''"ldr x25, [x27]" to be correct [79 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x27"))
      [ 121 3 64 249 ]
    ;
    "ldr x25, [x28]" = expect ''"ldr x25, [x28]" to be correct [99 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x28"))
      [ 153 3 64 249 ]
    ;
    "ldr x25, [x29]" = expect ''"ldr x25, [x29]" to be correct [b9 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x29"))
      [ 185 3 64 249 ]
    ;
    "ldr x25, [x30]" = expect ''"ldr x25, [x30]" to be correct [d9 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "x30"))
      [ 217 3 64 249 ]
    ;
    "ldr x25, [sp]" = expect ''"ldr x25, [sp]" to be correct [f9 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x25" "sp"))
      [ 249 3 64 249 ]
    ;
    "ldr x26, [x0]" = expect ''"ldr x26, [x0]" to be correct [1a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x0"))
      [ 26 0 64 249 ]
    ;
    "ldr x26, [x1]" = expect ''"ldr x26, [x1]" to be correct [3a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x1"))
      [ 58 0 64 249 ]
    ;
    "ldr x26, [x2]" = expect ''"ldr x26, [x2]" to be correct [5a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x2"))
      [ 90 0 64 249 ]
    ;
    "ldr x26, [x3]" = expect ''"ldr x26, [x3]" to be correct [7a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x3"))
      [ 122 0 64 249 ]
    ;
    "ldr x26, [x4]" = expect ''"ldr x26, [x4]" to be correct [9a 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x4"))
      [ 154 0 64 249 ]
    ;
    "ldr x26, [x5]" = expect ''"ldr x26, [x5]" to be correct [ba 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x5"))
      [ 186 0 64 249 ]
    ;
    "ldr x26, [x6]" = expect ''"ldr x26, [x6]" to be correct [da 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x6"))
      [ 218 0 64 249 ]
    ;
    "ldr x26, [x7]" = expect ''"ldr x26, [x7]" to be correct [fa 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x7"))
      [ 250 0 64 249 ]
    ;
    "ldr x26, [x8]" = expect ''"ldr x26, [x8]" to be correct [1a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x8"))
      [ 26 1 64 249 ]
    ;
    "ldr x26, [x9]" = expect ''"ldr x26, [x9]" to be correct [3a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x9"))
      [ 58 1 64 249 ]
    ;
    "ldr x26, [x10]" = expect ''"ldr x26, [x10]" to be correct [5a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x10"))
      [ 90 1 64 249 ]
    ;
    "ldr x26, [x11]" = expect ''"ldr x26, [x11]" to be correct [7a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x11"))
      [ 122 1 64 249 ]
    ;
    "ldr x26, [x12]" = expect ''"ldr x26, [x12]" to be correct [9a 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x12"))
      [ 154 1 64 249 ]
    ;
    "ldr x26, [x13]" = expect ''"ldr x26, [x13]" to be correct [ba 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x13"))
      [ 186 1 64 249 ]
    ;
    "ldr x26, [x14]" = expect ''"ldr x26, [x14]" to be correct [da 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x14"))
      [ 218 1 64 249 ]
    ;
    "ldr x26, [x15]" = expect ''"ldr x26, [x15]" to be correct [fa 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x15"))
      [ 250 1 64 249 ]
    ;
    "ldr x26, [x16]" = expect ''"ldr x26, [x16]" to be correct [1a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x16"))
      [ 26 2 64 249 ]
    ;
    "ldr x26, [x17]" = expect ''"ldr x26, [x17]" to be correct [3a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x17"))
      [ 58 2 64 249 ]
    ;
    "ldr x26, [x18]" = expect ''"ldr x26, [x18]" to be correct [5a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x18"))
      [ 90 2 64 249 ]
    ;
    "ldr x26, [x19]" = expect ''"ldr x26, [x19]" to be correct [7a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x19"))
      [ 122 2 64 249 ]
    ;
    "ldr x26, [x20]" = expect ''"ldr x26, [x20]" to be correct [9a 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x20"))
      [ 154 2 64 249 ]
    ;
    "ldr x26, [x21]" = expect ''"ldr x26, [x21]" to be correct [ba 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x21"))
      [ 186 2 64 249 ]
    ;
    "ldr x26, [x22]" = expect ''"ldr x26, [x22]" to be correct [da 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x22"))
      [ 218 2 64 249 ]
    ;
    "ldr x26, [x23]" = expect ''"ldr x26, [x23]" to be correct [fa 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x23"))
      [ 250 2 64 249 ]
    ;
    "ldr x26, [x24]" = expect ''"ldr x26, [x24]" to be correct [1a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x24"))
      [ 26 3 64 249 ]
    ;
    "ldr x26, [x25]" = expect ''"ldr x26, [x25]" to be correct [3a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x25"))
      [ 58 3 64 249 ]
    ;
    "ldr x26, [x26]" = expect ''"ldr x26, [x26]" to be correct [5a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x26"))
      [ 90 3 64 249 ]
    ;
    "ldr x26, [x27]" = expect ''"ldr x26, [x27]" to be correct [7a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x27"))
      [ 122 3 64 249 ]
    ;
    "ldr x26, [x28]" = expect ''"ldr x26, [x28]" to be correct [9a 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x28"))
      [ 154 3 64 249 ]
    ;
    "ldr x26, [x29]" = expect ''"ldr x26, [x29]" to be correct [ba 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x29"))
      [ 186 3 64 249 ]
    ;
    "ldr x26, [x30]" = expect ''"ldr x26, [x30]" to be correct [da 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "x30"))
      [ 218 3 64 249 ]
    ;
    "ldr x26, [sp]" = expect ''"ldr x26, [sp]" to be correct [fa 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x26" "sp"))
      [ 250 3 64 249 ]
    ;
    "ldr x27, [x0]" = expect ''"ldr x27, [x0]" to be correct [1b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x0"))
      [ 27 0 64 249 ]
    ;
    "ldr x27, [x1]" = expect ''"ldr x27, [x1]" to be correct [3b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x1"))
      [ 59 0 64 249 ]
    ;
    "ldr x27, [x2]" = expect ''"ldr x27, [x2]" to be correct [5b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x2"))
      [ 91 0 64 249 ]
    ;
    "ldr x27, [x3]" = expect ''"ldr x27, [x3]" to be correct [7b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x3"))
      [ 123 0 64 249 ]
    ;
    "ldr x27, [x4]" = expect ''"ldr x27, [x4]" to be correct [9b 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x4"))
      [ 155 0 64 249 ]
    ;
    "ldr x27, [x5]" = expect ''"ldr x27, [x5]" to be correct [bb 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x5"))
      [ 187 0 64 249 ]
    ;
    "ldr x27, [x6]" = expect ''"ldr x27, [x6]" to be correct [db 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x6"))
      [ 219 0 64 249 ]
    ;
    "ldr x27, [x7]" = expect ''"ldr x27, [x7]" to be correct [fb 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x7"))
      [ 251 0 64 249 ]
    ;
    "ldr x27, [x8]" = expect ''"ldr x27, [x8]" to be correct [1b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x8"))
      [ 27 1 64 249 ]
    ;
    "ldr x27, [x9]" = expect ''"ldr x27, [x9]" to be correct [3b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x9"))
      [ 59 1 64 249 ]
    ;
    "ldr x27, [x10]" = expect ''"ldr x27, [x10]" to be correct [5b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x10"))
      [ 91 1 64 249 ]
    ;
    "ldr x27, [x11]" = expect ''"ldr x27, [x11]" to be correct [7b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x11"))
      [ 123 1 64 249 ]
    ;
    "ldr x27, [x12]" = expect ''"ldr x27, [x12]" to be correct [9b 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x12"))
      [ 155 1 64 249 ]
    ;
    "ldr x27, [x13]" = expect ''"ldr x27, [x13]" to be correct [bb 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x13"))
      [ 187 1 64 249 ]
    ;
    "ldr x27, [x14]" = expect ''"ldr x27, [x14]" to be correct [db 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x14"))
      [ 219 1 64 249 ]
    ;
    "ldr x27, [x15]" = expect ''"ldr x27, [x15]" to be correct [fb 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x15"))
      [ 251 1 64 249 ]
    ;
    "ldr x27, [x16]" = expect ''"ldr x27, [x16]" to be correct [1b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x16"))
      [ 27 2 64 249 ]
    ;
    "ldr x27, [x17]" = expect ''"ldr x27, [x17]" to be correct [3b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x17"))
      [ 59 2 64 249 ]
    ;
    "ldr x27, [x18]" = expect ''"ldr x27, [x18]" to be correct [5b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x18"))
      [ 91 2 64 249 ]
    ;
    "ldr x27, [x19]" = expect ''"ldr x27, [x19]" to be correct [7b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x19"))
      [ 123 2 64 249 ]
    ;
    "ldr x27, [x20]" = expect ''"ldr x27, [x20]" to be correct [9b 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x20"))
      [ 155 2 64 249 ]
    ;
    "ldr x27, [x21]" = expect ''"ldr x27, [x21]" to be correct [bb 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x21"))
      [ 187 2 64 249 ]
    ;
    "ldr x27, [x22]" = expect ''"ldr x27, [x22]" to be correct [db 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x22"))
      [ 219 2 64 249 ]
    ;
    "ldr x27, [x23]" = expect ''"ldr x27, [x23]" to be correct [fb 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x23"))
      [ 251 2 64 249 ]
    ;
    "ldr x27, [x24]" = expect ''"ldr x27, [x24]" to be correct [1b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x24"))
      [ 27 3 64 249 ]
    ;
    "ldr x27, [x25]" = expect ''"ldr x27, [x25]" to be correct [3b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x25"))
      [ 59 3 64 249 ]
    ;
    "ldr x27, [x26]" = expect ''"ldr x27, [x26]" to be correct [5b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x26"))
      [ 91 3 64 249 ]
    ;
    "ldr x27, [x27]" = expect ''"ldr x27, [x27]" to be correct [7b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x27"))
      [ 123 3 64 249 ]
    ;
    "ldr x27, [x28]" = expect ''"ldr x27, [x28]" to be correct [9b 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x28"))
      [ 155 3 64 249 ]
    ;
    "ldr x27, [x29]" = expect ''"ldr x27, [x29]" to be correct [bb 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x29"))
      [ 187 3 64 249 ]
    ;
    "ldr x27, [x30]" = expect ''"ldr x27, [x30]" to be correct [db 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "x30"))
      [ 219 3 64 249 ]
    ;
    "ldr x27, [sp]" = expect ''"ldr x27, [sp]" to be correct [fb 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x27" "sp"))
      [ 251 3 64 249 ]
    ;
    "ldr x28, [x0]" = expect ''"ldr x28, [x0]" to be correct [1c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x0"))
      [ 28 0 64 249 ]
    ;
    "ldr x28, [x1]" = expect ''"ldr x28, [x1]" to be correct [3c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x1"))
      [ 60 0 64 249 ]
    ;
    "ldr x28, [x2]" = expect ''"ldr x28, [x2]" to be correct [5c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x2"))
      [ 92 0 64 249 ]
    ;
    "ldr x28, [x3]" = expect ''"ldr x28, [x3]" to be correct [7c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x3"))
      [ 124 0 64 249 ]
    ;
    "ldr x28, [x4]" = expect ''"ldr x28, [x4]" to be correct [9c 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x4"))
      [ 156 0 64 249 ]
    ;
    "ldr x28, [x5]" = expect ''"ldr x28, [x5]" to be correct [bc 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x5"))
      [ 188 0 64 249 ]
    ;
    "ldr x28, [x6]" = expect ''"ldr x28, [x6]" to be correct [dc 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x6"))
      [ 220 0 64 249 ]
    ;
    "ldr x28, [x7]" = expect ''"ldr x28, [x7]" to be correct [fc 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x7"))
      [ 252 0 64 249 ]
    ;
    "ldr x28, [x8]" = expect ''"ldr x28, [x8]" to be correct [1c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x8"))
      [ 28 1 64 249 ]
    ;
    "ldr x28, [x9]" = expect ''"ldr x28, [x9]" to be correct [3c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x9"))
      [ 60 1 64 249 ]
    ;
    "ldr x28, [x10]" = expect ''"ldr x28, [x10]" to be correct [5c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x10"))
      [ 92 1 64 249 ]
    ;
    "ldr x28, [x11]" = expect ''"ldr x28, [x11]" to be correct [7c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x11"))
      [ 124 1 64 249 ]
    ;
    "ldr x28, [x12]" = expect ''"ldr x28, [x12]" to be correct [9c 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x12"))
      [ 156 1 64 249 ]
    ;
    "ldr x28, [x13]" = expect ''"ldr x28, [x13]" to be correct [bc 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x13"))
      [ 188 1 64 249 ]
    ;
    "ldr x28, [x14]" = expect ''"ldr x28, [x14]" to be correct [dc 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x14"))
      [ 220 1 64 249 ]
    ;
    "ldr x28, [x15]" = expect ''"ldr x28, [x15]" to be correct [fc 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x15"))
      [ 252 1 64 249 ]
    ;
    "ldr x28, [x16]" = expect ''"ldr x28, [x16]" to be correct [1c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x16"))
      [ 28 2 64 249 ]
    ;
    "ldr x28, [x17]" = expect ''"ldr x28, [x17]" to be correct [3c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x17"))
      [ 60 2 64 249 ]
    ;
    "ldr x28, [x18]" = expect ''"ldr x28, [x18]" to be correct [5c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x18"))
      [ 92 2 64 249 ]
    ;
    "ldr x28, [x19]" = expect ''"ldr x28, [x19]" to be correct [7c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x19"))
      [ 124 2 64 249 ]
    ;
    "ldr x28, [x20]" = expect ''"ldr x28, [x20]" to be correct [9c 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x20"))
      [ 156 2 64 249 ]
    ;
    "ldr x28, [x21]" = expect ''"ldr x28, [x21]" to be correct [bc 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x21"))
      [ 188 2 64 249 ]
    ;
    "ldr x28, [x22]" = expect ''"ldr x28, [x22]" to be correct [dc 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x22"))
      [ 220 2 64 249 ]
    ;
    "ldr x28, [x23]" = expect ''"ldr x28, [x23]" to be correct [fc 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x23"))
      [ 252 2 64 249 ]
    ;
    "ldr x28, [x24]" = expect ''"ldr x28, [x24]" to be correct [1c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x24"))
      [ 28 3 64 249 ]
    ;
    "ldr x28, [x25]" = expect ''"ldr x28, [x25]" to be correct [3c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x25"))
      [ 60 3 64 249 ]
    ;
    "ldr x28, [x26]" = expect ''"ldr x28, [x26]" to be correct [5c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x26"))
      [ 92 3 64 249 ]
    ;
    "ldr x28, [x27]" = expect ''"ldr x28, [x27]" to be correct [7c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x27"))
      [ 124 3 64 249 ]
    ;
    "ldr x28, [x28]" = expect ''"ldr x28, [x28]" to be correct [9c 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x28"))
      [ 156 3 64 249 ]
    ;
    "ldr x28, [x29]" = expect ''"ldr x28, [x29]" to be correct [bc 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x29"))
      [ 188 3 64 249 ]
    ;
    "ldr x28, [x30]" = expect ''"ldr x28, [x30]" to be correct [dc 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "x30"))
      [ 220 3 64 249 ]
    ;
    "ldr x28, [sp]" = expect ''"ldr x28, [sp]" to be correct [fc 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x28" "sp"))
      [ 252 3 64 249 ]
    ;
    "ldr x29, [x0]" = expect ''"ldr x29, [x0]" to be correct [1d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x0"))
      [ 29 0 64 249 ]
    ;
    "ldr x29, [x1]" = expect ''"ldr x29, [x1]" to be correct [3d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x1"))
      [ 61 0 64 249 ]
    ;
    "ldr x29, [x2]" = expect ''"ldr x29, [x2]" to be correct [5d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x2"))
      [ 93 0 64 249 ]
    ;
    "ldr x29, [x3]" = expect ''"ldr x29, [x3]" to be correct [7d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x3"))
      [ 125 0 64 249 ]
    ;
    "ldr x29, [x4]" = expect ''"ldr x29, [x4]" to be correct [9d 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x4"))
      [ 157 0 64 249 ]
    ;
    "ldr x29, [x5]" = expect ''"ldr x29, [x5]" to be correct [bd 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x5"))
      [ 189 0 64 249 ]
    ;
    "ldr x29, [x6]" = expect ''"ldr x29, [x6]" to be correct [dd 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x6"))
      [ 221 0 64 249 ]
    ;
    "ldr x29, [x7]" = expect ''"ldr x29, [x7]" to be correct [fd 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x7"))
      [ 253 0 64 249 ]
    ;
    "ldr x29, [x8]" = expect ''"ldr x29, [x8]" to be correct [1d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x8"))
      [ 29 1 64 249 ]
    ;
    "ldr x29, [x9]" = expect ''"ldr x29, [x9]" to be correct [3d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x9"))
      [ 61 1 64 249 ]
    ;
    "ldr x29, [x10]" = expect ''"ldr x29, [x10]" to be correct [5d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x10"))
      [ 93 1 64 249 ]
    ;
    "ldr x29, [x11]" = expect ''"ldr x29, [x11]" to be correct [7d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x11"))
      [ 125 1 64 249 ]
    ;
    "ldr x29, [x12]" = expect ''"ldr x29, [x12]" to be correct [9d 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x12"))
      [ 157 1 64 249 ]
    ;
    "ldr x29, [x13]" = expect ''"ldr x29, [x13]" to be correct [bd 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x13"))
      [ 189 1 64 249 ]
    ;
    "ldr x29, [x14]" = expect ''"ldr x29, [x14]" to be correct [dd 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x14"))
      [ 221 1 64 249 ]
    ;
    "ldr x29, [x15]" = expect ''"ldr x29, [x15]" to be correct [fd 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x15"))
      [ 253 1 64 249 ]
    ;
    "ldr x29, [x16]" = expect ''"ldr x29, [x16]" to be correct [1d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x16"))
      [ 29 2 64 249 ]
    ;
    "ldr x29, [x17]" = expect ''"ldr x29, [x17]" to be correct [3d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x17"))
      [ 61 2 64 249 ]
    ;
    "ldr x29, [x18]" = expect ''"ldr x29, [x18]" to be correct [5d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x18"))
      [ 93 2 64 249 ]
    ;
    "ldr x29, [x19]" = expect ''"ldr x29, [x19]" to be correct [7d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x19"))
      [ 125 2 64 249 ]
    ;
    "ldr x29, [x20]" = expect ''"ldr x29, [x20]" to be correct [9d 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x20"))
      [ 157 2 64 249 ]
    ;
    "ldr x29, [x21]" = expect ''"ldr x29, [x21]" to be correct [bd 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x21"))
      [ 189 2 64 249 ]
    ;
    "ldr x29, [x22]" = expect ''"ldr x29, [x22]" to be correct [dd 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x22"))
      [ 221 2 64 249 ]
    ;
    "ldr x29, [x23]" = expect ''"ldr x29, [x23]" to be correct [fd 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x23"))
      [ 253 2 64 249 ]
    ;
    "ldr x29, [x24]" = expect ''"ldr x29, [x24]" to be correct [1d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x24"))
      [ 29 3 64 249 ]
    ;
    "ldr x29, [x25]" = expect ''"ldr x29, [x25]" to be correct [3d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x25"))
      [ 61 3 64 249 ]
    ;
    "ldr x29, [x26]" = expect ''"ldr x29, [x26]" to be correct [5d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x26"))
      [ 93 3 64 249 ]
    ;
    "ldr x29, [x27]" = expect ''"ldr x29, [x27]" to be correct [7d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x27"))
      [ 125 3 64 249 ]
    ;
    "ldr x29, [x28]" = expect ''"ldr x29, [x28]" to be correct [9d 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x28"))
      [ 157 3 64 249 ]
    ;
    "ldr x29, [x29]" = expect ''"ldr x29, [x29]" to be correct [bd 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x29"))
      [ 189 3 64 249 ]
    ;
    "ldr x29, [x30]" = expect ''"ldr x29, [x30]" to be correct [dd 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "x30"))
      [ 221 3 64 249 ]
    ;
    "ldr x29, [sp]" = expect ''"ldr x29, [sp]" to be correct [fd 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x29" "sp"))
      [ 253 3 64 249 ]
    ;
    "ldr x30, [x0]" = expect ''"ldr x30, [x0]" to be correct [1e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x0"))
      [ 30 0 64 249 ]
    ;
    "ldr x30, [x1]" = expect ''"ldr x30, [x1]" to be correct [3e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x1"))
      [ 62 0 64 249 ]
    ;
    "ldr x30, [x2]" = expect ''"ldr x30, [x2]" to be correct [5e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x2"))
      [ 94 0 64 249 ]
    ;
    "ldr x30, [x3]" = expect ''"ldr x30, [x3]" to be correct [7e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x3"))
      [ 126 0 64 249 ]
    ;
    "ldr x30, [x4]" = expect ''"ldr x30, [x4]" to be correct [9e 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x4"))
      [ 158 0 64 249 ]
    ;
    "ldr x30, [x5]" = expect ''"ldr x30, [x5]" to be correct [be 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x5"))
      [ 190 0 64 249 ]
    ;
    "ldr x30, [x6]" = expect ''"ldr x30, [x6]" to be correct [de 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x6"))
      [ 222 0 64 249 ]
    ;
    "ldr x30, [x7]" = expect ''"ldr x30, [x7]" to be correct [fe 0 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x7"))
      [ 254 0 64 249 ]
    ;
    "ldr x30, [x8]" = expect ''"ldr x30, [x8]" to be correct [1e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x8"))
      [ 30 1 64 249 ]
    ;
    "ldr x30, [x9]" = expect ''"ldr x30, [x9]" to be correct [3e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x9"))
      [ 62 1 64 249 ]
    ;
    "ldr x30, [x10]" = expect ''"ldr x30, [x10]" to be correct [5e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x10"))
      [ 94 1 64 249 ]
    ;
    "ldr x30, [x11]" = expect ''"ldr x30, [x11]" to be correct [7e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x11"))
      [ 126 1 64 249 ]
    ;
    "ldr x30, [x12]" = expect ''"ldr x30, [x12]" to be correct [9e 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x12"))
      [ 158 1 64 249 ]
    ;
    "ldr x30, [x13]" = expect ''"ldr x30, [x13]" to be correct [be 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x13"))
      [ 190 1 64 249 ]
    ;
    "ldr x30, [x14]" = expect ''"ldr x30, [x14]" to be correct [de 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x14"))
      [ 222 1 64 249 ]
    ;
    "ldr x30, [x15]" = expect ''"ldr x30, [x15]" to be correct [fe 1 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x15"))
      [ 254 1 64 249 ]
    ;
    "ldr x30, [x16]" = expect ''"ldr x30, [x16]" to be correct [1e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x16"))
      [ 30 2 64 249 ]
    ;
    "ldr x30, [x17]" = expect ''"ldr x30, [x17]" to be correct [3e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x17"))
      [ 62 2 64 249 ]
    ;
    "ldr x30, [x18]" = expect ''"ldr x30, [x18]" to be correct [5e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x18"))
      [ 94 2 64 249 ]
    ;
    "ldr x30, [x19]" = expect ''"ldr x30, [x19]" to be correct [7e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x19"))
      [ 126 2 64 249 ]
    ;
    "ldr x30, [x20]" = expect ''"ldr x30, [x20]" to be correct [9e 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x20"))
      [ 158 2 64 249 ]
    ;
    "ldr x30, [x21]" = expect ''"ldr x30, [x21]" to be correct [be 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x21"))
      [ 190 2 64 249 ]
    ;
    "ldr x30, [x22]" = expect ''"ldr x30, [x22]" to be correct [de 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x22"))
      [ 222 2 64 249 ]
    ;
    "ldr x30, [x23]" = expect ''"ldr x30, [x23]" to be correct [fe 2 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x23"))
      [ 254 2 64 249 ]
    ;
    "ldr x30, [x24]" = expect ''"ldr x30, [x24]" to be correct [1e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x24"))
      [ 30 3 64 249 ]
    ;
    "ldr x30, [x25]" = expect ''"ldr x30, [x25]" to be correct [3e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x25"))
      [ 62 3 64 249 ]
    ;
    "ldr x30, [x26]" = expect ''"ldr x30, [x26]" to be correct [5e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x26"))
      [ 94 3 64 249 ]
    ;
    "ldr x30, [x27]" = expect ''"ldr x30, [x27]" to be correct [7e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x27"))
      [ 126 3 64 249 ]
    ;
    "ldr x30, [x28]" = expect ''"ldr x30, [x28]" to be correct [9e 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x28"))
      [ 158 3 64 249 ]
    ;
    "ldr x30, [x29]" = expect ''"ldr x30, [x29]" to be correct [be 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x29"))
      [ 190 3 64 249 ]
    ;
    "ldr x30, [x30]" = expect ''"ldr x30, [x30]" to be correct [de 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "x30"))
      [ 222 3 64 249 ]
    ;
    "ldr x30, [sp]" = expect ''"ldr x30, [sp]" to be correct [fe 3 40 f9]''
      (lib.stripComments (lib.arch.aarch64.instructions.LDR_mem "x30" "sp"))
      [ 254 3 64 249 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["mov","MOV_reg",["reg","reg"]]
  #
  "MOV_reg" = {
    "mov x0, x0" = expect ''"mov x0, x0" to be correct [e0 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x0"))
      [ 224 3 0 170 ]
    ;
    "mov x0, x1" = expect ''"mov x0, x1" to be correct [e0 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x1"))
      [ 224 3 1 170 ]
    ;
    "mov x0, x2" = expect ''"mov x0, x2" to be correct [e0 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x2"))
      [ 224 3 2 170 ]
    ;
    "mov x0, x3" = expect ''"mov x0, x3" to be correct [e0 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x3"))
      [ 224 3 3 170 ]
    ;
    "mov x0, x4" = expect ''"mov x0, x4" to be correct [e0 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x4"))
      [ 224 3 4 170 ]
    ;
    "mov x0, x5" = expect ''"mov x0, x5" to be correct [e0 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x5"))
      [ 224 3 5 170 ]
    ;
    "mov x0, x6" = expect ''"mov x0, x6" to be correct [e0 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x6"))
      [ 224 3 6 170 ]
    ;
    "mov x0, x7" = expect ''"mov x0, x7" to be correct [e0 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x7"))
      [ 224 3 7 170 ]
    ;
    "mov x0, x8" = expect ''"mov x0, x8" to be correct [e0 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x8"))
      [ 224 3 8 170 ]
    ;
    "mov x0, x9" = expect ''"mov x0, x9" to be correct [e0 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x9"))
      [ 224 3 9 170 ]
    ;
    "mov x0, x10" = expect ''"mov x0, x10" to be correct [e0 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x10"))
      [ 224 3 10 170 ]
    ;
    "mov x0, x11" = expect ''"mov x0, x11" to be correct [e0 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x11"))
      [ 224 3 11 170 ]
    ;
    "mov x0, x12" = expect ''"mov x0, x12" to be correct [e0 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x12"))
      [ 224 3 12 170 ]
    ;
    "mov x0, x13" = expect ''"mov x0, x13" to be correct [e0 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x13"))
      [ 224 3 13 170 ]
    ;
    "mov x0, x14" = expect ''"mov x0, x14" to be correct [e0 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x14"))
      [ 224 3 14 170 ]
    ;
    "mov x0, x15" = expect ''"mov x0, x15" to be correct [e0 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x15"))
      [ 224 3 15 170 ]
    ;
    "mov x0, x16" = expect ''"mov x0, x16" to be correct [e0 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x16"))
      [ 224 3 16 170 ]
    ;
    "mov x0, x17" = expect ''"mov x0, x17" to be correct [e0 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x17"))
      [ 224 3 17 170 ]
    ;
    "mov x0, x18" = expect ''"mov x0, x18" to be correct [e0 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x18"))
      [ 224 3 18 170 ]
    ;
    "mov x0, x19" = expect ''"mov x0, x19" to be correct [e0 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x19"))
      [ 224 3 19 170 ]
    ;
    "mov x0, x20" = expect ''"mov x0, x20" to be correct [e0 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x20"))
      [ 224 3 20 170 ]
    ;
    "mov x0, x21" = expect ''"mov x0, x21" to be correct [e0 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x21"))
      [ 224 3 21 170 ]
    ;
    "mov x0, x22" = expect ''"mov x0, x22" to be correct [e0 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x22"))
      [ 224 3 22 170 ]
    ;
    "mov x0, x23" = expect ''"mov x0, x23" to be correct [e0 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x23"))
      [ 224 3 23 170 ]
    ;
    "mov x0, x24" = expect ''"mov x0, x24" to be correct [e0 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x24"))
      [ 224 3 24 170 ]
    ;
    "mov x0, x25" = expect ''"mov x0, x25" to be correct [e0 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x25"))
      [ 224 3 25 170 ]
    ;
    "mov x0, x26" = expect ''"mov x0, x26" to be correct [e0 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x26"))
      [ 224 3 26 170 ]
    ;
    "mov x0, x27" = expect ''"mov x0, x27" to be correct [e0 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x27"))
      [ 224 3 27 170 ]
    ;
    "mov x0, x28" = expect ''"mov x0, x28" to be correct [e0 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x28"))
      [ 224 3 28 170 ]
    ;
    "mov x0, x29" = expect ''"mov x0, x29" to be correct [e0 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x29"))
      [ 224 3 29 170 ]
    ;
    "mov x0, x30" = expect ''"mov x0, x30" to be correct [e0 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "x30"))
      [ 224 3 30 170 ]
    ;
    "mov x0, sp" = expect ''"mov x0, sp" to be correct [e0 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x0" "sp"))
      [ 224 3 0 145 ]
    ;
    "mov x1, x0" = expect ''"mov x1, x0" to be correct [e1 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x0"))
      [ 225 3 0 170 ]
    ;
    "mov x1, x1" = expect ''"mov x1, x1" to be correct [e1 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x1"))
      [ 225 3 1 170 ]
    ;
    "mov x1, x2" = expect ''"mov x1, x2" to be correct [e1 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x2"))
      [ 225 3 2 170 ]
    ;
    "mov x1, x3" = expect ''"mov x1, x3" to be correct [e1 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x3"))
      [ 225 3 3 170 ]
    ;
    "mov x1, x4" = expect ''"mov x1, x4" to be correct [e1 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x4"))
      [ 225 3 4 170 ]
    ;
    "mov x1, x5" = expect ''"mov x1, x5" to be correct [e1 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x5"))
      [ 225 3 5 170 ]
    ;
    "mov x1, x6" = expect ''"mov x1, x6" to be correct [e1 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x6"))
      [ 225 3 6 170 ]
    ;
    "mov x1, x7" = expect ''"mov x1, x7" to be correct [e1 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x7"))
      [ 225 3 7 170 ]
    ;
    "mov x1, x8" = expect ''"mov x1, x8" to be correct [e1 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x8"))
      [ 225 3 8 170 ]
    ;
    "mov x1, x9" = expect ''"mov x1, x9" to be correct [e1 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x9"))
      [ 225 3 9 170 ]
    ;
    "mov x1, x10" = expect ''"mov x1, x10" to be correct [e1 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x10"))
      [ 225 3 10 170 ]
    ;
    "mov x1, x11" = expect ''"mov x1, x11" to be correct [e1 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x11"))
      [ 225 3 11 170 ]
    ;
    "mov x1, x12" = expect ''"mov x1, x12" to be correct [e1 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x12"))
      [ 225 3 12 170 ]
    ;
    "mov x1, x13" = expect ''"mov x1, x13" to be correct [e1 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x13"))
      [ 225 3 13 170 ]
    ;
    "mov x1, x14" = expect ''"mov x1, x14" to be correct [e1 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x14"))
      [ 225 3 14 170 ]
    ;
    "mov x1, x15" = expect ''"mov x1, x15" to be correct [e1 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x15"))
      [ 225 3 15 170 ]
    ;
    "mov x1, x16" = expect ''"mov x1, x16" to be correct [e1 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x16"))
      [ 225 3 16 170 ]
    ;
    "mov x1, x17" = expect ''"mov x1, x17" to be correct [e1 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x17"))
      [ 225 3 17 170 ]
    ;
    "mov x1, x18" = expect ''"mov x1, x18" to be correct [e1 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x18"))
      [ 225 3 18 170 ]
    ;
    "mov x1, x19" = expect ''"mov x1, x19" to be correct [e1 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x19"))
      [ 225 3 19 170 ]
    ;
    "mov x1, x20" = expect ''"mov x1, x20" to be correct [e1 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x20"))
      [ 225 3 20 170 ]
    ;
    "mov x1, x21" = expect ''"mov x1, x21" to be correct [e1 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x21"))
      [ 225 3 21 170 ]
    ;
    "mov x1, x22" = expect ''"mov x1, x22" to be correct [e1 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x22"))
      [ 225 3 22 170 ]
    ;
    "mov x1, x23" = expect ''"mov x1, x23" to be correct [e1 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x23"))
      [ 225 3 23 170 ]
    ;
    "mov x1, x24" = expect ''"mov x1, x24" to be correct [e1 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x24"))
      [ 225 3 24 170 ]
    ;
    "mov x1, x25" = expect ''"mov x1, x25" to be correct [e1 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x25"))
      [ 225 3 25 170 ]
    ;
    "mov x1, x26" = expect ''"mov x1, x26" to be correct [e1 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x26"))
      [ 225 3 26 170 ]
    ;
    "mov x1, x27" = expect ''"mov x1, x27" to be correct [e1 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x27"))
      [ 225 3 27 170 ]
    ;
    "mov x1, x28" = expect ''"mov x1, x28" to be correct [e1 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x28"))
      [ 225 3 28 170 ]
    ;
    "mov x1, x29" = expect ''"mov x1, x29" to be correct [e1 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x29"))
      [ 225 3 29 170 ]
    ;
    "mov x1, x30" = expect ''"mov x1, x30" to be correct [e1 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "x30"))
      [ 225 3 30 170 ]
    ;
    "mov x1, sp" = expect ''"mov x1, sp" to be correct [e1 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x1" "sp"))
      [ 225 3 0 145 ]
    ;
    "mov x2, x0" = expect ''"mov x2, x0" to be correct [e2 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x0"))
      [ 226 3 0 170 ]
    ;
    "mov x2, x1" = expect ''"mov x2, x1" to be correct [e2 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x1"))
      [ 226 3 1 170 ]
    ;
    "mov x2, x2" = expect ''"mov x2, x2" to be correct [e2 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x2"))
      [ 226 3 2 170 ]
    ;
    "mov x2, x3" = expect ''"mov x2, x3" to be correct [e2 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x3"))
      [ 226 3 3 170 ]
    ;
    "mov x2, x4" = expect ''"mov x2, x4" to be correct [e2 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x4"))
      [ 226 3 4 170 ]
    ;
    "mov x2, x5" = expect ''"mov x2, x5" to be correct [e2 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x5"))
      [ 226 3 5 170 ]
    ;
    "mov x2, x6" = expect ''"mov x2, x6" to be correct [e2 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x6"))
      [ 226 3 6 170 ]
    ;
    "mov x2, x7" = expect ''"mov x2, x7" to be correct [e2 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x7"))
      [ 226 3 7 170 ]
    ;
    "mov x2, x8" = expect ''"mov x2, x8" to be correct [e2 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x8"))
      [ 226 3 8 170 ]
    ;
    "mov x2, x9" = expect ''"mov x2, x9" to be correct [e2 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x9"))
      [ 226 3 9 170 ]
    ;
    "mov x2, x10" = expect ''"mov x2, x10" to be correct [e2 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x10"))
      [ 226 3 10 170 ]
    ;
    "mov x2, x11" = expect ''"mov x2, x11" to be correct [e2 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x11"))
      [ 226 3 11 170 ]
    ;
    "mov x2, x12" = expect ''"mov x2, x12" to be correct [e2 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x12"))
      [ 226 3 12 170 ]
    ;
    "mov x2, x13" = expect ''"mov x2, x13" to be correct [e2 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x13"))
      [ 226 3 13 170 ]
    ;
    "mov x2, x14" = expect ''"mov x2, x14" to be correct [e2 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x14"))
      [ 226 3 14 170 ]
    ;
    "mov x2, x15" = expect ''"mov x2, x15" to be correct [e2 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x15"))
      [ 226 3 15 170 ]
    ;
    "mov x2, x16" = expect ''"mov x2, x16" to be correct [e2 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x16"))
      [ 226 3 16 170 ]
    ;
    "mov x2, x17" = expect ''"mov x2, x17" to be correct [e2 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x17"))
      [ 226 3 17 170 ]
    ;
    "mov x2, x18" = expect ''"mov x2, x18" to be correct [e2 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x18"))
      [ 226 3 18 170 ]
    ;
    "mov x2, x19" = expect ''"mov x2, x19" to be correct [e2 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x19"))
      [ 226 3 19 170 ]
    ;
    "mov x2, x20" = expect ''"mov x2, x20" to be correct [e2 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x20"))
      [ 226 3 20 170 ]
    ;
    "mov x2, x21" = expect ''"mov x2, x21" to be correct [e2 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x21"))
      [ 226 3 21 170 ]
    ;
    "mov x2, x22" = expect ''"mov x2, x22" to be correct [e2 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x22"))
      [ 226 3 22 170 ]
    ;
    "mov x2, x23" = expect ''"mov x2, x23" to be correct [e2 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x23"))
      [ 226 3 23 170 ]
    ;
    "mov x2, x24" = expect ''"mov x2, x24" to be correct [e2 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x24"))
      [ 226 3 24 170 ]
    ;
    "mov x2, x25" = expect ''"mov x2, x25" to be correct [e2 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x25"))
      [ 226 3 25 170 ]
    ;
    "mov x2, x26" = expect ''"mov x2, x26" to be correct [e2 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x26"))
      [ 226 3 26 170 ]
    ;
    "mov x2, x27" = expect ''"mov x2, x27" to be correct [e2 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x27"))
      [ 226 3 27 170 ]
    ;
    "mov x2, x28" = expect ''"mov x2, x28" to be correct [e2 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x28"))
      [ 226 3 28 170 ]
    ;
    "mov x2, x29" = expect ''"mov x2, x29" to be correct [e2 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x29"))
      [ 226 3 29 170 ]
    ;
    "mov x2, x30" = expect ''"mov x2, x30" to be correct [e2 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "x30"))
      [ 226 3 30 170 ]
    ;
    "mov x2, sp" = expect ''"mov x2, sp" to be correct [e2 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x2" "sp"))
      [ 226 3 0 145 ]
    ;
    "mov x3, x0" = expect ''"mov x3, x0" to be correct [e3 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x0"))
      [ 227 3 0 170 ]
    ;
    "mov x3, x1" = expect ''"mov x3, x1" to be correct [e3 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x1"))
      [ 227 3 1 170 ]
    ;
    "mov x3, x2" = expect ''"mov x3, x2" to be correct [e3 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x2"))
      [ 227 3 2 170 ]
    ;
    "mov x3, x3" = expect ''"mov x3, x3" to be correct [e3 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x3"))
      [ 227 3 3 170 ]
    ;
    "mov x3, x4" = expect ''"mov x3, x4" to be correct [e3 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x4"))
      [ 227 3 4 170 ]
    ;
    "mov x3, x5" = expect ''"mov x3, x5" to be correct [e3 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x5"))
      [ 227 3 5 170 ]
    ;
    "mov x3, x6" = expect ''"mov x3, x6" to be correct [e3 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x6"))
      [ 227 3 6 170 ]
    ;
    "mov x3, x7" = expect ''"mov x3, x7" to be correct [e3 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x7"))
      [ 227 3 7 170 ]
    ;
    "mov x3, x8" = expect ''"mov x3, x8" to be correct [e3 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x8"))
      [ 227 3 8 170 ]
    ;
    "mov x3, x9" = expect ''"mov x3, x9" to be correct [e3 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x9"))
      [ 227 3 9 170 ]
    ;
    "mov x3, x10" = expect ''"mov x3, x10" to be correct [e3 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x10"))
      [ 227 3 10 170 ]
    ;
    "mov x3, x11" = expect ''"mov x3, x11" to be correct [e3 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x11"))
      [ 227 3 11 170 ]
    ;
    "mov x3, x12" = expect ''"mov x3, x12" to be correct [e3 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x12"))
      [ 227 3 12 170 ]
    ;
    "mov x3, x13" = expect ''"mov x3, x13" to be correct [e3 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x13"))
      [ 227 3 13 170 ]
    ;
    "mov x3, x14" = expect ''"mov x3, x14" to be correct [e3 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x14"))
      [ 227 3 14 170 ]
    ;
    "mov x3, x15" = expect ''"mov x3, x15" to be correct [e3 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x15"))
      [ 227 3 15 170 ]
    ;
    "mov x3, x16" = expect ''"mov x3, x16" to be correct [e3 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x16"))
      [ 227 3 16 170 ]
    ;
    "mov x3, x17" = expect ''"mov x3, x17" to be correct [e3 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x17"))
      [ 227 3 17 170 ]
    ;
    "mov x3, x18" = expect ''"mov x3, x18" to be correct [e3 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x18"))
      [ 227 3 18 170 ]
    ;
    "mov x3, x19" = expect ''"mov x3, x19" to be correct [e3 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x19"))
      [ 227 3 19 170 ]
    ;
    "mov x3, x20" = expect ''"mov x3, x20" to be correct [e3 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x20"))
      [ 227 3 20 170 ]
    ;
    "mov x3, x21" = expect ''"mov x3, x21" to be correct [e3 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x21"))
      [ 227 3 21 170 ]
    ;
    "mov x3, x22" = expect ''"mov x3, x22" to be correct [e3 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x22"))
      [ 227 3 22 170 ]
    ;
    "mov x3, x23" = expect ''"mov x3, x23" to be correct [e3 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x23"))
      [ 227 3 23 170 ]
    ;
    "mov x3, x24" = expect ''"mov x3, x24" to be correct [e3 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x24"))
      [ 227 3 24 170 ]
    ;
    "mov x3, x25" = expect ''"mov x3, x25" to be correct [e3 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x25"))
      [ 227 3 25 170 ]
    ;
    "mov x3, x26" = expect ''"mov x3, x26" to be correct [e3 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x26"))
      [ 227 3 26 170 ]
    ;
    "mov x3, x27" = expect ''"mov x3, x27" to be correct [e3 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x27"))
      [ 227 3 27 170 ]
    ;
    "mov x3, x28" = expect ''"mov x3, x28" to be correct [e3 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x28"))
      [ 227 3 28 170 ]
    ;
    "mov x3, x29" = expect ''"mov x3, x29" to be correct [e3 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x29"))
      [ 227 3 29 170 ]
    ;
    "mov x3, x30" = expect ''"mov x3, x30" to be correct [e3 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "x30"))
      [ 227 3 30 170 ]
    ;
    "mov x3, sp" = expect ''"mov x3, sp" to be correct [e3 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x3" "sp"))
      [ 227 3 0 145 ]
    ;
    "mov x4, x0" = expect ''"mov x4, x0" to be correct [e4 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x0"))
      [ 228 3 0 170 ]
    ;
    "mov x4, x1" = expect ''"mov x4, x1" to be correct [e4 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x1"))
      [ 228 3 1 170 ]
    ;
    "mov x4, x2" = expect ''"mov x4, x2" to be correct [e4 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x2"))
      [ 228 3 2 170 ]
    ;
    "mov x4, x3" = expect ''"mov x4, x3" to be correct [e4 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x3"))
      [ 228 3 3 170 ]
    ;
    "mov x4, x4" = expect ''"mov x4, x4" to be correct [e4 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x4"))
      [ 228 3 4 170 ]
    ;
    "mov x4, x5" = expect ''"mov x4, x5" to be correct [e4 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x5"))
      [ 228 3 5 170 ]
    ;
    "mov x4, x6" = expect ''"mov x4, x6" to be correct [e4 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x6"))
      [ 228 3 6 170 ]
    ;
    "mov x4, x7" = expect ''"mov x4, x7" to be correct [e4 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x7"))
      [ 228 3 7 170 ]
    ;
    "mov x4, x8" = expect ''"mov x4, x8" to be correct [e4 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x8"))
      [ 228 3 8 170 ]
    ;
    "mov x4, x9" = expect ''"mov x4, x9" to be correct [e4 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x9"))
      [ 228 3 9 170 ]
    ;
    "mov x4, x10" = expect ''"mov x4, x10" to be correct [e4 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x10"))
      [ 228 3 10 170 ]
    ;
    "mov x4, x11" = expect ''"mov x4, x11" to be correct [e4 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x11"))
      [ 228 3 11 170 ]
    ;
    "mov x4, x12" = expect ''"mov x4, x12" to be correct [e4 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x12"))
      [ 228 3 12 170 ]
    ;
    "mov x4, x13" = expect ''"mov x4, x13" to be correct [e4 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x13"))
      [ 228 3 13 170 ]
    ;
    "mov x4, x14" = expect ''"mov x4, x14" to be correct [e4 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x14"))
      [ 228 3 14 170 ]
    ;
    "mov x4, x15" = expect ''"mov x4, x15" to be correct [e4 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x15"))
      [ 228 3 15 170 ]
    ;
    "mov x4, x16" = expect ''"mov x4, x16" to be correct [e4 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x16"))
      [ 228 3 16 170 ]
    ;
    "mov x4, x17" = expect ''"mov x4, x17" to be correct [e4 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x17"))
      [ 228 3 17 170 ]
    ;
    "mov x4, x18" = expect ''"mov x4, x18" to be correct [e4 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x18"))
      [ 228 3 18 170 ]
    ;
    "mov x4, x19" = expect ''"mov x4, x19" to be correct [e4 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x19"))
      [ 228 3 19 170 ]
    ;
    "mov x4, x20" = expect ''"mov x4, x20" to be correct [e4 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x20"))
      [ 228 3 20 170 ]
    ;
    "mov x4, x21" = expect ''"mov x4, x21" to be correct [e4 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x21"))
      [ 228 3 21 170 ]
    ;
    "mov x4, x22" = expect ''"mov x4, x22" to be correct [e4 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x22"))
      [ 228 3 22 170 ]
    ;
    "mov x4, x23" = expect ''"mov x4, x23" to be correct [e4 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x23"))
      [ 228 3 23 170 ]
    ;
    "mov x4, x24" = expect ''"mov x4, x24" to be correct [e4 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x24"))
      [ 228 3 24 170 ]
    ;
    "mov x4, x25" = expect ''"mov x4, x25" to be correct [e4 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x25"))
      [ 228 3 25 170 ]
    ;
    "mov x4, x26" = expect ''"mov x4, x26" to be correct [e4 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x26"))
      [ 228 3 26 170 ]
    ;
    "mov x4, x27" = expect ''"mov x4, x27" to be correct [e4 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x27"))
      [ 228 3 27 170 ]
    ;
    "mov x4, x28" = expect ''"mov x4, x28" to be correct [e4 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x28"))
      [ 228 3 28 170 ]
    ;
    "mov x4, x29" = expect ''"mov x4, x29" to be correct [e4 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x29"))
      [ 228 3 29 170 ]
    ;
    "mov x4, x30" = expect ''"mov x4, x30" to be correct [e4 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "x30"))
      [ 228 3 30 170 ]
    ;
    "mov x4, sp" = expect ''"mov x4, sp" to be correct [e4 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x4" "sp"))
      [ 228 3 0 145 ]
    ;
    "mov x5, x0" = expect ''"mov x5, x0" to be correct [e5 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x0"))
      [ 229 3 0 170 ]
    ;
    "mov x5, x1" = expect ''"mov x5, x1" to be correct [e5 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x1"))
      [ 229 3 1 170 ]
    ;
    "mov x5, x2" = expect ''"mov x5, x2" to be correct [e5 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x2"))
      [ 229 3 2 170 ]
    ;
    "mov x5, x3" = expect ''"mov x5, x3" to be correct [e5 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x3"))
      [ 229 3 3 170 ]
    ;
    "mov x5, x4" = expect ''"mov x5, x4" to be correct [e5 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x4"))
      [ 229 3 4 170 ]
    ;
    "mov x5, x5" = expect ''"mov x5, x5" to be correct [e5 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x5"))
      [ 229 3 5 170 ]
    ;
    "mov x5, x6" = expect ''"mov x5, x6" to be correct [e5 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x6"))
      [ 229 3 6 170 ]
    ;
    "mov x5, x7" = expect ''"mov x5, x7" to be correct [e5 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x7"))
      [ 229 3 7 170 ]
    ;
    "mov x5, x8" = expect ''"mov x5, x8" to be correct [e5 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x8"))
      [ 229 3 8 170 ]
    ;
    "mov x5, x9" = expect ''"mov x5, x9" to be correct [e5 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x9"))
      [ 229 3 9 170 ]
    ;
    "mov x5, x10" = expect ''"mov x5, x10" to be correct [e5 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x10"))
      [ 229 3 10 170 ]
    ;
    "mov x5, x11" = expect ''"mov x5, x11" to be correct [e5 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x11"))
      [ 229 3 11 170 ]
    ;
    "mov x5, x12" = expect ''"mov x5, x12" to be correct [e5 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x12"))
      [ 229 3 12 170 ]
    ;
    "mov x5, x13" = expect ''"mov x5, x13" to be correct [e5 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x13"))
      [ 229 3 13 170 ]
    ;
    "mov x5, x14" = expect ''"mov x5, x14" to be correct [e5 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x14"))
      [ 229 3 14 170 ]
    ;
    "mov x5, x15" = expect ''"mov x5, x15" to be correct [e5 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x15"))
      [ 229 3 15 170 ]
    ;
    "mov x5, x16" = expect ''"mov x5, x16" to be correct [e5 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x16"))
      [ 229 3 16 170 ]
    ;
    "mov x5, x17" = expect ''"mov x5, x17" to be correct [e5 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x17"))
      [ 229 3 17 170 ]
    ;
    "mov x5, x18" = expect ''"mov x5, x18" to be correct [e5 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x18"))
      [ 229 3 18 170 ]
    ;
    "mov x5, x19" = expect ''"mov x5, x19" to be correct [e5 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x19"))
      [ 229 3 19 170 ]
    ;
    "mov x5, x20" = expect ''"mov x5, x20" to be correct [e5 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x20"))
      [ 229 3 20 170 ]
    ;
    "mov x5, x21" = expect ''"mov x5, x21" to be correct [e5 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x21"))
      [ 229 3 21 170 ]
    ;
    "mov x5, x22" = expect ''"mov x5, x22" to be correct [e5 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x22"))
      [ 229 3 22 170 ]
    ;
    "mov x5, x23" = expect ''"mov x5, x23" to be correct [e5 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x23"))
      [ 229 3 23 170 ]
    ;
    "mov x5, x24" = expect ''"mov x5, x24" to be correct [e5 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x24"))
      [ 229 3 24 170 ]
    ;
    "mov x5, x25" = expect ''"mov x5, x25" to be correct [e5 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x25"))
      [ 229 3 25 170 ]
    ;
    "mov x5, x26" = expect ''"mov x5, x26" to be correct [e5 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x26"))
      [ 229 3 26 170 ]
    ;
    "mov x5, x27" = expect ''"mov x5, x27" to be correct [e5 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x27"))
      [ 229 3 27 170 ]
    ;
    "mov x5, x28" = expect ''"mov x5, x28" to be correct [e5 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x28"))
      [ 229 3 28 170 ]
    ;
    "mov x5, x29" = expect ''"mov x5, x29" to be correct [e5 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x29"))
      [ 229 3 29 170 ]
    ;
    "mov x5, x30" = expect ''"mov x5, x30" to be correct [e5 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "x30"))
      [ 229 3 30 170 ]
    ;
    "mov x5, sp" = expect ''"mov x5, sp" to be correct [e5 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x5" "sp"))
      [ 229 3 0 145 ]
    ;
    "mov x6, x0" = expect ''"mov x6, x0" to be correct [e6 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x0"))
      [ 230 3 0 170 ]
    ;
    "mov x6, x1" = expect ''"mov x6, x1" to be correct [e6 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x1"))
      [ 230 3 1 170 ]
    ;
    "mov x6, x2" = expect ''"mov x6, x2" to be correct [e6 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x2"))
      [ 230 3 2 170 ]
    ;
    "mov x6, x3" = expect ''"mov x6, x3" to be correct [e6 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x3"))
      [ 230 3 3 170 ]
    ;
    "mov x6, x4" = expect ''"mov x6, x4" to be correct [e6 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x4"))
      [ 230 3 4 170 ]
    ;
    "mov x6, x5" = expect ''"mov x6, x5" to be correct [e6 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x5"))
      [ 230 3 5 170 ]
    ;
    "mov x6, x6" = expect ''"mov x6, x6" to be correct [e6 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x6"))
      [ 230 3 6 170 ]
    ;
    "mov x6, x7" = expect ''"mov x6, x7" to be correct [e6 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x7"))
      [ 230 3 7 170 ]
    ;
    "mov x6, x8" = expect ''"mov x6, x8" to be correct [e6 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x8"))
      [ 230 3 8 170 ]
    ;
    "mov x6, x9" = expect ''"mov x6, x9" to be correct [e6 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x9"))
      [ 230 3 9 170 ]
    ;
    "mov x6, x10" = expect ''"mov x6, x10" to be correct [e6 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x10"))
      [ 230 3 10 170 ]
    ;
    "mov x6, x11" = expect ''"mov x6, x11" to be correct [e6 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x11"))
      [ 230 3 11 170 ]
    ;
    "mov x6, x12" = expect ''"mov x6, x12" to be correct [e6 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x12"))
      [ 230 3 12 170 ]
    ;
    "mov x6, x13" = expect ''"mov x6, x13" to be correct [e6 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x13"))
      [ 230 3 13 170 ]
    ;
    "mov x6, x14" = expect ''"mov x6, x14" to be correct [e6 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x14"))
      [ 230 3 14 170 ]
    ;
    "mov x6, x15" = expect ''"mov x6, x15" to be correct [e6 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x15"))
      [ 230 3 15 170 ]
    ;
    "mov x6, x16" = expect ''"mov x6, x16" to be correct [e6 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x16"))
      [ 230 3 16 170 ]
    ;
    "mov x6, x17" = expect ''"mov x6, x17" to be correct [e6 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x17"))
      [ 230 3 17 170 ]
    ;
    "mov x6, x18" = expect ''"mov x6, x18" to be correct [e6 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x18"))
      [ 230 3 18 170 ]
    ;
    "mov x6, x19" = expect ''"mov x6, x19" to be correct [e6 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x19"))
      [ 230 3 19 170 ]
    ;
    "mov x6, x20" = expect ''"mov x6, x20" to be correct [e6 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x20"))
      [ 230 3 20 170 ]
    ;
    "mov x6, x21" = expect ''"mov x6, x21" to be correct [e6 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x21"))
      [ 230 3 21 170 ]
    ;
    "mov x6, x22" = expect ''"mov x6, x22" to be correct [e6 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x22"))
      [ 230 3 22 170 ]
    ;
    "mov x6, x23" = expect ''"mov x6, x23" to be correct [e6 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x23"))
      [ 230 3 23 170 ]
    ;
    "mov x6, x24" = expect ''"mov x6, x24" to be correct [e6 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x24"))
      [ 230 3 24 170 ]
    ;
    "mov x6, x25" = expect ''"mov x6, x25" to be correct [e6 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x25"))
      [ 230 3 25 170 ]
    ;
    "mov x6, x26" = expect ''"mov x6, x26" to be correct [e6 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x26"))
      [ 230 3 26 170 ]
    ;
    "mov x6, x27" = expect ''"mov x6, x27" to be correct [e6 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x27"))
      [ 230 3 27 170 ]
    ;
    "mov x6, x28" = expect ''"mov x6, x28" to be correct [e6 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x28"))
      [ 230 3 28 170 ]
    ;
    "mov x6, x29" = expect ''"mov x6, x29" to be correct [e6 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x29"))
      [ 230 3 29 170 ]
    ;
    "mov x6, x30" = expect ''"mov x6, x30" to be correct [e6 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "x30"))
      [ 230 3 30 170 ]
    ;
    "mov x6, sp" = expect ''"mov x6, sp" to be correct [e6 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x6" "sp"))
      [ 230 3 0 145 ]
    ;
    "mov x7, x0" = expect ''"mov x7, x0" to be correct [e7 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x0"))
      [ 231 3 0 170 ]
    ;
    "mov x7, x1" = expect ''"mov x7, x1" to be correct [e7 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x1"))
      [ 231 3 1 170 ]
    ;
    "mov x7, x2" = expect ''"mov x7, x2" to be correct [e7 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x2"))
      [ 231 3 2 170 ]
    ;
    "mov x7, x3" = expect ''"mov x7, x3" to be correct [e7 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x3"))
      [ 231 3 3 170 ]
    ;
    "mov x7, x4" = expect ''"mov x7, x4" to be correct [e7 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x4"))
      [ 231 3 4 170 ]
    ;
    "mov x7, x5" = expect ''"mov x7, x5" to be correct [e7 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x5"))
      [ 231 3 5 170 ]
    ;
    "mov x7, x6" = expect ''"mov x7, x6" to be correct [e7 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x6"))
      [ 231 3 6 170 ]
    ;
    "mov x7, x7" = expect ''"mov x7, x7" to be correct [e7 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x7"))
      [ 231 3 7 170 ]
    ;
    "mov x7, x8" = expect ''"mov x7, x8" to be correct [e7 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x8"))
      [ 231 3 8 170 ]
    ;
    "mov x7, x9" = expect ''"mov x7, x9" to be correct [e7 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x9"))
      [ 231 3 9 170 ]
    ;
    "mov x7, x10" = expect ''"mov x7, x10" to be correct [e7 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x10"))
      [ 231 3 10 170 ]
    ;
    "mov x7, x11" = expect ''"mov x7, x11" to be correct [e7 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x11"))
      [ 231 3 11 170 ]
    ;
    "mov x7, x12" = expect ''"mov x7, x12" to be correct [e7 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x12"))
      [ 231 3 12 170 ]
    ;
    "mov x7, x13" = expect ''"mov x7, x13" to be correct [e7 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x13"))
      [ 231 3 13 170 ]
    ;
    "mov x7, x14" = expect ''"mov x7, x14" to be correct [e7 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x14"))
      [ 231 3 14 170 ]
    ;
    "mov x7, x15" = expect ''"mov x7, x15" to be correct [e7 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x15"))
      [ 231 3 15 170 ]
    ;
    "mov x7, x16" = expect ''"mov x7, x16" to be correct [e7 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x16"))
      [ 231 3 16 170 ]
    ;
    "mov x7, x17" = expect ''"mov x7, x17" to be correct [e7 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x17"))
      [ 231 3 17 170 ]
    ;
    "mov x7, x18" = expect ''"mov x7, x18" to be correct [e7 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x18"))
      [ 231 3 18 170 ]
    ;
    "mov x7, x19" = expect ''"mov x7, x19" to be correct [e7 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x19"))
      [ 231 3 19 170 ]
    ;
    "mov x7, x20" = expect ''"mov x7, x20" to be correct [e7 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x20"))
      [ 231 3 20 170 ]
    ;
    "mov x7, x21" = expect ''"mov x7, x21" to be correct [e7 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x21"))
      [ 231 3 21 170 ]
    ;
    "mov x7, x22" = expect ''"mov x7, x22" to be correct [e7 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x22"))
      [ 231 3 22 170 ]
    ;
    "mov x7, x23" = expect ''"mov x7, x23" to be correct [e7 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x23"))
      [ 231 3 23 170 ]
    ;
    "mov x7, x24" = expect ''"mov x7, x24" to be correct [e7 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x24"))
      [ 231 3 24 170 ]
    ;
    "mov x7, x25" = expect ''"mov x7, x25" to be correct [e7 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x25"))
      [ 231 3 25 170 ]
    ;
    "mov x7, x26" = expect ''"mov x7, x26" to be correct [e7 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x26"))
      [ 231 3 26 170 ]
    ;
    "mov x7, x27" = expect ''"mov x7, x27" to be correct [e7 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x27"))
      [ 231 3 27 170 ]
    ;
    "mov x7, x28" = expect ''"mov x7, x28" to be correct [e7 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x28"))
      [ 231 3 28 170 ]
    ;
    "mov x7, x29" = expect ''"mov x7, x29" to be correct [e7 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x29"))
      [ 231 3 29 170 ]
    ;
    "mov x7, x30" = expect ''"mov x7, x30" to be correct [e7 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "x30"))
      [ 231 3 30 170 ]
    ;
    "mov x7, sp" = expect ''"mov x7, sp" to be correct [e7 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x7" "sp"))
      [ 231 3 0 145 ]
    ;
    "mov x8, x0" = expect ''"mov x8, x0" to be correct [e8 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x0"))
      [ 232 3 0 170 ]
    ;
    "mov x8, x1" = expect ''"mov x8, x1" to be correct [e8 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x1"))
      [ 232 3 1 170 ]
    ;
    "mov x8, x2" = expect ''"mov x8, x2" to be correct [e8 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x2"))
      [ 232 3 2 170 ]
    ;
    "mov x8, x3" = expect ''"mov x8, x3" to be correct [e8 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x3"))
      [ 232 3 3 170 ]
    ;
    "mov x8, x4" = expect ''"mov x8, x4" to be correct [e8 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x4"))
      [ 232 3 4 170 ]
    ;
    "mov x8, x5" = expect ''"mov x8, x5" to be correct [e8 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x5"))
      [ 232 3 5 170 ]
    ;
    "mov x8, x6" = expect ''"mov x8, x6" to be correct [e8 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x6"))
      [ 232 3 6 170 ]
    ;
    "mov x8, x7" = expect ''"mov x8, x7" to be correct [e8 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x7"))
      [ 232 3 7 170 ]
    ;
    "mov x8, x8" = expect ''"mov x8, x8" to be correct [e8 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x8"))
      [ 232 3 8 170 ]
    ;
    "mov x8, x9" = expect ''"mov x8, x9" to be correct [e8 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x9"))
      [ 232 3 9 170 ]
    ;
    "mov x8, x10" = expect ''"mov x8, x10" to be correct [e8 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x10"))
      [ 232 3 10 170 ]
    ;
    "mov x8, x11" = expect ''"mov x8, x11" to be correct [e8 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x11"))
      [ 232 3 11 170 ]
    ;
    "mov x8, x12" = expect ''"mov x8, x12" to be correct [e8 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x12"))
      [ 232 3 12 170 ]
    ;
    "mov x8, x13" = expect ''"mov x8, x13" to be correct [e8 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x13"))
      [ 232 3 13 170 ]
    ;
    "mov x8, x14" = expect ''"mov x8, x14" to be correct [e8 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x14"))
      [ 232 3 14 170 ]
    ;
    "mov x8, x15" = expect ''"mov x8, x15" to be correct [e8 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x15"))
      [ 232 3 15 170 ]
    ;
    "mov x8, x16" = expect ''"mov x8, x16" to be correct [e8 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x16"))
      [ 232 3 16 170 ]
    ;
    "mov x8, x17" = expect ''"mov x8, x17" to be correct [e8 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x17"))
      [ 232 3 17 170 ]
    ;
    "mov x8, x18" = expect ''"mov x8, x18" to be correct [e8 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x18"))
      [ 232 3 18 170 ]
    ;
    "mov x8, x19" = expect ''"mov x8, x19" to be correct [e8 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x19"))
      [ 232 3 19 170 ]
    ;
    "mov x8, x20" = expect ''"mov x8, x20" to be correct [e8 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x20"))
      [ 232 3 20 170 ]
    ;
    "mov x8, x21" = expect ''"mov x8, x21" to be correct [e8 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x21"))
      [ 232 3 21 170 ]
    ;
    "mov x8, x22" = expect ''"mov x8, x22" to be correct [e8 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x22"))
      [ 232 3 22 170 ]
    ;
    "mov x8, x23" = expect ''"mov x8, x23" to be correct [e8 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x23"))
      [ 232 3 23 170 ]
    ;
    "mov x8, x24" = expect ''"mov x8, x24" to be correct [e8 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x24"))
      [ 232 3 24 170 ]
    ;
    "mov x8, x25" = expect ''"mov x8, x25" to be correct [e8 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x25"))
      [ 232 3 25 170 ]
    ;
    "mov x8, x26" = expect ''"mov x8, x26" to be correct [e8 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x26"))
      [ 232 3 26 170 ]
    ;
    "mov x8, x27" = expect ''"mov x8, x27" to be correct [e8 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x27"))
      [ 232 3 27 170 ]
    ;
    "mov x8, x28" = expect ''"mov x8, x28" to be correct [e8 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x28"))
      [ 232 3 28 170 ]
    ;
    "mov x8, x29" = expect ''"mov x8, x29" to be correct [e8 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x29"))
      [ 232 3 29 170 ]
    ;
    "mov x8, x30" = expect ''"mov x8, x30" to be correct [e8 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "x30"))
      [ 232 3 30 170 ]
    ;
    "mov x8, sp" = expect ''"mov x8, sp" to be correct [e8 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x8" "sp"))
      [ 232 3 0 145 ]
    ;
    "mov x9, x0" = expect ''"mov x9, x0" to be correct [e9 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x0"))
      [ 233 3 0 170 ]
    ;
    "mov x9, x1" = expect ''"mov x9, x1" to be correct [e9 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x1"))
      [ 233 3 1 170 ]
    ;
    "mov x9, x2" = expect ''"mov x9, x2" to be correct [e9 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x2"))
      [ 233 3 2 170 ]
    ;
    "mov x9, x3" = expect ''"mov x9, x3" to be correct [e9 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x3"))
      [ 233 3 3 170 ]
    ;
    "mov x9, x4" = expect ''"mov x9, x4" to be correct [e9 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x4"))
      [ 233 3 4 170 ]
    ;
    "mov x9, x5" = expect ''"mov x9, x5" to be correct [e9 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x5"))
      [ 233 3 5 170 ]
    ;
    "mov x9, x6" = expect ''"mov x9, x6" to be correct [e9 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x6"))
      [ 233 3 6 170 ]
    ;
    "mov x9, x7" = expect ''"mov x9, x7" to be correct [e9 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x7"))
      [ 233 3 7 170 ]
    ;
    "mov x9, x8" = expect ''"mov x9, x8" to be correct [e9 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x8"))
      [ 233 3 8 170 ]
    ;
    "mov x9, x9" = expect ''"mov x9, x9" to be correct [e9 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x9"))
      [ 233 3 9 170 ]
    ;
    "mov x9, x10" = expect ''"mov x9, x10" to be correct [e9 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x10"))
      [ 233 3 10 170 ]
    ;
    "mov x9, x11" = expect ''"mov x9, x11" to be correct [e9 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x11"))
      [ 233 3 11 170 ]
    ;
    "mov x9, x12" = expect ''"mov x9, x12" to be correct [e9 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x12"))
      [ 233 3 12 170 ]
    ;
    "mov x9, x13" = expect ''"mov x9, x13" to be correct [e9 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x13"))
      [ 233 3 13 170 ]
    ;
    "mov x9, x14" = expect ''"mov x9, x14" to be correct [e9 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x14"))
      [ 233 3 14 170 ]
    ;
    "mov x9, x15" = expect ''"mov x9, x15" to be correct [e9 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x15"))
      [ 233 3 15 170 ]
    ;
    "mov x9, x16" = expect ''"mov x9, x16" to be correct [e9 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x16"))
      [ 233 3 16 170 ]
    ;
    "mov x9, x17" = expect ''"mov x9, x17" to be correct [e9 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x17"))
      [ 233 3 17 170 ]
    ;
    "mov x9, x18" = expect ''"mov x9, x18" to be correct [e9 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x18"))
      [ 233 3 18 170 ]
    ;
    "mov x9, x19" = expect ''"mov x9, x19" to be correct [e9 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x19"))
      [ 233 3 19 170 ]
    ;
    "mov x9, x20" = expect ''"mov x9, x20" to be correct [e9 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x20"))
      [ 233 3 20 170 ]
    ;
    "mov x9, x21" = expect ''"mov x9, x21" to be correct [e9 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x21"))
      [ 233 3 21 170 ]
    ;
    "mov x9, x22" = expect ''"mov x9, x22" to be correct [e9 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x22"))
      [ 233 3 22 170 ]
    ;
    "mov x9, x23" = expect ''"mov x9, x23" to be correct [e9 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x23"))
      [ 233 3 23 170 ]
    ;
    "mov x9, x24" = expect ''"mov x9, x24" to be correct [e9 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x24"))
      [ 233 3 24 170 ]
    ;
    "mov x9, x25" = expect ''"mov x9, x25" to be correct [e9 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x25"))
      [ 233 3 25 170 ]
    ;
    "mov x9, x26" = expect ''"mov x9, x26" to be correct [e9 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x26"))
      [ 233 3 26 170 ]
    ;
    "mov x9, x27" = expect ''"mov x9, x27" to be correct [e9 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x27"))
      [ 233 3 27 170 ]
    ;
    "mov x9, x28" = expect ''"mov x9, x28" to be correct [e9 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x28"))
      [ 233 3 28 170 ]
    ;
    "mov x9, x29" = expect ''"mov x9, x29" to be correct [e9 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x29"))
      [ 233 3 29 170 ]
    ;
    "mov x9, x30" = expect ''"mov x9, x30" to be correct [e9 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "x30"))
      [ 233 3 30 170 ]
    ;
    "mov x9, sp" = expect ''"mov x9, sp" to be correct [e9 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x9" "sp"))
      [ 233 3 0 145 ]
    ;
    "mov x10, x0" = expect ''"mov x10, x0" to be correct [ea 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x0"))
      [ 234 3 0 170 ]
    ;
    "mov x10, x1" = expect ''"mov x10, x1" to be correct [ea 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x1"))
      [ 234 3 1 170 ]
    ;
    "mov x10, x2" = expect ''"mov x10, x2" to be correct [ea 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x2"))
      [ 234 3 2 170 ]
    ;
    "mov x10, x3" = expect ''"mov x10, x3" to be correct [ea 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x3"))
      [ 234 3 3 170 ]
    ;
    "mov x10, x4" = expect ''"mov x10, x4" to be correct [ea 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x4"))
      [ 234 3 4 170 ]
    ;
    "mov x10, x5" = expect ''"mov x10, x5" to be correct [ea 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x5"))
      [ 234 3 5 170 ]
    ;
    "mov x10, x6" = expect ''"mov x10, x6" to be correct [ea 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x6"))
      [ 234 3 6 170 ]
    ;
    "mov x10, x7" = expect ''"mov x10, x7" to be correct [ea 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x7"))
      [ 234 3 7 170 ]
    ;
    "mov x10, x8" = expect ''"mov x10, x8" to be correct [ea 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x8"))
      [ 234 3 8 170 ]
    ;
    "mov x10, x9" = expect ''"mov x10, x9" to be correct [ea 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x9"))
      [ 234 3 9 170 ]
    ;
    "mov x10, x10" = expect ''"mov x10, x10" to be correct [ea 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x10"))
      [ 234 3 10 170 ]
    ;
    "mov x10, x11" = expect ''"mov x10, x11" to be correct [ea 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x11"))
      [ 234 3 11 170 ]
    ;
    "mov x10, x12" = expect ''"mov x10, x12" to be correct [ea 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x12"))
      [ 234 3 12 170 ]
    ;
    "mov x10, x13" = expect ''"mov x10, x13" to be correct [ea 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x13"))
      [ 234 3 13 170 ]
    ;
    "mov x10, x14" = expect ''"mov x10, x14" to be correct [ea 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x14"))
      [ 234 3 14 170 ]
    ;
    "mov x10, x15" = expect ''"mov x10, x15" to be correct [ea 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x15"))
      [ 234 3 15 170 ]
    ;
    "mov x10, x16" = expect ''"mov x10, x16" to be correct [ea 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x16"))
      [ 234 3 16 170 ]
    ;
    "mov x10, x17" = expect ''"mov x10, x17" to be correct [ea 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x17"))
      [ 234 3 17 170 ]
    ;
    "mov x10, x18" = expect ''"mov x10, x18" to be correct [ea 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x18"))
      [ 234 3 18 170 ]
    ;
    "mov x10, x19" = expect ''"mov x10, x19" to be correct [ea 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x19"))
      [ 234 3 19 170 ]
    ;
    "mov x10, x20" = expect ''"mov x10, x20" to be correct [ea 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x20"))
      [ 234 3 20 170 ]
    ;
    "mov x10, x21" = expect ''"mov x10, x21" to be correct [ea 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x21"))
      [ 234 3 21 170 ]
    ;
    "mov x10, x22" = expect ''"mov x10, x22" to be correct [ea 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x22"))
      [ 234 3 22 170 ]
    ;
    "mov x10, x23" = expect ''"mov x10, x23" to be correct [ea 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x23"))
      [ 234 3 23 170 ]
    ;
    "mov x10, x24" = expect ''"mov x10, x24" to be correct [ea 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x24"))
      [ 234 3 24 170 ]
    ;
    "mov x10, x25" = expect ''"mov x10, x25" to be correct [ea 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x25"))
      [ 234 3 25 170 ]
    ;
    "mov x10, x26" = expect ''"mov x10, x26" to be correct [ea 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x26"))
      [ 234 3 26 170 ]
    ;
    "mov x10, x27" = expect ''"mov x10, x27" to be correct [ea 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x27"))
      [ 234 3 27 170 ]
    ;
    "mov x10, x28" = expect ''"mov x10, x28" to be correct [ea 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x28"))
      [ 234 3 28 170 ]
    ;
    "mov x10, x29" = expect ''"mov x10, x29" to be correct [ea 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x29"))
      [ 234 3 29 170 ]
    ;
    "mov x10, x30" = expect ''"mov x10, x30" to be correct [ea 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "x30"))
      [ 234 3 30 170 ]
    ;
    "mov x10, sp" = expect ''"mov x10, sp" to be correct [ea 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x10" "sp"))
      [ 234 3 0 145 ]
    ;
    "mov x11, x0" = expect ''"mov x11, x0" to be correct [eb 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x0"))
      [ 235 3 0 170 ]
    ;
    "mov x11, x1" = expect ''"mov x11, x1" to be correct [eb 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x1"))
      [ 235 3 1 170 ]
    ;
    "mov x11, x2" = expect ''"mov x11, x2" to be correct [eb 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x2"))
      [ 235 3 2 170 ]
    ;
    "mov x11, x3" = expect ''"mov x11, x3" to be correct [eb 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x3"))
      [ 235 3 3 170 ]
    ;
    "mov x11, x4" = expect ''"mov x11, x4" to be correct [eb 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x4"))
      [ 235 3 4 170 ]
    ;
    "mov x11, x5" = expect ''"mov x11, x5" to be correct [eb 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x5"))
      [ 235 3 5 170 ]
    ;
    "mov x11, x6" = expect ''"mov x11, x6" to be correct [eb 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x6"))
      [ 235 3 6 170 ]
    ;
    "mov x11, x7" = expect ''"mov x11, x7" to be correct [eb 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x7"))
      [ 235 3 7 170 ]
    ;
    "mov x11, x8" = expect ''"mov x11, x8" to be correct [eb 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x8"))
      [ 235 3 8 170 ]
    ;
    "mov x11, x9" = expect ''"mov x11, x9" to be correct [eb 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x9"))
      [ 235 3 9 170 ]
    ;
    "mov x11, x10" = expect ''"mov x11, x10" to be correct [eb 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x10"))
      [ 235 3 10 170 ]
    ;
    "mov x11, x11" = expect ''"mov x11, x11" to be correct [eb 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x11"))
      [ 235 3 11 170 ]
    ;
    "mov x11, x12" = expect ''"mov x11, x12" to be correct [eb 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x12"))
      [ 235 3 12 170 ]
    ;
    "mov x11, x13" = expect ''"mov x11, x13" to be correct [eb 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x13"))
      [ 235 3 13 170 ]
    ;
    "mov x11, x14" = expect ''"mov x11, x14" to be correct [eb 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x14"))
      [ 235 3 14 170 ]
    ;
    "mov x11, x15" = expect ''"mov x11, x15" to be correct [eb 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x15"))
      [ 235 3 15 170 ]
    ;
    "mov x11, x16" = expect ''"mov x11, x16" to be correct [eb 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x16"))
      [ 235 3 16 170 ]
    ;
    "mov x11, x17" = expect ''"mov x11, x17" to be correct [eb 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x17"))
      [ 235 3 17 170 ]
    ;
    "mov x11, x18" = expect ''"mov x11, x18" to be correct [eb 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x18"))
      [ 235 3 18 170 ]
    ;
    "mov x11, x19" = expect ''"mov x11, x19" to be correct [eb 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x19"))
      [ 235 3 19 170 ]
    ;
    "mov x11, x20" = expect ''"mov x11, x20" to be correct [eb 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x20"))
      [ 235 3 20 170 ]
    ;
    "mov x11, x21" = expect ''"mov x11, x21" to be correct [eb 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x21"))
      [ 235 3 21 170 ]
    ;
    "mov x11, x22" = expect ''"mov x11, x22" to be correct [eb 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x22"))
      [ 235 3 22 170 ]
    ;
    "mov x11, x23" = expect ''"mov x11, x23" to be correct [eb 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x23"))
      [ 235 3 23 170 ]
    ;
    "mov x11, x24" = expect ''"mov x11, x24" to be correct [eb 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x24"))
      [ 235 3 24 170 ]
    ;
    "mov x11, x25" = expect ''"mov x11, x25" to be correct [eb 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x25"))
      [ 235 3 25 170 ]
    ;
    "mov x11, x26" = expect ''"mov x11, x26" to be correct [eb 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x26"))
      [ 235 3 26 170 ]
    ;
    "mov x11, x27" = expect ''"mov x11, x27" to be correct [eb 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x27"))
      [ 235 3 27 170 ]
    ;
    "mov x11, x28" = expect ''"mov x11, x28" to be correct [eb 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x28"))
      [ 235 3 28 170 ]
    ;
    "mov x11, x29" = expect ''"mov x11, x29" to be correct [eb 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x29"))
      [ 235 3 29 170 ]
    ;
    "mov x11, x30" = expect ''"mov x11, x30" to be correct [eb 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "x30"))
      [ 235 3 30 170 ]
    ;
    "mov x11, sp" = expect ''"mov x11, sp" to be correct [eb 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x11" "sp"))
      [ 235 3 0 145 ]
    ;
    "mov x12, x0" = expect ''"mov x12, x0" to be correct [ec 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x0"))
      [ 236 3 0 170 ]
    ;
    "mov x12, x1" = expect ''"mov x12, x1" to be correct [ec 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x1"))
      [ 236 3 1 170 ]
    ;
    "mov x12, x2" = expect ''"mov x12, x2" to be correct [ec 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x2"))
      [ 236 3 2 170 ]
    ;
    "mov x12, x3" = expect ''"mov x12, x3" to be correct [ec 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x3"))
      [ 236 3 3 170 ]
    ;
    "mov x12, x4" = expect ''"mov x12, x4" to be correct [ec 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x4"))
      [ 236 3 4 170 ]
    ;
    "mov x12, x5" = expect ''"mov x12, x5" to be correct [ec 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x5"))
      [ 236 3 5 170 ]
    ;
    "mov x12, x6" = expect ''"mov x12, x6" to be correct [ec 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x6"))
      [ 236 3 6 170 ]
    ;
    "mov x12, x7" = expect ''"mov x12, x7" to be correct [ec 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x7"))
      [ 236 3 7 170 ]
    ;
    "mov x12, x8" = expect ''"mov x12, x8" to be correct [ec 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x8"))
      [ 236 3 8 170 ]
    ;
    "mov x12, x9" = expect ''"mov x12, x9" to be correct [ec 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x9"))
      [ 236 3 9 170 ]
    ;
    "mov x12, x10" = expect ''"mov x12, x10" to be correct [ec 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x10"))
      [ 236 3 10 170 ]
    ;
    "mov x12, x11" = expect ''"mov x12, x11" to be correct [ec 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x11"))
      [ 236 3 11 170 ]
    ;
    "mov x12, x12" = expect ''"mov x12, x12" to be correct [ec 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x12"))
      [ 236 3 12 170 ]
    ;
    "mov x12, x13" = expect ''"mov x12, x13" to be correct [ec 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x13"))
      [ 236 3 13 170 ]
    ;
    "mov x12, x14" = expect ''"mov x12, x14" to be correct [ec 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x14"))
      [ 236 3 14 170 ]
    ;
    "mov x12, x15" = expect ''"mov x12, x15" to be correct [ec 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x15"))
      [ 236 3 15 170 ]
    ;
    "mov x12, x16" = expect ''"mov x12, x16" to be correct [ec 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x16"))
      [ 236 3 16 170 ]
    ;
    "mov x12, x17" = expect ''"mov x12, x17" to be correct [ec 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x17"))
      [ 236 3 17 170 ]
    ;
    "mov x12, x18" = expect ''"mov x12, x18" to be correct [ec 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x18"))
      [ 236 3 18 170 ]
    ;
    "mov x12, x19" = expect ''"mov x12, x19" to be correct [ec 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x19"))
      [ 236 3 19 170 ]
    ;
    "mov x12, x20" = expect ''"mov x12, x20" to be correct [ec 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x20"))
      [ 236 3 20 170 ]
    ;
    "mov x12, x21" = expect ''"mov x12, x21" to be correct [ec 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x21"))
      [ 236 3 21 170 ]
    ;
    "mov x12, x22" = expect ''"mov x12, x22" to be correct [ec 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x22"))
      [ 236 3 22 170 ]
    ;
    "mov x12, x23" = expect ''"mov x12, x23" to be correct [ec 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x23"))
      [ 236 3 23 170 ]
    ;
    "mov x12, x24" = expect ''"mov x12, x24" to be correct [ec 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x24"))
      [ 236 3 24 170 ]
    ;
    "mov x12, x25" = expect ''"mov x12, x25" to be correct [ec 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x25"))
      [ 236 3 25 170 ]
    ;
    "mov x12, x26" = expect ''"mov x12, x26" to be correct [ec 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x26"))
      [ 236 3 26 170 ]
    ;
    "mov x12, x27" = expect ''"mov x12, x27" to be correct [ec 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x27"))
      [ 236 3 27 170 ]
    ;
    "mov x12, x28" = expect ''"mov x12, x28" to be correct [ec 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x28"))
      [ 236 3 28 170 ]
    ;
    "mov x12, x29" = expect ''"mov x12, x29" to be correct [ec 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x29"))
      [ 236 3 29 170 ]
    ;
    "mov x12, x30" = expect ''"mov x12, x30" to be correct [ec 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "x30"))
      [ 236 3 30 170 ]
    ;
    "mov x12, sp" = expect ''"mov x12, sp" to be correct [ec 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x12" "sp"))
      [ 236 3 0 145 ]
    ;
    "mov x13, x0" = expect ''"mov x13, x0" to be correct [ed 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x0"))
      [ 237 3 0 170 ]
    ;
    "mov x13, x1" = expect ''"mov x13, x1" to be correct [ed 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x1"))
      [ 237 3 1 170 ]
    ;
    "mov x13, x2" = expect ''"mov x13, x2" to be correct [ed 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x2"))
      [ 237 3 2 170 ]
    ;
    "mov x13, x3" = expect ''"mov x13, x3" to be correct [ed 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x3"))
      [ 237 3 3 170 ]
    ;
    "mov x13, x4" = expect ''"mov x13, x4" to be correct [ed 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x4"))
      [ 237 3 4 170 ]
    ;
    "mov x13, x5" = expect ''"mov x13, x5" to be correct [ed 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x5"))
      [ 237 3 5 170 ]
    ;
    "mov x13, x6" = expect ''"mov x13, x6" to be correct [ed 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x6"))
      [ 237 3 6 170 ]
    ;
    "mov x13, x7" = expect ''"mov x13, x7" to be correct [ed 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x7"))
      [ 237 3 7 170 ]
    ;
    "mov x13, x8" = expect ''"mov x13, x8" to be correct [ed 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x8"))
      [ 237 3 8 170 ]
    ;
    "mov x13, x9" = expect ''"mov x13, x9" to be correct [ed 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x9"))
      [ 237 3 9 170 ]
    ;
    "mov x13, x10" = expect ''"mov x13, x10" to be correct [ed 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x10"))
      [ 237 3 10 170 ]
    ;
    "mov x13, x11" = expect ''"mov x13, x11" to be correct [ed 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x11"))
      [ 237 3 11 170 ]
    ;
    "mov x13, x12" = expect ''"mov x13, x12" to be correct [ed 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x12"))
      [ 237 3 12 170 ]
    ;
    "mov x13, x13" = expect ''"mov x13, x13" to be correct [ed 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x13"))
      [ 237 3 13 170 ]
    ;
    "mov x13, x14" = expect ''"mov x13, x14" to be correct [ed 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x14"))
      [ 237 3 14 170 ]
    ;
    "mov x13, x15" = expect ''"mov x13, x15" to be correct [ed 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x15"))
      [ 237 3 15 170 ]
    ;
    "mov x13, x16" = expect ''"mov x13, x16" to be correct [ed 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x16"))
      [ 237 3 16 170 ]
    ;
    "mov x13, x17" = expect ''"mov x13, x17" to be correct [ed 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x17"))
      [ 237 3 17 170 ]
    ;
    "mov x13, x18" = expect ''"mov x13, x18" to be correct [ed 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x18"))
      [ 237 3 18 170 ]
    ;
    "mov x13, x19" = expect ''"mov x13, x19" to be correct [ed 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x19"))
      [ 237 3 19 170 ]
    ;
    "mov x13, x20" = expect ''"mov x13, x20" to be correct [ed 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x20"))
      [ 237 3 20 170 ]
    ;
    "mov x13, x21" = expect ''"mov x13, x21" to be correct [ed 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x21"))
      [ 237 3 21 170 ]
    ;
    "mov x13, x22" = expect ''"mov x13, x22" to be correct [ed 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x22"))
      [ 237 3 22 170 ]
    ;
    "mov x13, x23" = expect ''"mov x13, x23" to be correct [ed 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x23"))
      [ 237 3 23 170 ]
    ;
    "mov x13, x24" = expect ''"mov x13, x24" to be correct [ed 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x24"))
      [ 237 3 24 170 ]
    ;
    "mov x13, x25" = expect ''"mov x13, x25" to be correct [ed 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x25"))
      [ 237 3 25 170 ]
    ;
    "mov x13, x26" = expect ''"mov x13, x26" to be correct [ed 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x26"))
      [ 237 3 26 170 ]
    ;
    "mov x13, x27" = expect ''"mov x13, x27" to be correct [ed 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x27"))
      [ 237 3 27 170 ]
    ;
    "mov x13, x28" = expect ''"mov x13, x28" to be correct [ed 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x28"))
      [ 237 3 28 170 ]
    ;
    "mov x13, x29" = expect ''"mov x13, x29" to be correct [ed 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x29"))
      [ 237 3 29 170 ]
    ;
    "mov x13, x30" = expect ''"mov x13, x30" to be correct [ed 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "x30"))
      [ 237 3 30 170 ]
    ;
    "mov x13, sp" = expect ''"mov x13, sp" to be correct [ed 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x13" "sp"))
      [ 237 3 0 145 ]
    ;
    "mov x14, x0" = expect ''"mov x14, x0" to be correct [ee 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x0"))
      [ 238 3 0 170 ]
    ;
    "mov x14, x1" = expect ''"mov x14, x1" to be correct [ee 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x1"))
      [ 238 3 1 170 ]
    ;
    "mov x14, x2" = expect ''"mov x14, x2" to be correct [ee 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x2"))
      [ 238 3 2 170 ]
    ;
    "mov x14, x3" = expect ''"mov x14, x3" to be correct [ee 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x3"))
      [ 238 3 3 170 ]
    ;
    "mov x14, x4" = expect ''"mov x14, x4" to be correct [ee 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x4"))
      [ 238 3 4 170 ]
    ;
    "mov x14, x5" = expect ''"mov x14, x5" to be correct [ee 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x5"))
      [ 238 3 5 170 ]
    ;
    "mov x14, x6" = expect ''"mov x14, x6" to be correct [ee 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x6"))
      [ 238 3 6 170 ]
    ;
    "mov x14, x7" = expect ''"mov x14, x7" to be correct [ee 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x7"))
      [ 238 3 7 170 ]
    ;
    "mov x14, x8" = expect ''"mov x14, x8" to be correct [ee 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x8"))
      [ 238 3 8 170 ]
    ;
    "mov x14, x9" = expect ''"mov x14, x9" to be correct [ee 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x9"))
      [ 238 3 9 170 ]
    ;
    "mov x14, x10" = expect ''"mov x14, x10" to be correct [ee 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x10"))
      [ 238 3 10 170 ]
    ;
    "mov x14, x11" = expect ''"mov x14, x11" to be correct [ee 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x11"))
      [ 238 3 11 170 ]
    ;
    "mov x14, x12" = expect ''"mov x14, x12" to be correct [ee 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x12"))
      [ 238 3 12 170 ]
    ;
    "mov x14, x13" = expect ''"mov x14, x13" to be correct [ee 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x13"))
      [ 238 3 13 170 ]
    ;
    "mov x14, x14" = expect ''"mov x14, x14" to be correct [ee 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x14"))
      [ 238 3 14 170 ]
    ;
    "mov x14, x15" = expect ''"mov x14, x15" to be correct [ee 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x15"))
      [ 238 3 15 170 ]
    ;
    "mov x14, x16" = expect ''"mov x14, x16" to be correct [ee 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x16"))
      [ 238 3 16 170 ]
    ;
    "mov x14, x17" = expect ''"mov x14, x17" to be correct [ee 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x17"))
      [ 238 3 17 170 ]
    ;
    "mov x14, x18" = expect ''"mov x14, x18" to be correct [ee 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x18"))
      [ 238 3 18 170 ]
    ;
    "mov x14, x19" = expect ''"mov x14, x19" to be correct [ee 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x19"))
      [ 238 3 19 170 ]
    ;
    "mov x14, x20" = expect ''"mov x14, x20" to be correct [ee 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x20"))
      [ 238 3 20 170 ]
    ;
    "mov x14, x21" = expect ''"mov x14, x21" to be correct [ee 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x21"))
      [ 238 3 21 170 ]
    ;
    "mov x14, x22" = expect ''"mov x14, x22" to be correct [ee 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x22"))
      [ 238 3 22 170 ]
    ;
    "mov x14, x23" = expect ''"mov x14, x23" to be correct [ee 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x23"))
      [ 238 3 23 170 ]
    ;
    "mov x14, x24" = expect ''"mov x14, x24" to be correct [ee 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x24"))
      [ 238 3 24 170 ]
    ;
    "mov x14, x25" = expect ''"mov x14, x25" to be correct [ee 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x25"))
      [ 238 3 25 170 ]
    ;
    "mov x14, x26" = expect ''"mov x14, x26" to be correct [ee 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x26"))
      [ 238 3 26 170 ]
    ;
    "mov x14, x27" = expect ''"mov x14, x27" to be correct [ee 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x27"))
      [ 238 3 27 170 ]
    ;
    "mov x14, x28" = expect ''"mov x14, x28" to be correct [ee 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x28"))
      [ 238 3 28 170 ]
    ;
    "mov x14, x29" = expect ''"mov x14, x29" to be correct [ee 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x29"))
      [ 238 3 29 170 ]
    ;
    "mov x14, x30" = expect ''"mov x14, x30" to be correct [ee 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "x30"))
      [ 238 3 30 170 ]
    ;
    "mov x14, sp" = expect ''"mov x14, sp" to be correct [ee 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x14" "sp"))
      [ 238 3 0 145 ]
    ;
    "mov x15, x0" = expect ''"mov x15, x0" to be correct [ef 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x0"))
      [ 239 3 0 170 ]
    ;
    "mov x15, x1" = expect ''"mov x15, x1" to be correct [ef 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x1"))
      [ 239 3 1 170 ]
    ;
    "mov x15, x2" = expect ''"mov x15, x2" to be correct [ef 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x2"))
      [ 239 3 2 170 ]
    ;
    "mov x15, x3" = expect ''"mov x15, x3" to be correct [ef 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x3"))
      [ 239 3 3 170 ]
    ;
    "mov x15, x4" = expect ''"mov x15, x4" to be correct [ef 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x4"))
      [ 239 3 4 170 ]
    ;
    "mov x15, x5" = expect ''"mov x15, x5" to be correct [ef 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x5"))
      [ 239 3 5 170 ]
    ;
    "mov x15, x6" = expect ''"mov x15, x6" to be correct [ef 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x6"))
      [ 239 3 6 170 ]
    ;
    "mov x15, x7" = expect ''"mov x15, x7" to be correct [ef 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x7"))
      [ 239 3 7 170 ]
    ;
    "mov x15, x8" = expect ''"mov x15, x8" to be correct [ef 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x8"))
      [ 239 3 8 170 ]
    ;
    "mov x15, x9" = expect ''"mov x15, x9" to be correct [ef 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x9"))
      [ 239 3 9 170 ]
    ;
    "mov x15, x10" = expect ''"mov x15, x10" to be correct [ef 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x10"))
      [ 239 3 10 170 ]
    ;
    "mov x15, x11" = expect ''"mov x15, x11" to be correct [ef 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x11"))
      [ 239 3 11 170 ]
    ;
    "mov x15, x12" = expect ''"mov x15, x12" to be correct [ef 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x12"))
      [ 239 3 12 170 ]
    ;
    "mov x15, x13" = expect ''"mov x15, x13" to be correct [ef 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x13"))
      [ 239 3 13 170 ]
    ;
    "mov x15, x14" = expect ''"mov x15, x14" to be correct [ef 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x14"))
      [ 239 3 14 170 ]
    ;
    "mov x15, x15" = expect ''"mov x15, x15" to be correct [ef 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x15"))
      [ 239 3 15 170 ]
    ;
    "mov x15, x16" = expect ''"mov x15, x16" to be correct [ef 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x16"))
      [ 239 3 16 170 ]
    ;
    "mov x15, x17" = expect ''"mov x15, x17" to be correct [ef 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x17"))
      [ 239 3 17 170 ]
    ;
    "mov x15, x18" = expect ''"mov x15, x18" to be correct [ef 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x18"))
      [ 239 3 18 170 ]
    ;
    "mov x15, x19" = expect ''"mov x15, x19" to be correct [ef 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x19"))
      [ 239 3 19 170 ]
    ;
    "mov x15, x20" = expect ''"mov x15, x20" to be correct [ef 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x20"))
      [ 239 3 20 170 ]
    ;
    "mov x15, x21" = expect ''"mov x15, x21" to be correct [ef 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x21"))
      [ 239 3 21 170 ]
    ;
    "mov x15, x22" = expect ''"mov x15, x22" to be correct [ef 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x22"))
      [ 239 3 22 170 ]
    ;
    "mov x15, x23" = expect ''"mov x15, x23" to be correct [ef 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x23"))
      [ 239 3 23 170 ]
    ;
    "mov x15, x24" = expect ''"mov x15, x24" to be correct [ef 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x24"))
      [ 239 3 24 170 ]
    ;
    "mov x15, x25" = expect ''"mov x15, x25" to be correct [ef 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x25"))
      [ 239 3 25 170 ]
    ;
    "mov x15, x26" = expect ''"mov x15, x26" to be correct [ef 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x26"))
      [ 239 3 26 170 ]
    ;
    "mov x15, x27" = expect ''"mov x15, x27" to be correct [ef 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x27"))
      [ 239 3 27 170 ]
    ;
    "mov x15, x28" = expect ''"mov x15, x28" to be correct [ef 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x28"))
      [ 239 3 28 170 ]
    ;
    "mov x15, x29" = expect ''"mov x15, x29" to be correct [ef 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x29"))
      [ 239 3 29 170 ]
    ;
    "mov x15, x30" = expect ''"mov x15, x30" to be correct [ef 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "x30"))
      [ 239 3 30 170 ]
    ;
    "mov x15, sp" = expect ''"mov x15, sp" to be correct [ef 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x15" "sp"))
      [ 239 3 0 145 ]
    ;
    "mov x16, x0" = expect ''"mov x16, x0" to be correct [f0 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x0"))
      [ 240 3 0 170 ]
    ;
    "mov x16, x1" = expect ''"mov x16, x1" to be correct [f0 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x1"))
      [ 240 3 1 170 ]
    ;
    "mov x16, x2" = expect ''"mov x16, x2" to be correct [f0 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x2"))
      [ 240 3 2 170 ]
    ;
    "mov x16, x3" = expect ''"mov x16, x3" to be correct [f0 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x3"))
      [ 240 3 3 170 ]
    ;
    "mov x16, x4" = expect ''"mov x16, x4" to be correct [f0 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x4"))
      [ 240 3 4 170 ]
    ;
    "mov x16, x5" = expect ''"mov x16, x5" to be correct [f0 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x5"))
      [ 240 3 5 170 ]
    ;
    "mov x16, x6" = expect ''"mov x16, x6" to be correct [f0 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x6"))
      [ 240 3 6 170 ]
    ;
    "mov x16, x7" = expect ''"mov x16, x7" to be correct [f0 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x7"))
      [ 240 3 7 170 ]
    ;
    "mov x16, x8" = expect ''"mov x16, x8" to be correct [f0 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x8"))
      [ 240 3 8 170 ]
    ;
    "mov x16, x9" = expect ''"mov x16, x9" to be correct [f0 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x9"))
      [ 240 3 9 170 ]
    ;
    "mov x16, x10" = expect ''"mov x16, x10" to be correct [f0 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x10"))
      [ 240 3 10 170 ]
    ;
    "mov x16, x11" = expect ''"mov x16, x11" to be correct [f0 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x11"))
      [ 240 3 11 170 ]
    ;
    "mov x16, x12" = expect ''"mov x16, x12" to be correct [f0 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x12"))
      [ 240 3 12 170 ]
    ;
    "mov x16, x13" = expect ''"mov x16, x13" to be correct [f0 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x13"))
      [ 240 3 13 170 ]
    ;
    "mov x16, x14" = expect ''"mov x16, x14" to be correct [f0 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x14"))
      [ 240 3 14 170 ]
    ;
    "mov x16, x15" = expect ''"mov x16, x15" to be correct [f0 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x15"))
      [ 240 3 15 170 ]
    ;
    "mov x16, x16" = expect ''"mov x16, x16" to be correct [f0 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x16"))
      [ 240 3 16 170 ]
    ;
    "mov x16, x17" = expect ''"mov x16, x17" to be correct [f0 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x17"))
      [ 240 3 17 170 ]
    ;
    "mov x16, x18" = expect ''"mov x16, x18" to be correct [f0 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x18"))
      [ 240 3 18 170 ]
    ;
    "mov x16, x19" = expect ''"mov x16, x19" to be correct [f0 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x19"))
      [ 240 3 19 170 ]
    ;
    "mov x16, x20" = expect ''"mov x16, x20" to be correct [f0 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x20"))
      [ 240 3 20 170 ]
    ;
    "mov x16, x21" = expect ''"mov x16, x21" to be correct [f0 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x21"))
      [ 240 3 21 170 ]
    ;
    "mov x16, x22" = expect ''"mov x16, x22" to be correct [f0 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x22"))
      [ 240 3 22 170 ]
    ;
    "mov x16, x23" = expect ''"mov x16, x23" to be correct [f0 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x23"))
      [ 240 3 23 170 ]
    ;
    "mov x16, x24" = expect ''"mov x16, x24" to be correct [f0 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x24"))
      [ 240 3 24 170 ]
    ;
    "mov x16, x25" = expect ''"mov x16, x25" to be correct [f0 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x25"))
      [ 240 3 25 170 ]
    ;
    "mov x16, x26" = expect ''"mov x16, x26" to be correct [f0 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x26"))
      [ 240 3 26 170 ]
    ;
    "mov x16, x27" = expect ''"mov x16, x27" to be correct [f0 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x27"))
      [ 240 3 27 170 ]
    ;
    "mov x16, x28" = expect ''"mov x16, x28" to be correct [f0 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x28"))
      [ 240 3 28 170 ]
    ;
    "mov x16, x29" = expect ''"mov x16, x29" to be correct [f0 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x29"))
      [ 240 3 29 170 ]
    ;
    "mov x16, x30" = expect ''"mov x16, x30" to be correct [f0 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "x30"))
      [ 240 3 30 170 ]
    ;
    "mov x16, sp" = expect ''"mov x16, sp" to be correct [f0 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x16" "sp"))
      [ 240 3 0 145 ]
    ;
    "mov x17, x0" = expect ''"mov x17, x0" to be correct [f1 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x0"))
      [ 241 3 0 170 ]
    ;
    "mov x17, x1" = expect ''"mov x17, x1" to be correct [f1 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x1"))
      [ 241 3 1 170 ]
    ;
    "mov x17, x2" = expect ''"mov x17, x2" to be correct [f1 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x2"))
      [ 241 3 2 170 ]
    ;
    "mov x17, x3" = expect ''"mov x17, x3" to be correct [f1 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x3"))
      [ 241 3 3 170 ]
    ;
    "mov x17, x4" = expect ''"mov x17, x4" to be correct [f1 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x4"))
      [ 241 3 4 170 ]
    ;
    "mov x17, x5" = expect ''"mov x17, x5" to be correct [f1 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x5"))
      [ 241 3 5 170 ]
    ;
    "mov x17, x6" = expect ''"mov x17, x6" to be correct [f1 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x6"))
      [ 241 3 6 170 ]
    ;
    "mov x17, x7" = expect ''"mov x17, x7" to be correct [f1 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x7"))
      [ 241 3 7 170 ]
    ;
    "mov x17, x8" = expect ''"mov x17, x8" to be correct [f1 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x8"))
      [ 241 3 8 170 ]
    ;
    "mov x17, x9" = expect ''"mov x17, x9" to be correct [f1 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x9"))
      [ 241 3 9 170 ]
    ;
    "mov x17, x10" = expect ''"mov x17, x10" to be correct [f1 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x10"))
      [ 241 3 10 170 ]
    ;
    "mov x17, x11" = expect ''"mov x17, x11" to be correct [f1 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x11"))
      [ 241 3 11 170 ]
    ;
    "mov x17, x12" = expect ''"mov x17, x12" to be correct [f1 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x12"))
      [ 241 3 12 170 ]
    ;
    "mov x17, x13" = expect ''"mov x17, x13" to be correct [f1 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x13"))
      [ 241 3 13 170 ]
    ;
    "mov x17, x14" = expect ''"mov x17, x14" to be correct [f1 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x14"))
      [ 241 3 14 170 ]
    ;
    "mov x17, x15" = expect ''"mov x17, x15" to be correct [f1 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x15"))
      [ 241 3 15 170 ]
    ;
    "mov x17, x16" = expect ''"mov x17, x16" to be correct [f1 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x16"))
      [ 241 3 16 170 ]
    ;
    "mov x17, x17" = expect ''"mov x17, x17" to be correct [f1 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x17"))
      [ 241 3 17 170 ]
    ;
    "mov x17, x18" = expect ''"mov x17, x18" to be correct [f1 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x18"))
      [ 241 3 18 170 ]
    ;
    "mov x17, x19" = expect ''"mov x17, x19" to be correct [f1 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x19"))
      [ 241 3 19 170 ]
    ;
    "mov x17, x20" = expect ''"mov x17, x20" to be correct [f1 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x20"))
      [ 241 3 20 170 ]
    ;
    "mov x17, x21" = expect ''"mov x17, x21" to be correct [f1 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x21"))
      [ 241 3 21 170 ]
    ;
    "mov x17, x22" = expect ''"mov x17, x22" to be correct [f1 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x22"))
      [ 241 3 22 170 ]
    ;
    "mov x17, x23" = expect ''"mov x17, x23" to be correct [f1 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x23"))
      [ 241 3 23 170 ]
    ;
    "mov x17, x24" = expect ''"mov x17, x24" to be correct [f1 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x24"))
      [ 241 3 24 170 ]
    ;
    "mov x17, x25" = expect ''"mov x17, x25" to be correct [f1 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x25"))
      [ 241 3 25 170 ]
    ;
    "mov x17, x26" = expect ''"mov x17, x26" to be correct [f1 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x26"))
      [ 241 3 26 170 ]
    ;
    "mov x17, x27" = expect ''"mov x17, x27" to be correct [f1 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x27"))
      [ 241 3 27 170 ]
    ;
    "mov x17, x28" = expect ''"mov x17, x28" to be correct [f1 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x28"))
      [ 241 3 28 170 ]
    ;
    "mov x17, x29" = expect ''"mov x17, x29" to be correct [f1 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x29"))
      [ 241 3 29 170 ]
    ;
    "mov x17, x30" = expect ''"mov x17, x30" to be correct [f1 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "x30"))
      [ 241 3 30 170 ]
    ;
    "mov x17, sp" = expect ''"mov x17, sp" to be correct [f1 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x17" "sp"))
      [ 241 3 0 145 ]
    ;
    "mov x18, x0" = expect ''"mov x18, x0" to be correct [f2 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x0"))
      [ 242 3 0 170 ]
    ;
    "mov x18, x1" = expect ''"mov x18, x1" to be correct [f2 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x1"))
      [ 242 3 1 170 ]
    ;
    "mov x18, x2" = expect ''"mov x18, x2" to be correct [f2 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x2"))
      [ 242 3 2 170 ]
    ;
    "mov x18, x3" = expect ''"mov x18, x3" to be correct [f2 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x3"))
      [ 242 3 3 170 ]
    ;
    "mov x18, x4" = expect ''"mov x18, x4" to be correct [f2 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x4"))
      [ 242 3 4 170 ]
    ;
    "mov x18, x5" = expect ''"mov x18, x5" to be correct [f2 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x5"))
      [ 242 3 5 170 ]
    ;
    "mov x18, x6" = expect ''"mov x18, x6" to be correct [f2 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x6"))
      [ 242 3 6 170 ]
    ;
    "mov x18, x7" = expect ''"mov x18, x7" to be correct [f2 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x7"))
      [ 242 3 7 170 ]
    ;
    "mov x18, x8" = expect ''"mov x18, x8" to be correct [f2 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x8"))
      [ 242 3 8 170 ]
    ;
    "mov x18, x9" = expect ''"mov x18, x9" to be correct [f2 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x9"))
      [ 242 3 9 170 ]
    ;
    "mov x18, x10" = expect ''"mov x18, x10" to be correct [f2 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x10"))
      [ 242 3 10 170 ]
    ;
    "mov x18, x11" = expect ''"mov x18, x11" to be correct [f2 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x11"))
      [ 242 3 11 170 ]
    ;
    "mov x18, x12" = expect ''"mov x18, x12" to be correct [f2 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x12"))
      [ 242 3 12 170 ]
    ;
    "mov x18, x13" = expect ''"mov x18, x13" to be correct [f2 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x13"))
      [ 242 3 13 170 ]
    ;
    "mov x18, x14" = expect ''"mov x18, x14" to be correct [f2 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x14"))
      [ 242 3 14 170 ]
    ;
    "mov x18, x15" = expect ''"mov x18, x15" to be correct [f2 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x15"))
      [ 242 3 15 170 ]
    ;
    "mov x18, x16" = expect ''"mov x18, x16" to be correct [f2 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x16"))
      [ 242 3 16 170 ]
    ;
    "mov x18, x17" = expect ''"mov x18, x17" to be correct [f2 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x17"))
      [ 242 3 17 170 ]
    ;
    "mov x18, x18" = expect ''"mov x18, x18" to be correct [f2 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x18"))
      [ 242 3 18 170 ]
    ;
    "mov x18, x19" = expect ''"mov x18, x19" to be correct [f2 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x19"))
      [ 242 3 19 170 ]
    ;
    "mov x18, x20" = expect ''"mov x18, x20" to be correct [f2 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x20"))
      [ 242 3 20 170 ]
    ;
    "mov x18, x21" = expect ''"mov x18, x21" to be correct [f2 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x21"))
      [ 242 3 21 170 ]
    ;
    "mov x18, x22" = expect ''"mov x18, x22" to be correct [f2 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x22"))
      [ 242 3 22 170 ]
    ;
    "mov x18, x23" = expect ''"mov x18, x23" to be correct [f2 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x23"))
      [ 242 3 23 170 ]
    ;
    "mov x18, x24" = expect ''"mov x18, x24" to be correct [f2 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x24"))
      [ 242 3 24 170 ]
    ;
    "mov x18, x25" = expect ''"mov x18, x25" to be correct [f2 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x25"))
      [ 242 3 25 170 ]
    ;
    "mov x18, x26" = expect ''"mov x18, x26" to be correct [f2 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x26"))
      [ 242 3 26 170 ]
    ;
    "mov x18, x27" = expect ''"mov x18, x27" to be correct [f2 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x27"))
      [ 242 3 27 170 ]
    ;
    "mov x18, x28" = expect ''"mov x18, x28" to be correct [f2 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x28"))
      [ 242 3 28 170 ]
    ;
    "mov x18, x29" = expect ''"mov x18, x29" to be correct [f2 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x29"))
      [ 242 3 29 170 ]
    ;
    "mov x18, x30" = expect ''"mov x18, x30" to be correct [f2 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "x30"))
      [ 242 3 30 170 ]
    ;
    "mov x18, sp" = expect ''"mov x18, sp" to be correct [f2 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x18" "sp"))
      [ 242 3 0 145 ]
    ;
    "mov x19, x0" = expect ''"mov x19, x0" to be correct [f3 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x0"))
      [ 243 3 0 170 ]
    ;
    "mov x19, x1" = expect ''"mov x19, x1" to be correct [f3 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x1"))
      [ 243 3 1 170 ]
    ;
    "mov x19, x2" = expect ''"mov x19, x2" to be correct [f3 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x2"))
      [ 243 3 2 170 ]
    ;
    "mov x19, x3" = expect ''"mov x19, x3" to be correct [f3 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x3"))
      [ 243 3 3 170 ]
    ;
    "mov x19, x4" = expect ''"mov x19, x4" to be correct [f3 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x4"))
      [ 243 3 4 170 ]
    ;
    "mov x19, x5" = expect ''"mov x19, x5" to be correct [f3 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x5"))
      [ 243 3 5 170 ]
    ;
    "mov x19, x6" = expect ''"mov x19, x6" to be correct [f3 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x6"))
      [ 243 3 6 170 ]
    ;
    "mov x19, x7" = expect ''"mov x19, x7" to be correct [f3 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x7"))
      [ 243 3 7 170 ]
    ;
    "mov x19, x8" = expect ''"mov x19, x8" to be correct [f3 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x8"))
      [ 243 3 8 170 ]
    ;
    "mov x19, x9" = expect ''"mov x19, x9" to be correct [f3 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x9"))
      [ 243 3 9 170 ]
    ;
    "mov x19, x10" = expect ''"mov x19, x10" to be correct [f3 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x10"))
      [ 243 3 10 170 ]
    ;
    "mov x19, x11" = expect ''"mov x19, x11" to be correct [f3 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x11"))
      [ 243 3 11 170 ]
    ;
    "mov x19, x12" = expect ''"mov x19, x12" to be correct [f3 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x12"))
      [ 243 3 12 170 ]
    ;
    "mov x19, x13" = expect ''"mov x19, x13" to be correct [f3 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x13"))
      [ 243 3 13 170 ]
    ;
    "mov x19, x14" = expect ''"mov x19, x14" to be correct [f3 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x14"))
      [ 243 3 14 170 ]
    ;
    "mov x19, x15" = expect ''"mov x19, x15" to be correct [f3 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x15"))
      [ 243 3 15 170 ]
    ;
    "mov x19, x16" = expect ''"mov x19, x16" to be correct [f3 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x16"))
      [ 243 3 16 170 ]
    ;
    "mov x19, x17" = expect ''"mov x19, x17" to be correct [f3 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x17"))
      [ 243 3 17 170 ]
    ;
    "mov x19, x18" = expect ''"mov x19, x18" to be correct [f3 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x18"))
      [ 243 3 18 170 ]
    ;
    "mov x19, x19" = expect ''"mov x19, x19" to be correct [f3 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x19"))
      [ 243 3 19 170 ]
    ;
    "mov x19, x20" = expect ''"mov x19, x20" to be correct [f3 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x20"))
      [ 243 3 20 170 ]
    ;
    "mov x19, x21" = expect ''"mov x19, x21" to be correct [f3 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x21"))
      [ 243 3 21 170 ]
    ;
    "mov x19, x22" = expect ''"mov x19, x22" to be correct [f3 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x22"))
      [ 243 3 22 170 ]
    ;
    "mov x19, x23" = expect ''"mov x19, x23" to be correct [f3 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x23"))
      [ 243 3 23 170 ]
    ;
    "mov x19, x24" = expect ''"mov x19, x24" to be correct [f3 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x24"))
      [ 243 3 24 170 ]
    ;
    "mov x19, x25" = expect ''"mov x19, x25" to be correct [f3 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x25"))
      [ 243 3 25 170 ]
    ;
    "mov x19, x26" = expect ''"mov x19, x26" to be correct [f3 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x26"))
      [ 243 3 26 170 ]
    ;
    "mov x19, x27" = expect ''"mov x19, x27" to be correct [f3 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x27"))
      [ 243 3 27 170 ]
    ;
    "mov x19, x28" = expect ''"mov x19, x28" to be correct [f3 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x28"))
      [ 243 3 28 170 ]
    ;
    "mov x19, x29" = expect ''"mov x19, x29" to be correct [f3 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x29"))
      [ 243 3 29 170 ]
    ;
    "mov x19, x30" = expect ''"mov x19, x30" to be correct [f3 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "x30"))
      [ 243 3 30 170 ]
    ;
    "mov x19, sp" = expect ''"mov x19, sp" to be correct [f3 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x19" "sp"))
      [ 243 3 0 145 ]
    ;
    "mov x20, x0" = expect ''"mov x20, x0" to be correct [f4 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x0"))
      [ 244 3 0 170 ]
    ;
    "mov x20, x1" = expect ''"mov x20, x1" to be correct [f4 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x1"))
      [ 244 3 1 170 ]
    ;
    "mov x20, x2" = expect ''"mov x20, x2" to be correct [f4 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x2"))
      [ 244 3 2 170 ]
    ;
    "mov x20, x3" = expect ''"mov x20, x3" to be correct [f4 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x3"))
      [ 244 3 3 170 ]
    ;
    "mov x20, x4" = expect ''"mov x20, x4" to be correct [f4 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x4"))
      [ 244 3 4 170 ]
    ;
    "mov x20, x5" = expect ''"mov x20, x5" to be correct [f4 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x5"))
      [ 244 3 5 170 ]
    ;
    "mov x20, x6" = expect ''"mov x20, x6" to be correct [f4 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x6"))
      [ 244 3 6 170 ]
    ;
    "mov x20, x7" = expect ''"mov x20, x7" to be correct [f4 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x7"))
      [ 244 3 7 170 ]
    ;
    "mov x20, x8" = expect ''"mov x20, x8" to be correct [f4 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x8"))
      [ 244 3 8 170 ]
    ;
    "mov x20, x9" = expect ''"mov x20, x9" to be correct [f4 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x9"))
      [ 244 3 9 170 ]
    ;
    "mov x20, x10" = expect ''"mov x20, x10" to be correct [f4 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x10"))
      [ 244 3 10 170 ]
    ;
    "mov x20, x11" = expect ''"mov x20, x11" to be correct [f4 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x11"))
      [ 244 3 11 170 ]
    ;
    "mov x20, x12" = expect ''"mov x20, x12" to be correct [f4 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x12"))
      [ 244 3 12 170 ]
    ;
    "mov x20, x13" = expect ''"mov x20, x13" to be correct [f4 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x13"))
      [ 244 3 13 170 ]
    ;
    "mov x20, x14" = expect ''"mov x20, x14" to be correct [f4 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x14"))
      [ 244 3 14 170 ]
    ;
    "mov x20, x15" = expect ''"mov x20, x15" to be correct [f4 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x15"))
      [ 244 3 15 170 ]
    ;
    "mov x20, x16" = expect ''"mov x20, x16" to be correct [f4 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x16"))
      [ 244 3 16 170 ]
    ;
    "mov x20, x17" = expect ''"mov x20, x17" to be correct [f4 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x17"))
      [ 244 3 17 170 ]
    ;
    "mov x20, x18" = expect ''"mov x20, x18" to be correct [f4 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x18"))
      [ 244 3 18 170 ]
    ;
    "mov x20, x19" = expect ''"mov x20, x19" to be correct [f4 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x19"))
      [ 244 3 19 170 ]
    ;
    "mov x20, x20" = expect ''"mov x20, x20" to be correct [f4 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x20"))
      [ 244 3 20 170 ]
    ;
    "mov x20, x21" = expect ''"mov x20, x21" to be correct [f4 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x21"))
      [ 244 3 21 170 ]
    ;
    "mov x20, x22" = expect ''"mov x20, x22" to be correct [f4 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x22"))
      [ 244 3 22 170 ]
    ;
    "mov x20, x23" = expect ''"mov x20, x23" to be correct [f4 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x23"))
      [ 244 3 23 170 ]
    ;
    "mov x20, x24" = expect ''"mov x20, x24" to be correct [f4 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x24"))
      [ 244 3 24 170 ]
    ;
    "mov x20, x25" = expect ''"mov x20, x25" to be correct [f4 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x25"))
      [ 244 3 25 170 ]
    ;
    "mov x20, x26" = expect ''"mov x20, x26" to be correct [f4 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x26"))
      [ 244 3 26 170 ]
    ;
    "mov x20, x27" = expect ''"mov x20, x27" to be correct [f4 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x27"))
      [ 244 3 27 170 ]
    ;
    "mov x20, x28" = expect ''"mov x20, x28" to be correct [f4 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x28"))
      [ 244 3 28 170 ]
    ;
    "mov x20, x29" = expect ''"mov x20, x29" to be correct [f4 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x29"))
      [ 244 3 29 170 ]
    ;
    "mov x20, x30" = expect ''"mov x20, x30" to be correct [f4 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "x30"))
      [ 244 3 30 170 ]
    ;
    "mov x20, sp" = expect ''"mov x20, sp" to be correct [f4 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x20" "sp"))
      [ 244 3 0 145 ]
    ;
    "mov x21, x0" = expect ''"mov x21, x0" to be correct [f5 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x0"))
      [ 245 3 0 170 ]
    ;
    "mov x21, x1" = expect ''"mov x21, x1" to be correct [f5 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x1"))
      [ 245 3 1 170 ]
    ;
    "mov x21, x2" = expect ''"mov x21, x2" to be correct [f5 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x2"))
      [ 245 3 2 170 ]
    ;
    "mov x21, x3" = expect ''"mov x21, x3" to be correct [f5 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x3"))
      [ 245 3 3 170 ]
    ;
    "mov x21, x4" = expect ''"mov x21, x4" to be correct [f5 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x4"))
      [ 245 3 4 170 ]
    ;
    "mov x21, x5" = expect ''"mov x21, x5" to be correct [f5 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x5"))
      [ 245 3 5 170 ]
    ;
    "mov x21, x6" = expect ''"mov x21, x6" to be correct [f5 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x6"))
      [ 245 3 6 170 ]
    ;
    "mov x21, x7" = expect ''"mov x21, x7" to be correct [f5 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x7"))
      [ 245 3 7 170 ]
    ;
    "mov x21, x8" = expect ''"mov x21, x8" to be correct [f5 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x8"))
      [ 245 3 8 170 ]
    ;
    "mov x21, x9" = expect ''"mov x21, x9" to be correct [f5 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x9"))
      [ 245 3 9 170 ]
    ;
    "mov x21, x10" = expect ''"mov x21, x10" to be correct [f5 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x10"))
      [ 245 3 10 170 ]
    ;
    "mov x21, x11" = expect ''"mov x21, x11" to be correct [f5 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x11"))
      [ 245 3 11 170 ]
    ;
    "mov x21, x12" = expect ''"mov x21, x12" to be correct [f5 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x12"))
      [ 245 3 12 170 ]
    ;
    "mov x21, x13" = expect ''"mov x21, x13" to be correct [f5 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x13"))
      [ 245 3 13 170 ]
    ;
    "mov x21, x14" = expect ''"mov x21, x14" to be correct [f5 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x14"))
      [ 245 3 14 170 ]
    ;
    "mov x21, x15" = expect ''"mov x21, x15" to be correct [f5 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x15"))
      [ 245 3 15 170 ]
    ;
    "mov x21, x16" = expect ''"mov x21, x16" to be correct [f5 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x16"))
      [ 245 3 16 170 ]
    ;
    "mov x21, x17" = expect ''"mov x21, x17" to be correct [f5 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x17"))
      [ 245 3 17 170 ]
    ;
    "mov x21, x18" = expect ''"mov x21, x18" to be correct [f5 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x18"))
      [ 245 3 18 170 ]
    ;
    "mov x21, x19" = expect ''"mov x21, x19" to be correct [f5 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x19"))
      [ 245 3 19 170 ]
    ;
    "mov x21, x20" = expect ''"mov x21, x20" to be correct [f5 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x20"))
      [ 245 3 20 170 ]
    ;
    "mov x21, x21" = expect ''"mov x21, x21" to be correct [f5 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x21"))
      [ 245 3 21 170 ]
    ;
    "mov x21, x22" = expect ''"mov x21, x22" to be correct [f5 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x22"))
      [ 245 3 22 170 ]
    ;
    "mov x21, x23" = expect ''"mov x21, x23" to be correct [f5 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x23"))
      [ 245 3 23 170 ]
    ;
    "mov x21, x24" = expect ''"mov x21, x24" to be correct [f5 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x24"))
      [ 245 3 24 170 ]
    ;
    "mov x21, x25" = expect ''"mov x21, x25" to be correct [f5 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x25"))
      [ 245 3 25 170 ]
    ;
    "mov x21, x26" = expect ''"mov x21, x26" to be correct [f5 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x26"))
      [ 245 3 26 170 ]
    ;
    "mov x21, x27" = expect ''"mov x21, x27" to be correct [f5 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x27"))
      [ 245 3 27 170 ]
    ;
    "mov x21, x28" = expect ''"mov x21, x28" to be correct [f5 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x28"))
      [ 245 3 28 170 ]
    ;
    "mov x21, x29" = expect ''"mov x21, x29" to be correct [f5 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x29"))
      [ 245 3 29 170 ]
    ;
    "mov x21, x30" = expect ''"mov x21, x30" to be correct [f5 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "x30"))
      [ 245 3 30 170 ]
    ;
    "mov x21, sp" = expect ''"mov x21, sp" to be correct [f5 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x21" "sp"))
      [ 245 3 0 145 ]
    ;
    "mov x22, x0" = expect ''"mov x22, x0" to be correct [f6 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x0"))
      [ 246 3 0 170 ]
    ;
    "mov x22, x1" = expect ''"mov x22, x1" to be correct [f6 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x1"))
      [ 246 3 1 170 ]
    ;
    "mov x22, x2" = expect ''"mov x22, x2" to be correct [f6 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x2"))
      [ 246 3 2 170 ]
    ;
    "mov x22, x3" = expect ''"mov x22, x3" to be correct [f6 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x3"))
      [ 246 3 3 170 ]
    ;
    "mov x22, x4" = expect ''"mov x22, x4" to be correct [f6 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x4"))
      [ 246 3 4 170 ]
    ;
    "mov x22, x5" = expect ''"mov x22, x5" to be correct [f6 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x5"))
      [ 246 3 5 170 ]
    ;
    "mov x22, x6" = expect ''"mov x22, x6" to be correct [f6 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x6"))
      [ 246 3 6 170 ]
    ;
    "mov x22, x7" = expect ''"mov x22, x7" to be correct [f6 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x7"))
      [ 246 3 7 170 ]
    ;
    "mov x22, x8" = expect ''"mov x22, x8" to be correct [f6 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x8"))
      [ 246 3 8 170 ]
    ;
    "mov x22, x9" = expect ''"mov x22, x9" to be correct [f6 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x9"))
      [ 246 3 9 170 ]
    ;
    "mov x22, x10" = expect ''"mov x22, x10" to be correct [f6 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x10"))
      [ 246 3 10 170 ]
    ;
    "mov x22, x11" = expect ''"mov x22, x11" to be correct [f6 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x11"))
      [ 246 3 11 170 ]
    ;
    "mov x22, x12" = expect ''"mov x22, x12" to be correct [f6 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x12"))
      [ 246 3 12 170 ]
    ;
    "mov x22, x13" = expect ''"mov x22, x13" to be correct [f6 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x13"))
      [ 246 3 13 170 ]
    ;
    "mov x22, x14" = expect ''"mov x22, x14" to be correct [f6 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x14"))
      [ 246 3 14 170 ]
    ;
    "mov x22, x15" = expect ''"mov x22, x15" to be correct [f6 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x15"))
      [ 246 3 15 170 ]
    ;
    "mov x22, x16" = expect ''"mov x22, x16" to be correct [f6 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x16"))
      [ 246 3 16 170 ]
    ;
    "mov x22, x17" = expect ''"mov x22, x17" to be correct [f6 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x17"))
      [ 246 3 17 170 ]
    ;
    "mov x22, x18" = expect ''"mov x22, x18" to be correct [f6 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x18"))
      [ 246 3 18 170 ]
    ;
    "mov x22, x19" = expect ''"mov x22, x19" to be correct [f6 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x19"))
      [ 246 3 19 170 ]
    ;
    "mov x22, x20" = expect ''"mov x22, x20" to be correct [f6 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x20"))
      [ 246 3 20 170 ]
    ;
    "mov x22, x21" = expect ''"mov x22, x21" to be correct [f6 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x21"))
      [ 246 3 21 170 ]
    ;
    "mov x22, x22" = expect ''"mov x22, x22" to be correct [f6 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x22"))
      [ 246 3 22 170 ]
    ;
    "mov x22, x23" = expect ''"mov x22, x23" to be correct [f6 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x23"))
      [ 246 3 23 170 ]
    ;
    "mov x22, x24" = expect ''"mov x22, x24" to be correct [f6 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x24"))
      [ 246 3 24 170 ]
    ;
    "mov x22, x25" = expect ''"mov x22, x25" to be correct [f6 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x25"))
      [ 246 3 25 170 ]
    ;
    "mov x22, x26" = expect ''"mov x22, x26" to be correct [f6 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x26"))
      [ 246 3 26 170 ]
    ;
    "mov x22, x27" = expect ''"mov x22, x27" to be correct [f6 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x27"))
      [ 246 3 27 170 ]
    ;
    "mov x22, x28" = expect ''"mov x22, x28" to be correct [f6 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x28"))
      [ 246 3 28 170 ]
    ;
    "mov x22, x29" = expect ''"mov x22, x29" to be correct [f6 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x29"))
      [ 246 3 29 170 ]
    ;
    "mov x22, x30" = expect ''"mov x22, x30" to be correct [f6 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "x30"))
      [ 246 3 30 170 ]
    ;
    "mov x22, sp" = expect ''"mov x22, sp" to be correct [f6 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x22" "sp"))
      [ 246 3 0 145 ]
    ;
    "mov x23, x0" = expect ''"mov x23, x0" to be correct [f7 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x0"))
      [ 247 3 0 170 ]
    ;
    "mov x23, x1" = expect ''"mov x23, x1" to be correct [f7 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x1"))
      [ 247 3 1 170 ]
    ;
    "mov x23, x2" = expect ''"mov x23, x2" to be correct [f7 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x2"))
      [ 247 3 2 170 ]
    ;
    "mov x23, x3" = expect ''"mov x23, x3" to be correct [f7 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x3"))
      [ 247 3 3 170 ]
    ;
    "mov x23, x4" = expect ''"mov x23, x4" to be correct [f7 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x4"))
      [ 247 3 4 170 ]
    ;
    "mov x23, x5" = expect ''"mov x23, x5" to be correct [f7 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x5"))
      [ 247 3 5 170 ]
    ;
    "mov x23, x6" = expect ''"mov x23, x6" to be correct [f7 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x6"))
      [ 247 3 6 170 ]
    ;
    "mov x23, x7" = expect ''"mov x23, x7" to be correct [f7 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x7"))
      [ 247 3 7 170 ]
    ;
    "mov x23, x8" = expect ''"mov x23, x8" to be correct [f7 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x8"))
      [ 247 3 8 170 ]
    ;
    "mov x23, x9" = expect ''"mov x23, x9" to be correct [f7 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x9"))
      [ 247 3 9 170 ]
    ;
    "mov x23, x10" = expect ''"mov x23, x10" to be correct [f7 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x10"))
      [ 247 3 10 170 ]
    ;
    "mov x23, x11" = expect ''"mov x23, x11" to be correct [f7 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x11"))
      [ 247 3 11 170 ]
    ;
    "mov x23, x12" = expect ''"mov x23, x12" to be correct [f7 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x12"))
      [ 247 3 12 170 ]
    ;
    "mov x23, x13" = expect ''"mov x23, x13" to be correct [f7 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x13"))
      [ 247 3 13 170 ]
    ;
    "mov x23, x14" = expect ''"mov x23, x14" to be correct [f7 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x14"))
      [ 247 3 14 170 ]
    ;
    "mov x23, x15" = expect ''"mov x23, x15" to be correct [f7 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x15"))
      [ 247 3 15 170 ]
    ;
    "mov x23, x16" = expect ''"mov x23, x16" to be correct [f7 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x16"))
      [ 247 3 16 170 ]
    ;
    "mov x23, x17" = expect ''"mov x23, x17" to be correct [f7 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x17"))
      [ 247 3 17 170 ]
    ;
    "mov x23, x18" = expect ''"mov x23, x18" to be correct [f7 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x18"))
      [ 247 3 18 170 ]
    ;
    "mov x23, x19" = expect ''"mov x23, x19" to be correct [f7 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x19"))
      [ 247 3 19 170 ]
    ;
    "mov x23, x20" = expect ''"mov x23, x20" to be correct [f7 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x20"))
      [ 247 3 20 170 ]
    ;
    "mov x23, x21" = expect ''"mov x23, x21" to be correct [f7 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x21"))
      [ 247 3 21 170 ]
    ;
    "mov x23, x22" = expect ''"mov x23, x22" to be correct [f7 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x22"))
      [ 247 3 22 170 ]
    ;
    "mov x23, x23" = expect ''"mov x23, x23" to be correct [f7 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x23"))
      [ 247 3 23 170 ]
    ;
    "mov x23, x24" = expect ''"mov x23, x24" to be correct [f7 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x24"))
      [ 247 3 24 170 ]
    ;
    "mov x23, x25" = expect ''"mov x23, x25" to be correct [f7 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x25"))
      [ 247 3 25 170 ]
    ;
    "mov x23, x26" = expect ''"mov x23, x26" to be correct [f7 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x26"))
      [ 247 3 26 170 ]
    ;
    "mov x23, x27" = expect ''"mov x23, x27" to be correct [f7 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x27"))
      [ 247 3 27 170 ]
    ;
    "mov x23, x28" = expect ''"mov x23, x28" to be correct [f7 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x28"))
      [ 247 3 28 170 ]
    ;
    "mov x23, x29" = expect ''"mov x23, x29" to be correct [f7 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x29"))
      [ 247 3 29 170 ]
    ;
    "mov x23, x30" = expect ''"mov x23, x30" to be correct [f7 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "x30"))
      [ 247 3 30 170 ]
    ;
    "mov x23, sp" = expect ''"mov x23, sp" to be correct [f7 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x23" "sp"))
      [ 247 3 0 145 ]
    ;
    "mov x24, x0" = expect ''"mov x24, x0" to be correct [f8 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x0"))
      [ 248 3 0 170 ]
    ;
    "mov x24, x1" = expect ''"mov x24, x1" to be correct [f8 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x1"))
      [ 248 3 1 170 ]
    ;
    "mov x24, x2" = expect ''"mov x24, x2" to be correct [f8 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x2"))
      [ 248 3 2 170 ]
    ;
    "mov x24, x3" = expect ''"mov x24, x3" to be correct [f8 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x3"))
      [ 248 3 3 170 ]
    ;
    "mov x24, x4" = expect ''"mov x24, x4" to be correct [f8 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x4"))
      [ 248 3 4 170 ]
    ;
    "mov x24, x5" = expect ''"mov x24, x5" to be correct [f8 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x5"))
      [ 248 3 5 170 ]
    ;
    "mov x24, x6" = expect ''"mov x24, x6" to be correct [f8 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x6"))
      [ 248 3 6 170 ]
    ;
    "mov x24, x7" = expect ''"mov x24, x7" to be correct [f8 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x7"))
      [ 248 3 7 170 ]
    ;
    "mov x24, x8" = expect ''"mov x24, x8" to be correct [f8 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x8"))
      [ 248 3 8 170 ]
    ;
    "mov x24, x9" = expect ''"mov x24, x9" to be correct [f8 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x9"))
      [ 248 3 9 170 ]
    ;
    "mov x24, x10" = expect ''"mov x24, x10" to be correct [f8 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x10"))
      [ 248 3 10 170 ]
    ;
    "mov x24, x11" = expect ''"mov x24, x11" to be correct [f8 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x11"))
      [ 248 3 11 170 ]
    ;
    "mov x24, x12" = expect ''"mov x24, x12" to be correct [f8 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x12"))
      [ 248 3 12 170 ]
    ;
    "mov x24, x13" = expect ''"mov x24, x13" to be correct [f8 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x13"))
      [ 248 3 13 170 ]
    ;
    "mov x24, x14" = expect ''"mov x24, x14" to be correct [f8 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x14"))
      [ 248 3 14 170 ]
    ;
    "mov x24, x15" = expect ''"mov x24, x15" to be correct [f8 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x15"))
      [ 248 3 15 170 ]
    ;
    "mov x24, x16" = expect ''"mov x24, x16" to be correct [f8 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x16"))
      [ 248 3 16 170 ]
    ;
    "mov x24, x17" = expect ''"mov x24, x17" to be correct [f8 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x17"))
      [ 248 3 17 170 ]
    ;
    "mov x24, x18" = expect ''"mov x24, x18" to be correct [f8 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x18"))
      [ 248 3 18 170 ]
    ;
    "mov x24, x19" = expect ''"mov x24, x19" to be correct [f8 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x19"))
      [ 248 3 19 170 ]
    ;
    "mov x24, x20" = expect ''"mov x24, x20" to be correct [f8 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x20"))
      [ 248 3 20 170 ]
    ;
    "mov x24, x21" = expect ''"mov x24, x21" to be correct [f8 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x21"))
      [ 248 3 21 170 ]
    ;
    "mov x24, x22" = expect ''"mov x24, x22" to be correct [f8 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x22"))
      [ 248 3 22 170 ]
    ;
    "mov x24, x23" = expect ''"mov x24, x23" to be correct [f8 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x23"))
      [ 248 3 23 170 ]
    ;
    "mov x24, x24" = expect ''"mov x24, x24" to be correct [f8 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x24"))
      [ 248 3 24 170 ]
    ;
    "mov x24, x25" = expect ''"mov x24, x25" to be correct [f8 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x25"))
      [ 248 3 25 170 ]
    ;
    "mov x24, x26" = expect ''"mov x24, x26" to be correct [f8 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x26"))
      [ 248 3 26 170 ]
    ;
    "mov x24, x27" = expect ''"mov x24, x27" to be correct [f8 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x27"))
      [ 248 3 27 170 ]
    ;
    "mov x24, x28" = expect ''"mov x24, x28" to be correct [f8 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x28"))
      [ 248 3 28 170 ]
    ;
    "mov x24, x29" = expect ''"mov x24, x29" to be correct [f8 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x29"))
      [ 248 3 29 170 ]
    ;
    "mov x24, x30" = expect ''"mov x24, x30" to be correct [f8 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "x30"))
      [ 248 3 30 170 ]
    ;
    "mov x24, sp" = expect ''"mov x24, sp" to be correct [f8 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x24" "sp"))
      [ 248 3 0 145 ]
    ;
    "mov x25, x0" = expect ''"mov x25, x0" to be correct [f9 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x0"))
      [ 249 3 0 170 ]
    ;
    "mov x25, x1" = expect ''"mov x25, x1" to be correct [f9 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x1"))
      [ 249 3 1 170 ]
    ;
    "mov x25, x2" = expect ''"mov x25, x2" to be correct [f9 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x2"))
      [ 249 3 2 170 ]
    ;
    "mov x25, x3" = expect ''"mov x25, x3" to be correct [f9 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x3"))
      [ 249 3 3 170 ]
    ;
    "mov x25, x4" = expect ''"mov x25, x4" to be correct [f9 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x4"))
      [ 249 3 4 170 ]
    ;
    "mov x25, x5" = expect ''"mov x25, x5" to be correct [f9 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x5"))
      [ 249 3 5 170 ]
    ;
    "mov x25, x6" = expect ''"mov x25, x6" to be correct [f9 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x6"))
      [ 249 3 6 170 ]
    ;
    "mov x25, x7" = expect ''"mov x25, x7" to be correct [f9 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x7"))
      [ 249 3 7 170 ]
    ;
    "mov x25, x8" = expect ''"mov x25, x8" to be correct [f9 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x8"))
      [ 249 3 8 170 ]
    ;
    "mov x25, x9" = expect ''"mov x25, x9" to be correct [f9 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x9"))
      [ 249 3 9 170 ]
    ;
    "mov x25, x10" = expect ''"mov x25, x10" to be correct [f9 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x10"))
      [ 249 3 10 170 ]
    ;
    "mov x25, x11" = expect ''"mov x25, x11" to be correct [f9 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x11"))
      [ 249 3 11 170 ]
    ;
    "mov x25, x12" = expect ''"mov x25, x12" to be correct [f9 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x12"))
      [ 249 3 12 170 ]
    ;
    "mov x25, x13" = expect ''"mov x25, x13" to be correct [f9 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x13"))
      [ 249 3 13 170 ]
    ;
    "mov x25, x14" = expect ''"mov x25, x14" to be correct [f9 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x14"))
      [ 249 3 14 170 ]
    ;
    "mov x25, x15" = expect ''"mov x25, x15" to be correct [f9 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x15"))
      [ 249 3 15 170 ]
    ;
    "mov x25, x16" = expect ''"mov x25, x16" to be correct [f9 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x16"))
      [ 249 3 16 170 ]
    ;
    "mov x25, x17" = expect ''"mov x25, x17" to be correct [f9 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x17"))
      [ 249 3 17 170 ]
    ;
    "mov x25, x18" = expect ''"mov x25, x18" to be correct [f9 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x18"))
      [ 249 3 18 170 ]
    ;
    "mov x25, x19" = expect ''"mov x25, x19" to be correct [f9 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x19"))
      [ 249 3 19 170 ]
    ;
    "mov x25, x20" = expect ''"mov x25, x20" to be correct [f9 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x20"))
      [ 249 3 20 170 ]
    ;
    "mov x25, x21" = expect ''"mov x25, x21" to be correct [f9 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x21"))
      [ 249 3 21 170 ]
    ;
    "mov x25, x22" = expect ''"mov x25, x22" to be correct [f9 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x22"))
      [ 249 3 22 170 ]
    ;
    "mov x25, x23" = expect ''"mov x25, x23" to be correct [f9 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x23"))
      [ 249 3 23 170 ]
    ;
    "mov x25, x24" = expect ''"mov x25, x24" to be correct [f9 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x24"))
      [ 249 3 24 170 ]
    ;
    "mov x25, x25" = expect ''"mov x25, x25" to be correct [f9 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x25"))
      [ 249 3 25 170 ]
    ;
    "mov x25, x26" = expect ''"mov x25, x26" to be correct [f9 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x26"))
      [ 249 3 26 170 ]
    ;
    "mov x25, x27" = expect ''"mov x25, x27" to be correct [f9 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x27"))
      [ 249 3 27 170 ]
    ;
    "mov x25, x28" = expect ''"mov x25, x28" to be correct [f9 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x28"))
      [ 249 3 28 170 ]
    ;
    "mov x25, x29" = expect ''"mov x25, x29" to be correct [f9 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x29"))
      [ 249 3 29 170 ]
    ;
    "mov x25, x30" = expect ''"mov x25, x30" to be correct [f9 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "x30"))
      [ 249 3 30 170 ]
    ;
    "mov x25, sp" = expect ''"mov x25, sp" to be correct [f9 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x25" "sp"))
      [ 249 3 0 145 ]
    ;
    "mov x26, x0" = expect ''"mov x26, x0" to be correct [fa 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x0"))
      [ 250 3 0 170 ]
    ;
    "mov x26, x1" = expect ''"mov x26, x1" to be correct [fa 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x1"))
      [ 250 3 1 170 ]
    ;
    "mov x26, x2" = expect ''"mov x26, x2" to be correct [fa 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x2"))
      [ 250 3 2 170 ]
    ;
    "mov x26, x3" = expect ''"mov x26, x3" to be correct [fa 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x3"))
      [ 250 3 3 170 ]
    ;
    "mov x26, x4" = expect ''"mov x26, x4" to be correct [fa 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x4"))
      [ 250 3 4 170 ]
    ;
    "mov x26, x5" = expect ''"mov x26, x5" to be correct [fa 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x5"))
      [ 250 3 5 170 ]
    ;
    "mov x26, x6" = expect ''"mov x26, x6" to be correct [fa 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x6"))
      [ 250 3 6 170 ]
    ;
    "mov x26, x7" = expect ''"mov x26, x7" to be correct [fa 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x7"))
      [ 250 3 7 170 ]
    ;
    "mov x26, x8" = expect ''"mov x26, x8" to be correct [fa 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x8"))
      [ 250 3 8 170 ]
    ;
    "mov x26, x9" = expect ''"mov x26, x9" to be correct [fa 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x9"))
      [ 250 3 9 170 ]
    ;
    "mov x26, x10" = expect ''"mov x26, x10" to be correct [fa 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x10"))
      [ 250 3 10 170 ]
    ;
    "mov x26, x11" = expect ''"mov x26, x11" to be correct [fa 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x11"))
      [ 250 3 11 170 ]
    ;
    "mov x26, x12" = expect ''"mov x26, x12" to be correct [fa 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x12"))
      [ 250 3 12 170 ]
    ;
    "mov x26, x13" = expect ''"mov x26, x13" to be correct [fa 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x13"))
      [ 250 3 13 170 ]
    ;
    "mov x26, x14" = expect ''"mov x26, x14" to be correct [fa 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x14"))
      [ 250 3 14 170 ]
    ;
    "mov x26, x15" = expect ''"mov x26, x15" to be correct [fa 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x15"))
      [ 250 3 15 170 ]
    ;
    "mov x26, x16" = expect ''"mov x26, x16" to be correct [fa 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x16"))
      [ 250 3 16 170 ]
    ;
    "mov x26, x17" = expect ''"mov x26, x17" to be correct [fa 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x17"))
      [ 250 3 17 170 ]
    ;
    "mov x26, x18" = expect ''"mov x26, x18" to be correct [fa 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x18"))
      [ 250 3 18 170 ]
    ;
    "mov x26, x19" = expect ''"mov x26, x19" to be correct [fa 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x19"))
      [ 250 3 19 170 ]
    ;
    "mov x26, x20" = expect ''"mov x26, x20" to be correct [fa 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x20"))
      [ 250 3 20 170 ]
    ;
    "mov x26, x21" = expect ''"mov x26, x21" to be correct [fa 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x21"))
      [ 250 3 21 170 ]
    ;
    "mov x26, x22" = expect ''"mov x26, x22" to be correct [fa 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x22"))
      [ 250 3 22 170 ]
    ;
    "mov x26, x23" = expect ''"mov x26, x23" to be correct [fa 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x23"))
      [ 250 3 23 170 ]
    ;
    "mov x26, x24" = expect ''"mov x26, x24" to be correct [fa 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x24"))
      [ 250 3 24 170 ]
    ;
    "mov x26, x25" = expect ''"mov x26, x25" to be correct [fa 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x25"))
      [ 250 3 25 170 ]
    ;
    "mov x26, x26" = expect ''"mov x26, x26" to be correct [fa 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x26"))
      [ 250 3 26 170 ]
    ;
    "mov x26, x27" = expect ''"mov x26, x27" to be correct [fa 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x27"))
      [ 250 3 27 170 ]
    ;
    "mov x26, x28" = expect ''"mov x26, x28" to be correct [fa 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x28"))
      [ 250 3 28 170 ]
    ;
    "mov x26, x29" = expect ''"mov x26, x29" to be correct [fa 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x29"))
      [ 250 3 29 170 ]
    ;
    "mov x26, x30" = expect ''"mov x26, x30" to be correct [fa 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "x30"))
      [ 250 3 30 170 ]
    ;
    "mov x26, sp" = expect ''"mov x26, sp" to be correct [fa 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x26" "sp"))
      [ 250 3 0 145 ]
    ;
    "mov x27, x0" = expect ''"mov x27, x0" to be correct [fb 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x0"))
      [ 251 3 0 170 ]
    ;
    "mov x27, x1" = expect ''"mov x27, x1" to be correct [fb 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x1"))
      [ 251 3 1 170 ]
    ;
    "mov x27, x2" = expect ''"mov x27, x2" to be correct [fb 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x2"))
      [ 251 3 2 170 ]
    ;
    "mov x27, x3" = expect ''"mov x27, x3" to be correct [fb 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x3"))
      [ 251 3 3 170 ]
    ;
    "mov x27, x4" = expect ''"mov x27, x4" to be correct [fb 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x4"))
      [ 251 3 4 170 ]
    ;
    "mov x27, x5" = expect ''"mov x27, x5" to be correct [fb 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x5"))
      [ 251 3 5 170 ]
    ;
    "mov x27, x6" = expect ''"mov x27, x6" to be correct [fb 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x6"))
      [ 251 3 6 170 ]
    ;
    "mov x27, x7" = expect ''"mov x27, x7" to be correct [fb 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x7"))
      [ 251 3 7 170 ]
    ;
    "mov x27, x8" = expect ''"mov x27, x8" to be correct [fb 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x8"))
      [ 251 3 8 170 ]
    ;
    "mov x27, x9" = expect ''"mov x27, x9" to be correct [fb 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x9"))
      [ 251 3 9 170 ]
    ;
    "mov x27, x10" = expect ''"mov x27, x10" to be correct [fb 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x10"))
      [ 251 3 10 170 ]
    ;
    "mov x27, x11" = expect ''"mov x27, x11" to be correct [fb 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x11"))
      [ 251 3 11 170 ]
    ;
    "mov x27, x12" = expect ''"mov x27, x12" to be correct [fb 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x12"))
      [ 251 3 12 170 ]
    ;
    "mov x27, x13" = expect ''"mov x27, x13" to be correct [fb 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x13"))
      [ 251 3 13 170 ]
    ;
    "mov x27, x14" = expect ''"mov x27, x14" to be correct [fb 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x14"))
      [ 251 3 14 170 ]
    ;
    "mov x27, x15" = expect ''"mov x27, x15" to be correct [fb 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x15"))
      [ 251 3 15 170 ]
    ;
    "mov x27, x16" = expect ''"mov x27, x16" to be correct [fb 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x16"))
      [ 251 3 16 170 ]
    ;
    "mov x27, x17" = expect ''"mov x27, x17" to be correct [fb 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x17"))
      [ 251 3 17 170 ]
    ;
    "mov x27, x18" = expect ''"mov x27, x18" to be correct [fb 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x18"))
      [ 251 3 18 170 ]
    ;
    "mov x27, x19" = expect ''"mov x27, x19" to be correct [fb 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x19"))
      [ 251 3 19 170 ]
    ;
    "mov x27, x20" = expect ''"mov x27, x20" to be correct [fb 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x20"))
      [ 251 3 20 170 ]
    ;
    "mov x27, x21" = expect ''"mov x27, x21" to be correct [fb 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x21"))
      [ 251 3 21 170 ]
    ;
    "mov x27, x22" = expect ''"mov x27, x22" to be correct [fb 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x22"))
      [ 251 3 22 170 ]
    ;
    "mov x27, x23" = expect ''"mov x27, x23" to be correct [fb 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x23"))
      [ 251 3 23 170 ]
    ;
    "mov x27, x24" = expect ''"mov x27, x24" to be correct [fb 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x24"))
      [ 251 3 24 170 ]
    ;
    "mov x27, x25" = expect ''"mov x27, x25" to be correct [fb 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x25"))
      [ 251 3 25 170 ]
    ;
    "mov x27, x26" = expect ''"mov x27, x26" to be correct [fb 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x26"))
      [ 251 3 26 170 ]
    ;
    "mov x27, x27" = expect ''"mov x27, x27" to be correct [fb 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x27"))
      [ 251 3 27 170 ]
    ;
    "mov x27, x28" = expect ''"mov x27, x28" to be correct [fb 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x28"))
      [ 251 3 28 170 ]
    ;
    "mov x27, x29" = expect ''"mov x27, x29" to be correct [fb 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x29"))
      [ 251 3 29 170 ]
    ;
    "mov x27, x30" = expect ''"mov x27, x30" to be correct [fb 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "x30"))
      [ 251 3 30 170 ]
    ;
    "mov x27, sp" = expect ''"mov x27, sp" to be correct [fb 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x27" "sp"))
      [ 251 3 0 145 ]
    ;
    "mov x28, x0" = expect ''"mov x28, x0" to be correct [fc 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x0"))
      [ 252 3 0 170 ]
    ;
    "mov x28, x1" = expect ''"mov x28, x1" to be correct [fc 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x1"))
      [ 252 3 1 170 ]
    ;
    "mov x28, x2" = expect ''"mov x28, x2" to be correct [fc 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x2"))
      [ 252 3 2 170 ]
    ;
    "mov x28, x3" = expect ''"mov x28, x3" to be correct [fc 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x3"))
      [ 252 3 3 170 ]
    ;
    "mov x28, x4" = expect ''"mov x28, x4" to be correct [fc 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x4"))
      [ 252 3 4 170 ]
    ;
    "mov x28, x5" = expect ''"mov x28, x5" to be correct [fc 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x5"))
      [ 252 3 5 170 ]
    ;
    "mov x28, x6" = expect ''"mov x28, x6" to be correct [fc 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x6"))
      [ 252 3 6 170 ]
    ;
    "mov x28, x7" = expect ''"mov x28, x7" to be correct [fc 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x7"))
      [ 252 3 7 170 ]
    ;
    "mov x28, x8" = expect ''"mov x28, x8" to be correct [fc 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x8"))
      [ 252 3 8 170 ]
    ;
    "mov x28, x9" = expect ''"mov x28, x9" to be correct [fc 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x9"))
      [ 252 3 9 170 ]
    ;
    "mov x28, x10" = expect ''"mov x28, x10" to be correct [fc 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x10"))
      [ 252 3 10 170 ]
    ;
    "mov x28, x11" = expect ''"mov x28, x11" to be correct [fc 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x11"))
      [ 252 3 11 170 ]
    ;
    "mov x28, x12" = expect ''"mov x28, x12" to be correct [fc 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x12"))
      [ 252 3 12 170 ]
    ;
    "mov x28, x13" = expect ''"mov x28, x13" to be correct [fc 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x13"))
      [ 252 3 13 170 ]
    ;
    "mov x28, x14" = expect ''"mov x28, x14" to be correct [fc 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x14"))
      [ 252 3 14 170 ]
    ;
    "mov x28, x15" = expect ''"mov x28, x15" to be correct [fc 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x15"))
      [ 252 3 15 170 ]
    ;
    "mov x28, x16" = expect ''"mov x28, x16" to be correct [fc 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x16"))
      [ 252 3 16 170 ]
    ;
    "mov x28, x17" = expect ''"mov x28, x17" to be correct [fc 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x17"))
      [ 252 3 17 170 ]
    ;
    "mov x28, x18" = expect ''"mov x28, x18" to be correct [fc 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x18"))
      [ 252 3 18 170 ]
    ;
    "mov x28, x19" = expect ''"mov x28, x19" to be correct [fc 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x19"))
      [ 252 3 19 170 ]
    ;
    "mov x28, x20" = expect ''"mov x28, x20" to be correct [fc 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x20"))
      [ 252 3 20 170 ]
    ;
    "mov x28, x21" = expect ''"mov x28, x21" to be correct [fc 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x21"))
      [ 252 3 21 170 ]
    ;
    "mov x28, x22" = expect ''"mov x28, x22" to be correct [fc 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x22"))
      [ 252 3 22 170 ]
    ;
    "mov x28, x23" = expect ''"mov x28, x23" to be correct [fc 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x23"))
      [ 252 3 23 170 ]
    ;
    "mov x28, x24" = expect ''"mov x28, x24" to be correct [fc 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x24"))
      [ 252 3 24 170 ]
    ;
    "mov x28, x25" = expect ''"mov x28, x25" to be correct [fc 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x25"))
      [ 252 3 25 170 ]
    ;
    "mov x28, x26" = expect ''"mov x28, x26" to be correct [fc 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x26"))
      [ 252 3 26 170 ]
    ;
    "mov x28, x27" = expect ''"mov x28, x27" to be correct [fc 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x27"))
      [ 252 3 27 170 ]
    ;
    "mov x28, x28" = expect ''"mov x28, x28" to be correct [fc 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x28"))
      [ 252 3 28 170 ]
    ;
    "mov x28, x29" = expect ''"mov x28, x29" to be correct [fc 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x29"))
      [ 252 3 29 170 ]
    ;
    "mov x28, x30" = expect ''"mov x28, x30" to be correct [fc 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "x30"))
      [ 252 3 30 170 ]
    ;
    "mov x28, sp" = expect ''"mov x28, sp" to be correct [fc 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x28" "sp"))
      [ 252 3 0 145 ]
    ;
    "mov x29, x0" = expect ''"mov x29, x0" to be correct [fd 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x0"))
      [ 253 3 0 170 ]
    ;
    "mov x29, x1" = expect ''"mov x29, x1" to be correct [fd 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x1"))
      [ 253 3 1 170 ]
    ;
    "mov x29, x2" = expect ''"mov x29, x2" to be correct [fd 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x2"))
      [ 253 3 2 170 ]
    ;
    "mov x29, x3" = expect ''"mov x29, x3" to be correct [fd 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x3"))
      [ 253 3 3 170 ]
    ;
    "mov x29, x4" = expect ''"mov x29, x4" to be correct [fd 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x4"))
      [ 253 3 4 170 ]
    ;
    "mov x29, x5" = expect ''"mov x29, x5" to be correct [fd 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x5"))
      [ 253 3 5 170 ]
    ;
    "mov x29, x6" = expect ''"mov x29, x6" to be correct [fd 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x6"))
      [ 253 3 6 170 ]
    ;
    "mov x29, x7" = expect ''"mov x29, x7" to be correct [fd 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x7"))
      [ 253 3 7 170 ]
    ;
    "mov x29, x8" = expect ''"mov x29, x8" to be correct [fd 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x8"))
      [ 253 3 8 170 ]
    ;
    "mov x29, x9" = expect ''"mov x29, x9" to be correct [fd 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x9"))
      [ 253 3 9 170 ]
    ;
    "mov x29, x10" = expect ''"mov x29, x10" to be correct [fd 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x10"))
      [ 253 3 10 170 ]
    ;
    "mov x29, x11" = expect ''"mov x29, x11" to be correct [fd 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x11"))
      [ 253 3 11 170 ]
    ;
    "mov x29, x12" = expect ''"mov x29, x12" to be correct [fd 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x12"))
      [ 253 3 12 170 ]
    ;
    "mov x29, x13" = expect ''"mov x29, x13" to be correct [fd 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x13"))
      [ 253 3 13 170 ]
    ;
    "mov x29, x14" = expect ''"mov x29, x14" to be correct [fd 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x14"))
      [ 253 3 14 170 ]
    ;
    "mov x29, x15" = expect ''"mov x29, x15" to be correct [fd 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x15"))
      [ 253 3 15 170 ]
    ;
    "mov x29, x16" = expect ''"mov x29, x16" to be correct [fd 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x16"))
      [ 253 3 16 170 ]
    ;
    "mov x29, x17" = expect ''"mov x29, x17" to be correct [fd 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x17"))
      [ 253 3 17 170 ]
    ;
    "mov x29, x18" = expect ''"mov x29, x18" to be correct [fd 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x18"))
      [ 253 3 18 170 ]
    ;
    "mov x29, x19" = expect ''"mov x29, x19" to be correct [fd 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x19"))
      [ 253 3 19 170 ]
    ;
    "mov x29, x20" = expect ''"mov x29, x20" to be correct [fd 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x20"))
      [ 253 3 20 170 ]
    ;
    "mov x29, x21" = expect ''"mov x29, x21" to be correct [fd 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x21"))
      [ 253 3 21 170 ]
    ;
    "mov x29, x22" = expect ''"mov x29, x22" to be correct [fd 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x22"))
      [ 253 3 22 170 ]
    ;
    "mov x29, x23" = expect ''"mov x29, x23" to be correct [fd 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x23"))
      [ 253 3 23 170 ]
    ;
    "mov x29, x24" = expect ''"mov x29, x24" to be correct [fd 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x24"))
      [ 253 3 24 170 ]
    ;
    "mov x29, x25" = expect ''"mov x29, x25" to be correct [fd 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x25"))
      [ 253 3 25 170 ]
    ;
    "mov x29, x26" = expect ''"mov x29, x26" to be correct [fd 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x26"))
      [ 253 3 26 170 ]
    ;
    "mov x29, x27" = expect ''"mov x29, x27" to be correct [fd 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x27"))
      [ 253 3 27 170 ]
    ;
    "mov x29, x28" = expect ''"mov x29, x28" to be correct [fd 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x28"))
      [ 253 3 28 170 ]
    ;
    "mov x29, x29" = expect ''"mov x29, x29" to be correct [fd 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x29"))
      [ 253 3 29 170 ]
    ;
    "mov x29, x30" = expect ''"mov x29, x30" to be correct [fd 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "x30"))
      [ 253 3 30 170 ]
    ;
    "mov x29, sp" = expect ''"mov x29, sp" to be correct [fd 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x29" "sp"))
      [ 253 3 0 145 ]
    ;
    "mov x30, x0" = expect ''"mov x30, x0" to be correct [fe 3 0 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x0"))
      [ 254 3 0 170 ]
    ;
    "mov x30, x1" = expect ''"mov x30, x1" to be correct [fe 3 1 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x1"))
      [ 254 3 1 170 ]
    ;
    "mov x30, x2" = expect ''"mov x30, x2" to be correct [fe 3 2 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x2"))
      [ 254 3 2 170 ]
    ;
    "mov x30, x3" = expect ''"mov x30, x3" to be correct [fe 3 3 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x3"))
      [ 254 3 3 170 ]
    ;
    "mov x30, x4" = expect ''"mov x30, x4" to be correct [fe 3 4 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x4"))
      [ 254 3 4 170 ]
    ;
    "mov x30, x5" = expect ''"mov x30, x5" to be correct [fe 3 5 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x5"))
      [ 254 3 5 170 ]
    ;
    "mov x30, x6" = expect ''"mov x30, x6" to be correct [fe 3 6 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x6"))
      [ 254 3 6 170 ]
    ;
    "mov x30, x7" = expect ''"mov x30, x7" to be correct [fe 3 7 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x7"))
      [ 254 3 7 170 ]
    ;
    "mov x30, x8" = expect ''"mov x30, x8" to be correct [fe 3 8 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x8"))
      [ 254 3 8 170 ]
    ;
    "mov x30, x9" = expect ''"mov x30, x9" to be correct [fe 3 9 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x9"))
      [ 254 3 9 170 ]
    ;
    "mov x30, x10" = expect ''"mov x30, x10" to be correct [fe 3 a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x10"))
      [ 254 3 10 170 ]
    ;
    "mov x30, x11" = expect ''"mov x30, x11" to be correct [fe 3 b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x11"))
      [ 254 3 11 170 ]
    ;
    "mov x30, x12" = expect ''"mov x30, x12" to be correct [fe 3 c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x12"))
      [ 254 3 12 170 ]
    ;
    "mov x30, x13" = expect ''"mov x30, x13" to be correct [fe 3 d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x13"))
      [ 254 3 13 170 ]
    ;
    "mov x30, x14" = expect ''"mov x30, x14" to be correct [fe 3 e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x14"))
      [ 254 3 14 170 ]
    ;
    "mov x30, x15" = expect ''"mov x30, x15" to be correct [fe 3 f aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x15"))
      [ 254 3 15 170 ]
    ;
    "mov x30, x16" = expect ''"mov x30, x16" to be correct [fe 3 10 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x16"))
      [ 254 3 16 170 ]
    ;
    "mov x30, x17" = expect ''"mov x30, x17" to be correct [fe 3 11 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x17"))
      [ 254 3 17 170 ]
    ;
    "mov x30, x18" = expect ''"mov x30, x18" to be correct [fe 3 12 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x18"))
      [ 254 3 18 170 ]
    ;
    "mov x30, x19" = expect ''"mov x30, x19" to be correct [fe 3 13 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x19"))
      [ 254 3 19 170 ]
    ;
    "mov x30, x20" = expect ''"mov x30, x20" to be correct [fe 3 14 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x20"))
      [ 254 3 20 170 ]
    ;
    "mov x30, x21" = expect ''"mov x30, x21" to be correct [fe 3 15 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x21"))
      [ 254 3 21 170 ]
    ;
    "mov x30, x22" = expect ''"mov x30, x22" to be correct [fe 3 16 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x22"))
      [ 254 3 22 170 ]
    ;
    "mov x30, x23" = expect ''"mov x30, x23" to be correct [fe 3 17 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x23"))
      [ 254 3 23 170 ]
    ;
    "mov x30, x24" = expect ''"mov x30, x24" to be correct [fe 3 18 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x24"))
      [ 254 3 24 170 ]
    ;
    "mov x30, x25" = expect ''"mov x30, x25" to be correct [fe 3 19 aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x25"))
      [ 254 3 25 170 ]
    ;
    "mov x30, x26" = expect ''"mov x30, x26" to be correct [fe 3 1a aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x26"))
      [ 254 3 26 170 ]
    ;
    "mov x30, x27" = expect ''"mov x30, x27" to be correct [fe 3 1b aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x27"))
      [ 254 3 27 170 ]
    ;
    "mov x30, x28" = expect ''"mov x30, x28" to be correct [fe 3 1c aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x28"))
      [ 254 3 28 170 ]
    ;
    "mov x30, x29" = expect ''"mov x30, x29" to be correct [fe 3 1d aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x29"))
      [ 254 3 29 170 ]
    ;
    "mov x30, x30" = expect ''"mov x30, x30" to be correct [fe 3 1e aa]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "x30"))
      [ 254 3 30 170 ]
    ;
    "mov x30, sp" = expect ''"mov x30, sp" to be correct [fe 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "x30" "sp"))
      [ 254 3 0 145 ]
    ;
    "mov sp, x0" = expect ''"mov sp, x0" to be correct [1f 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x0"))
      [ 31 0 0 145 ]
    ;
    "mov sp, x1" = expect ''"mov sp, x1" to be correct [3f 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x1"))
      [ 63 0 0 145 ]
    ;
    "mov sp, x2" = expect ''"mov sp, x2" to be correct [5f 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x2"))
      [ 95 0 0 145 ]
    ;
    "mov sp, x3" = expect ''"mov sp, x3" to be correct [7f 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x3"))
      [ 127 0 0 145 ]
    ;
    "mov sp, x4" = expect ''"mov sp, x4" to be correct [9f 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x4"))
      [ 159 0 0 145 ]
    ;
    "mov sp, x5" = expect ''"mov sp, x5" to be correct [bf 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x5"))
      [ 191 0 0 145 ]
    ;
    "mov sp, x6" = expect ''"mov sp, x6" to be correct [df 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x6"))
      [ 223 0 0 145 ]
    ;
    "mov sp, x7" = expect ''"mov sp, x7" to be correct [ff 0 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x7"))
      [ 255 0 0 145 ]
    ;
    "mov sp, x8" = expect ''"mov sp, x8" to be correct [1f 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x8"))
      [ 31 1 0 145 ]
    ;
    "mov sp, x9" = expect ''"mov sp, x9" to be correct [3f 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x9"))
      [ 63 1 0 145 ]
    ;
    "mov sp, x10" = expect ''"mov sp, x10" to be correct [5f 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x10"))
      [ 95 1 0 145 ]
    ;
    "mov sp, x11" = expect ''"mov sp, x11" to be correct [7f 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x11"))
      [ 127 1 0 145 ]
    ;
    "mov sp, x12" = expect ''"mov sp, x12" to be correct [9f 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x12"))
      [ 159 1 0 145 ]
    ;
    "mov sp, x13" = expect ''"mov sp, x13" to be correct [bf 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x13"))
      [ 191 1 0 145 ]
    ;
    "mov sp, x14" = expect ''"mov sp, x14" to be correct [df 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x14"))
      [ 223 1 0 145 ]
    ;
    "mov sp, x15" = expect ''"mov sp, x15" to be correct [ff 1 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x15"))
      [ 255 1 0 145 ]
    ;
    "mov sp, x16" = expect ''"mov sp, x16" to be correct [1f 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x16"))
      [ 31 2 0 145 ]
    ;
    "mov sp, x17" = expect ''"mov sp, x17" to be correct [3f 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x17"))
      [ 63 2 0 145 ]
    ;
    "mov sp, x18" = expect ''"mov sp, x18" to be correct [5f 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x18"))
      [ 95 2 0 145 ]
    ;
    "mov sp, x19" = expect ''"mov sp, x19" to be correct [7f 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x19"))
      [ 127 2 0 145 ]
    ;
    "mov sp, x20" = expect ''"mov sp, x20" to be correct [9f 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x20"))
      [ 159 2 0 145 ]
    ;
    "mov sp, x21" = expect ''"mov sp, x21" to be correct [bf 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x21"))
      [ 191 2 0 145 ]
    ;
    "mov sp, x22" = expect ''"mov sp, x22" to be correct [df 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x22"))
      [ 223 2 0 145 ]
    ;
    "mov sp, x23" = expect ''"mov sp, x23" to be correct [ff 2 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x23"))
      [ 255 2 0 145 ]
    ;
    "mov sp, x24" = expect ''"mov sp, x24" to be correct [1f 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x24"))
      [ 31 3 0 145 ]
    ;
    "mov sp, x25" = expect ''"mov sp, x25" to be correct [3f 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x25"))
      [ 63 3 0 145 ]
    ;
    "mov sp, x26" = expect ''"mov sp, x26" to be correct [5f 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x26"))
      [ 95 3 0 145 ]
    ;
    "mov sp, x27" = expect ''"mov sp, x27" to be correct [7f 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x27"))
      [ 127 3 0 145 ]
    ;
    "mov sp, x28" = expect ''"mov sp, x28" to be correct [9f 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x28"))
      [ 159 3 0 145 ]
    ;
    "mov sp, x29" = expect ''"mov sp, x29" to be correct [bf 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x29"))
      [ 191 3 0 145 ]
    ;
    "mov sp, x30" = expect ''"mov sp, x30" to be correct [df 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "x30"))
      [ 223 3 0 145 ]
    ;
    "mov sp, sp" = expect ''"mov sp, sp" to be correct [ff 3 0 91]''
      (lib.stripComments (lib.arch.aarch64.instructions.MOV_reg "sp" "sp"))
      [ 255 3 0 145 ]
    ;
  };
  
}
