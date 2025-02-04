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
  
}
