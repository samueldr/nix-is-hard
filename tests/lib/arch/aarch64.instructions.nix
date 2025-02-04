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
  
}
