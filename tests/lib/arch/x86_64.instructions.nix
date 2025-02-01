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
  #
  # Test generation input:
  #     ["mov","MOV_reg",["reg","reg"]]
  #
  "MOV_reg" = {
    "mov al,al" = expect ''"mov al,al" to be correct [88 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "al"))
      [ 136 192 ]
    ;
    "mov al,cl" = expect ''"mov al,cl" to be correct [88 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "cl"))
      [ 136 200 ]
    ;
    "mov al,dl" = expect ''"mov al,dl" to be correct [88 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "dl"))
      [ 136 208 ]
    ;
    "mov al,bl" = expect ''"mov al,bl" to be correct [88 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "bl"))
      [ 136 216 ]
    ;
    "mov al,ah" = expect ''"mov al,ah" to be correct [88 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "ah"))
      [ 136 224 ]
    ;
    "mov al,ch" = expect ''"mov al,ch" to be correct [88 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "ch"))
      [ 136 232 ]
    ;
    "mov al,dh" = expect ''"mov al,dh" to be correct [88 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "dh"))
      [ 136 240 ]
    ;
    "mov al,bh" = expect ''"mov al,bh" to be correct [88 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "bh"))
      [ 136 248 ]
    ;
    "mov al,r8b" = expect ''"mov al,r8b" to be correct [44 88 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "r8b"))
      [ 68 136 192 ]
    ;
    "mov al,r9b" = expect ''"mov al,r9b" to be correct [44 88 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "r9b"))
      [ 68 136 200 ]
    ;
    "mov al,r10b" = expect ''"mov al,r10b" to be correct [44 88 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "r10b"))
      [ 68 136 208 ]
    ;
    "mov al,r11b" = expect ''"mov al,r11b" to be correct [44 88 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "r11b"))
      [ 68 136 216 ]
    ;
    "mov al,r12b" = expect ''"mov al,r12b" to be correct [44 88 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "r12b"))
      [ 68 136 224 ]
    ;
    "mov al,r13b" = expect ''"mov al,r13b" to be correct [44 88 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "r13b"))
      [ 68 136 232 ]
    ;
    "mov al,r14b" = expect ''"mov al,r14b" to be correct [44 88 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "r14b"))
      [ 68 136 240 ]
    ;
    "mov al,r15b" = expect ''"mov al,r15b" to be correct [44 88 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "al" "r15b"))
      [ 68 136 248 ]
    ;
    "mov cl,al" = expect ''"mov cl,al" to be correct [88 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "al"))
      [ 136 193 ]
    ;
    "mov cl,cl" = expect ''"mov cl,cl" to be correct [88 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "cl"))
      [ 136 201 ]
    ;
    "mov cl,dl" = expect ''"mov cl,dl" to be correct [88 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "dl"))
      [ 136 209 ]
    ;
    "mov cl,bl" = expect ''"mov cl,bl" to be correct [88 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "bl"))
      [ 136 217 ]
    ;
    "mov cl,ah" = expect ''"mov cl,ah" to be correct [88 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "ah"))
      [ 136 225 ]
    ;
    "mov cl,ch" = expect ''"mov cl,ch" to be correct [88 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "ch"))
      [ 136 233 ]
    ;
    "mov cl,dh" = expect ''"mov cl,dh" to be correct [88 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "dh"))
      [ 136 241 ]
    ;
    "mov cl,bh" = expect ''"mov cl,bh" to be correct [88 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "bh"))
      [ 136 249 ]
    ;
    "mov cl,r8b" = expect ''"mov cl,r8b" to be correct [44 88 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "r8b"))
      [ 68 136 193 ]
    ;
    "mov cl,r9b" = expect ''"mov cl,r9b" to be correct [44 88 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "r9b"))
      [ 68 136 201 ]
    ;
    "mov cl,r10b" = expect ''"mov cl,r10b" to be correct [44 88 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "r10b"))
      [ 68 136 209 ]
    ;
    "mov cl,r11b" = expect ''"mov cl,r11b" to be correct [44 88 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "r11b"))
      [ 68 136 217 ]
    ;
    "mov cl,r12b" = expect ''"mov cl,r12b" to be correct [44 88 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "r12b"))
      [ 68 136 225 ]
    ;
    "mov cl,r13b" = expect ''"mov cl,r13b" to be correct [44 88 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "r13b"))
      [ 68 136 233 ]
    ;
    "mov cl,r14b" = expect ''"mov cl,r14b" to be correct [44 88 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "r14b"))
      [ 68 136 241 ]
    ;
    "mov cl,r15b" = expect ''"mov cl,r15b" to be correct [44 88 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cl" "r15b"))
      [ 68 136 249 ]
    ;
    "mov dl,al" = expect ''"mov dl,al" to be correct [88 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "al"))
      [ 136 194 ]
    ;
    "mov dl,cl" = expect ''"mov dl,cl" to be correct [88 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "cl"))
      [ 136 202 ]
    ;
    "mov dl,dl" = expect ''"mov dl,dl" to be correct [88 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "dl"))
      [ 136 210 ]
    ;
    "mov dl,bl" = expect ''"mov dl,bl" to be correct [88 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "bl"))
      [ 136 218 ]
    ;
    "mov dl,ah" = expect ''"mov dl,ah" to be correct [88 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "ah"))
      [ 136 226 ]
    ;
    "mov dl,ch" = expect ''"mov dl,ch" to be correct [88 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "ch"))
      [ 136 234 ]
    ;
    "mov dl,dh" = expect ''"mov dl,dh" to be correct [88 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "dh"))
      [ 136 242 ]
    ;
    "mov dl,bh" = expect ''"mov dl,bh" to be correct [88 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "bh"))
      [ 136 250 ]
    ;
    "mov dl,r8b" = expect ''"mov dl,r8b" to be correct [44 88 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "r8b"))
      [ 68 136 194 ]
    ;
    "mov dl,r9b" = expect ''"mov dl,r9b" to be correct [44 88 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "r9b"))
      [ 68 136 202 ]
    ;
    "mov dl,r10b" = expect ''"mov dl,r10b" to be correct [44 88 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "r10b"))
      [ 68 136 210 ]
    ;
    "mov dl,r11b" = expect ''"mov dl,r11b" to be correct [44 88 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "r11b"))
      [ 68 136 218 ]
    ;
    "mov dl,r12b" = expect ''"mov dl,r12b" to be correct [44 88 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "r12b"))
      [ 68 136 226 ]
    ;
    "mov dl,r13b" = expect ''"mov dl,r13b" to be correct [44 88 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "r13b"))
      [ 68 136 234 ]
    ;
    "mov dl,r14b" = expect ''"mov dl,r14b" to be correct [44 88 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "r14b"))
      [ 68 136 242 ]
    ;
    "mov dl,r15b" = expect ''"mov dl,r15b" to be correct [44 88 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dl" "r15b"))
      [ 68 136 250 ]
    ;
    "mov bl,al" = expect ''"mov bl,al" to be correct [88 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "al"))
      [ 136 195 ]
    ;
    "mov bl,cl" = expect ''"mov bl,cl" to be correct [88 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "cl"))
      [ 136 203 ]
    ;
    "mov bl,dl" = expect ''"mov bl,dl" to be correct [88 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "dl"))
      [ 136 211 ]
    ;
    "mov bl,bl" = expect ''"mov bl,bl" to be correct [88 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "bl"))
      [ 136 219 ]
    ;
    "mov bl,ah" = expect ''"mov bl,ah" to be correct [88 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "ah"))
      [ 136 227 ]
    ;
    "mov bl,ch" = expect ''"mov bl,ch" to be correct [88 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "ch"))
      [ 136 235 ]
    ;
    "mov bl,dh" = expect ''"mov bl,dh" to be correct [88 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "dh"))
      [ 136 243 ]
    ;
    "mov bl,bh" = expect ''"mov bl,bh" to be correct [88 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "bh"))
      [ 136 251 ]
    ;
    "mov bl,r8b" = expect ''"mov bl,r8b" to be correct [44 88 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "r8b"))
      [ 68 136 195 ]
    ;
    "mov bl,r9b" = expect ''"mov bl,r9b" to be correct [44 88 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "r9b"))
      [ 68 136 203 ]
    ;
    "mov bl,r10b" = expect ''"mov bl,r10b" to be correct [44 88 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "r10b"))
      [ 68 136 211 ]
    ;
    "mov bl,r11b" = expect ''"mov bl,r11b" to be correct [44 88 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "r11b"))
      [ 68 136 219 ]
    ;
    "mov bl,r12b" = expect ''"mov bl,r12b" to be correct [44 88 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "r12b"))
      [ 68 136 227 ]
    ;
    "mov bl,r13b" = expect ''"mov bl,r13b" to be correct [44 88 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "r13b"))
      [ 68 136 235 ]
    ;
    "mov bl,r14b" = expect ''"mov bl,r14b" to be correct [44 88 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "r14b"))
      [ 68 136 243 ]
    ;
    "mov bl,r15b" = expect ''"mov bl,r15b" to be correct [44 88 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bl" "r15b"))
      [ 68 136 251 ]
    ;
    "mov ah,al" = expect ''"mov ah,al" to be correct [88 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ah" "al"))
      [ 136 196 ]
    ;
    "mov ah,cl" = expect ''"mov ah,cl" to be correct [88 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ah" "cl"))
      [ 136 204 ]
    ;
    "mov ah,dl" = expect ''"mov ah,dl" to be correct [88 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ah" "dl"))
      [ 136 212 ]
    ;
    "mov ah,bl" = expect ''"mov ah,bl" to be correct [88 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ah" "bl"))
      [ 136 220 ]
    ;
    "mov ah,ah" = expect ''"mov ah,ah" to be correct [88 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ah" "ah"))
      [ 136 228 ]
    ;
    "mov ah,ch" = expect ''"mov ah,ch" to be correct [88 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ah" "ch"))
      [ 136 236 ]
    ;
    "mov ah,dh" = expect ''"mov ah,dh" to be correct [88 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ah" "dh"))
      [ 136 244 ]
    ;
    "mov ah,bh" = expect ''"mov ah,bh" to be correct [88 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ah" "bh"))
      [ 136 252 ]
    ;
    "mov spl,r8b" = expect ''"mov spl,r8b" to be correct [44 88 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "spl" "r8b"))
      [ 68 136 196 ]
    ;
    "mov spl,r9b" = expect ''"mov spl,r9b" to be correct [44 88 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "spl" "r9b"))
      [ 68 136 204 ]
    ;
    "mov spl,r10b" = expect ''"mov spl,r10b" to be correct [44 88 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "spl" "r10b"))
      [ 68 136 212 ]
    ;
    "mov spl,r11b" = expect ''"mov spl,r11b" to be correct [44 88 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "spl" "r11b"))
      [ 68 136 220 ]
    ;
    "mov spl,r12b" = expect ''"mov spl,r12b" to be correct [44 88 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "spl" "r12b"))
      [ 68 136 228 ]
    ;
    "mov spl,r13b" = expect ''"mov spl,r13b" to be correct [44 88 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "spl" "r13b"))
      [ 68 136 236 ]
    ;
    "mov spl,r14b" = expect ''"mov spl,r14b" to be correct [44 88 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "spl" "r14b"))
      [ 68 136 244 ]
    ;
    "mov spl,r15b" = expect ''"mov spl,r15b" to be correct [44 88 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "spl" "r15b"))
      [ 68 136 252 ]
    ;
    "mov ch,al" = expect ''"mov ch,al" to be correct [88 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ch" "al"))
      [ 136 197 ]
    ;
    "mov ch,cl" = expect ''"mov ch,cl" to be correct [88 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ch" "cl"))
      [ 136 205 ]
    ;
    "mov ch,dl" = expect ''"mov ch,dl" to be correct [88 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ch" "dl"))
      [ 136 213 ]
    ;
    "mov ch,bl" = expect ''"mov ch,bl" to be correct [88 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ch" "bl"))
      [ 136 221 ]
    ;
    "mov ch,ah" = expect ''"mov ch,ah" to be correct [88 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ch" "ah"))
      [ 136 229 ]
    ;
    "mov ch,ch" = expect ''"mov ch,ch" to be correct [88 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ch" "ch"))
      [ 136 237 ]
    ;
    "mov ch,dh" = expect ''"mov ch,dh" to be correct [88 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ch" "dh"))
      [ 136 245 ]
    ;
    "mov ch,bh" = expect ''"mov ch,bh" to be correct [88 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ch" "bh"))
      [ 136 253 ]
    ;
    "mov bpl,r8b" = expect ''"mov bpl,r8b" to be correct [44 88 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bpl" "r8b"))
      [ 68 136 197 ]
    ;
    "mov bpl,r9b" = expect ''"mov bpl,r9b" to be correct [44 88 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bpl" "r9b"))
      [ 68 136 205 ]
    ;
    "mov bpl,r10b" = expect ''"mov bpl,r10b" to be correct [44 88 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bpl" "r10b"))
      [ 68 136 213 ]
    ;
    "mov bpl,r11b" = expect ''"mov bpl,r11b" to be correct [44 88 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bpl" "r11b"))
      [ 68 136 221 ]
    ;
    "mov bpl,r12b" = expect ''"mov bpl,r12b" to be correct [44 88 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bpl" "r12b"))
      [ 68 136 229 ]
    ;
    "mov bpl,r13b" = expect ''"mov bpl,r13b" to be correct [44 88 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bpl" "r13b"))
      [ 68 136 237 ]
    ;
    "mov bpl,r14b" = expect ''"mov bpl,r14b" to be correct [44 88 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bpl" "r14b"))
      [ 68 136 245 ]
    ;
    "mov bpl,r15b" = expect ''"mov bpl,r15b" to be correct [44 88 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bpl" "r15b"))
      [ 68 136 253 ]
    ;
    "mov dh,al" = expect ''"mov dh,al" to be correct [88 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dh" "al"))
      [ 136 198 ]
    ;
    "mov dh,cl" = expect ''"mov dh,cl" to be correct [88 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dh" "cl"))
      [ 136 206 ]
    ;
    "mov dh,dl" = expect ''"mov dh,dl" to be correct [88 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dh" "dl"))
      [ 136 214 ]
    ;
    "mov dh,bl" = expect ''"mov dh,bl" to be correct [88 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dh" "bl"))
      [ 136 222 ]
    ;
    "mov dh,ah" = expect ''"mov dh,ah" to be correct [88 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dh" "ah"))
      [ 136 230 ]
    ;
    "mov dh,ch" = expect ''"mov dh,ch" to be correct [88 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dh" "ch"))
      [ 136 238 ]
    ;
    "mov dh,dh" = expect ''"mov dh,dh" to be correct [88 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dh" "dh"))
      [ 136 246 ]
    ;
    "mov dh,bh" = expect ''"mov dh,bh" to be correct [88 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dh" "bh"))
      [ 136 254 ]
    ;
    "mov sil,r8b" = expect ''"mov sil,r8b" to be correct [44 88 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sil" "r8b"))
      [ 68 136 198 ]
    ;
    "mov sil,r9b" = expect ''"mov sil,r9b" to be correct [44 88 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sil" "r9b"))
      [ 68 136 206 ]
    ;
    "mov sil,r10b" = expect ''"mov sil,r10b" to be correct [44 88 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sil" "r10b"))
      [ 68 136 214 ]
    ;
    "mov sil,r11b" = expect ''"mov sil,r11b" to be correct [44 88 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sil" "r11b"))
      [ 68 136 222 ]
    ;
    "mov sil,r12b" = expect ''"mov sil,r12b" to be correct [44 88 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sil" "r12b"))
      [ 68 136 230 ]
    ;
    "mov sil,r13b" = expect ''"mov sil,r13b" to be correct [44 88 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sil" "r13b"))
      [ 68 136 238 ]
    ;
    "mov sil,r14b" = expect ''"mov sil,r14b" to be correct [44 88 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sil" "r14b"))
      [ 68 136 246 ]
    ;
    "mov sil,r15b" = expect ''"mov sil,r15b" to be correct [44 88 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sil" "r15b"))
      [ 68 136 254 ]
    ;
    "mov bh,al" = expect ''"mov bh,al" to be correct [88 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bh" "al"))
      [ 136 199 ]
    ;
    "mov bh,cl" = expect ''"mov bh,cl" to be correct [88 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bh" "cl"))
      [ 136 207 ]
    ;
    "mov bh,dl" = expect ''"mov bh,dl" to be correct [88 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bh" "dl"))
      [ 136 215 ]
    ;
    "mov bh,bl" = expect ''"mov bh,bl" to be correct [88 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bh" "bl"))
      [ 136 223 ]
    ;
    "mov bh,ah" = expect ''"mov bh,ah" to be correct [88 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bh" "ah"))
      [ 136 231 ]
    ;
    "mov bh,ch" = expect ''"mov bh,ch" to be correct [88 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bh" "ch"))
      [ 136 239 ]
    ;
    "mov bh,dh" = expect ''"mov bh,dh" to be correct [88 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bh" "dh"))
      [ 136 247 ]
    ;
    "mov bh,bh" = expect ''"mov bh,bh" to be correct [88 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bh" "bh"))
      [ 136 255 ]
    ;
    "mov dil,r8b" = expect ''"mov dil,r8b" to be correct [44 88 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dil" "r8b"))
      [ 68 136 199 ]
    ;
    "mov dil,r9b" = expect ''"mov dil,r9b" to be correct [44 88 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dil" "r9b"))
      [ 68 136 207 ]
    ;
    "mov dil,r10b" = expect ''"mov dil,r10b" to be correct [44 88 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dil" "r10b"))
      [ 68 136 215 ]
    ;
    "mov dil,r11b" = expect ''"mov dil,r11b" to be correct [44 88 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dil" "r11b"))
      [ 68 136 223 ]
    ;
    "mov dil,r12b" = expect ''"mov dil,r12b" to be correct [44 88 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dil" "r12b"))
      [ 68 136 231 ]
    ;
    "mov dil,r13b" = expect ''"mov dil,r13b" to be correct [44 88 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dil" "r13b"))
      [ 68 136 239 ]
    ;
    "mov dil,r14b" = expect ''"mov dil,r14b" to be correct [44 88 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dil" "r14b"))
      [ 68 136 247 ]
    ;
    "mov dil,r15b" = expect ''"mov dil,r15b" to be correct [44 88 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dil" "r15b"))
      [ 68 136 255 ]
    ;
    "mov ax,ax" = expect ''"mov ax,ax" to be correct [66 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "ax"))
      [ 102 137 192 ]
    ;
    "mov ax,cx" = expect ''"mov ax,cx" to be correct [66 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "cx"))
      [ 102 137 200 ]
    ;
    "mov ax,dx" = expect ''"mov ax,dx" to be correct [66 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "dx"))
      [ 102 137 208 ]
    ;
    "mov ax,bx" = expect ''"mov ax,bx" to be correct [66 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "bx"))
      [ 102 137 216 ]
    ;
    "mov ax,sp" = expect ''"mov ax,sp" to be correct [66 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "sp"))
      [ 102 137 224 ]
    ;
    "mov ax,bp" = expect ''"mov ax,bp" to be correct [66 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "bp"))
      [ 102 137 232 ]
    ;
    "mov ax,si" = expect ''"mov ax,si" to be correct [66 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "si"))
      [ 102 137 240 ]
    ;
    "mov ax,di" = expect ''"mov ax,di" to be correct [66 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "di"))
      [ 102 137 248 ]
    ;
    "mov ax,r8w" = expect ''"mov ax,r8w" to be correct [66 44 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "r8w"))
      [ 102 68 137 192 ]
    ;
    "mov ax,r9w" = expect ''"mov ax,r9w" to be correct [66 44 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "r9w"))
      [ 102 68 137 200 ]
    ;
    "mov ax,r10w" = expect ''"mov ax,r10w" to be correct [66 44 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "r10w"))
      [ 102 68 137 208 ]
    ;
    "mov ax,r11w" = expect ''"mov ax,r11w" to be correct [66 44 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "r11w"))
      [ 102 68 137 216 ]
    ;
    "mov ax,r12w" = expect ''"mov ax,r12w" to be correct [66 44 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "r12w"))
      [ 102 68 137 224 ]
    ;
    "mov ax,r13w" = expect ''"mov ax,r13w" to be correct [66 44 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "r13w"))
      [ 102 68 137 232 ]
    ;
    "mov ax,r14w" = expect ''"mov ax,r14w" to be correct [66 44 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "r14w"))
      [ 102 68 137 240 ]
    ;
    "mov ax,r15w" = expect ''"mov ax,r15w" to be correct [66 44 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ax" "r15w"))
      [ 102 68 137 248 ]
    ;
    "mov cx,ax" = expect ''"mov cx,ax" to be correct [66 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "ax"))
      [ 102 137 193 ]
    ;
    "mov cx,cx" = expect ''"mov cx,cx" to be correct [66 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "cx"))
      [ 102 137 201 ]
    ;
    "mov cx,dx" = expect ''"mov cx,dx" to be correct [66 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "dx"))
      [ 102 137 209 ]
    ;
    "mov cx,bx" = expect ''"mov cx,bx" to be correct [66 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "bx"))
      [ 102 137 217 ]
    ;
    "mov cx,sp" = expect ''"mov cx,sp" to be correct [66 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "sp"))
      [ 102 137 225 ]
    ;
    "mov cx,bp" = expect ''"mov cx,bp" to be correct [66 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "bp"))
      [ 102 137 233 ]
    ;
    "mov cx,si" = expect ''"mov cx,si" to be correct [66 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "si"))
      [ 102 137 241 ]
    ;
    "mov cx,di" = expect ''"mov cx,di" to be correct [66 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "di"))
      [ 102 137 249 ]
    ;
    "mov cx,r8w" = expect ''"mov cx,r8w" to be correct [66 44 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "r8w"))
      [ 102 68 137 193 ]
    ;
    "mov cx,r9w" = expect ''"mov cx,r9w" to be correct [66 44 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "r9w"))
      [ 102 68 137 201 ]
    ;
    "mov cx,r10w" = expect ''"mov cx,r10w" to be correct [66 44 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "r10w"))
      [ 102 68 137 209 ]
    ;
    "mov cx,r11w" = expect ''"mov cx,r11w" to be correct [66 44 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "r11w"))
      [ 102 68 137 217 ]
    ;
    "mov cx,r12w" = expect ''"mov cx,r12w" to be correct [66 44 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "r12w"))
      [ 102 68 137 225 ]
    ;
    "mov cx,r13w" = expect ''"mov cx,r13w" to be correct [66 44 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "r13w"))
      [ 102 68 137 233 ]
    ;
    "mov cx,r14w" = expect ''"mov cx,r14w" to be correct [66 44 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "r14w"))
      [ 102 68 137 241 ]
    ;
    "mov cx,r15w" = expect ''"mov cx,r15w" to be correct [66 44 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "cx" "r15w"))
      [ 102 68 137 249 ]
    ;
    "mov dx,ax" = expect ''"mov dx,ax" to be correct [66 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "ax"))
      [ 102 137 194 ]
    ;
    "mov dx,cx" = expect ''"mov dx,cx" to be correct [66 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "cx"))
      [ 102 137 202 ]
    ;
    "mov dx,dx" = expect ''"mov dx,dx" to be correct [66 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "dx"))
      [ 102 137 210 ]
    ;
    "mov dx,bx" = expect ''"mov dx,bx" to be correct [66 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "bx"))
      [ 102 137 218 ]
    ;
    "mov dx,sp" = expect ''"mov dx,sp" to be correct [66 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "sp"))
      [ 102 137 226 ]
    ;
    "mov dx,bp" = expect ''"mov dx,bp" to be correct [66 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "bp"))
      [ 102 137 234 ]
    ;
    "mov dx,si" = expect ''"mov dx,si" to be correct [66 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "si"))
      [ 102 137 242 ]
    ;
    "mov dx,di" = expect ''"mov dx,di" to be correct [66 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "di"))
      [ 102 137 250 ]
    ;
    "mov dx,r8w" = expect ''"mov dx,r8w" to be correct [66 44 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "r8w"))
      [ 102 68 137 194 ]
    ;
    "mov dx,r9w" = expect ''"mov dx,r9w" to be correct [66 44 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "r9w"))
      [ 102 68 137 202 ]
    ;
    "mov dx,r10w" = expect ''"mov dx,r10w" to be correct [66 44 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "r10w"))
      [ 102 68 137 210 ]
    ;
    "mov dx,r11w" = expect ''"mov dx,r11w" to be correct [66 44 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "r11w"))
      [ 102 68 137 218 ]
    ;
    "mov dx,r12w" = expect ''"mov dx,r12w" to be correct [66 44 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "r12w"))
      [ 102 68 137 226 ]
    ;
    "mov dx,r13w" = expect ''"mov dx,r13w" to be correct [66 44 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "r13w"))
      [ 102 68 137 234 ]
    ;
    "mov dx,r14w" = expect ''"mov dx,r14w" to be correct [66 44 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "r14w"))
      [ 102 68 137 242 ]
    ;
    "mov dx,r15w" = expect ''"mov dx,r15w" to be correct [66 44 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "dx" "r15w"))
      [ 102 68 137 250 ]
    ;
    "mov bx,ax" = expect ''"mov bx,ax" to be correct [66 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "ax"))
      [ 102 137 195 ]
    ;
    "mov bx,cx" = expect ''"mov bx,cx" to be correct [66 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "cx"))
      [ 102 137 203 ]
    ;
    "mov bx,dx" = expect ''"mov bx,dx" to be correct [66 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "dx"))
      [ 102 137 211 ]
    ;
    "mov bx,bx" = expect ''"mov bx,bx" to be correct [66 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "bx"))
      [ 102 137 219 ]
    ;
    "mov bx,sp" = expect ''"mov bx,sp" to be correct [66 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "sp"))
      [ 102 137 227 ]
    ;
    "mov bx,bp" = expect ''"mov bx,bp" to be correct [66 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "bp"))
      [ 102 137 235 ]
    ;
    "mov bx,si" = expect ''"mov bx,si" to be correct [66 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "si"))
      [ 102 137 243 ]
    ;
    "mov bx,di" = expect ''"mov bx,di" to be correct [66 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "di"))
      [ 102 137 251 ]
    ;
    "mov bx,r8w" = expect ''"mov bx,r8w" to be correct [66 44 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "r8w"))
      [ 102 68 137 195 ]
    ;
    "mov bx,r9w" = expect ''"mov bx,r9w" to be correct [66 44 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "r9w"))
      [ 102 68 137 203 ]
    ;
    "mov bx,r10w" = expect ''"mov bx,r10w" to be correct [66 44 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "r10w"))
      [ 102 68 137 211 ]
    ;
    "mov bx,r11w" = expect ''"mov bx,r11w" to be correct [66 44 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "r11w"))
      [ 102 68 137 219 ]
    ;
    "mov bx,r12w" = expect ''"mov bx,r12w" to be correct [66 44 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "r12w"))
      [ 102 68 137 227 ]
    ;
    "mov bx,r13w" = expect ''"mov bx,r13w" to be correct [66 44 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "r13w"))
      [ 102 68 137 235 ]
    ;
    "mov bx,r14w" = expect ''"mov bx,r14w" to be correct [66 44 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "r14w"))
      [ 102 68 137 243 ]
    ;
    "mov bx,r15w" = expect ''"mov bx,r15w" to be correct [66 44 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bx" "r15w"))
      [ 102 68 137 251 ]
    ;
    "mov sp,ax" = expect ''"mov sp,ax" to be correct [66 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "ax"))
      [ 102 137 196 ]
    ;
    "mov sp,cx" = expect ''"mov sp,cx" to be correct [66 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "cx"))
      [ 102 137 204 ]
    ;
    "mov sp,dx" = expect ''"mov sp,dx" to be correct [66 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "dx"))
      [ 102 137 212 ]
    ;
    "mov sp,bx" = expect ''"mov sp,bx" to be correct [66 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "bx"))
      [ 102 137 220 ]
    ;
    "mov sp,sp" = expect ''"mov sp,sp" to be correct [66 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "sp"))
      [ 102 137 228 ]
    ;
    "mov sp,bp" = expect ''"mov sp,bp" to be correct [66 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "bp"))
      [ 102 137 236 ]
    ;
    "mov sp,si" = expect ''"mov sp,si" to be correct [66 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "si"))
      [ 102 137 244 ]
    ;
    "mov sp,di" = expect ''"mov sp,di" to be correct [66 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "di"))
      [ 102 137 252 ]
    ;
    "mov sp,r8w" = expect ''"mov sp,r8w" to be correct [66 44 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "r8w"))
      [ 102 68 137 196 ]
    ;
    "mov sp,r9w" = expect ''"mov sp,r9w" to be correct [66 44 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "r9w"))
      [ 102 68 137 204 ]
    ;
    "mov sp,r10w" = expect ''"mov sp,r10w" to be correct [66 44 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "r10w"))
      [ 102 68 137 212 ]
    ;
    "mov sp,r11w" = expect ''"mov sp,r11w" to be correct [66 44 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "r11w"))
      [ 102 68 137 220 ]
    ;
    "mov sp,r12w" = expect ''"mov sp,r12w" to be correct [66 44 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "r12w"))
      [ 102 68 137 228 ]
    ;
    "mov sp,r13w" = expect ''"mov sp,r13w" to be correct [66 44 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "r13w"))
      [ 102 68 137 236 ]
    ;
    "mov sp,r14w" = expect ''"mov sp,r14w" to be correct [66 44 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "r14w"))
      [ 102 68 137 244 ]
    ;
    "mov sp,r15w" = expect ''"mov sp,r15w" to be correct [66 44 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "sp" "r15w"))
      [ 102 68 137 252 ]
    ;
    "mov bp,ax" = expect ''"mov bp,ax" to be correct [66 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "ax"))
      [ 102 137 197 ]
    ;
    "mov bp,cx" = expect ''"mov bp,cx" to be correct [66 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "cx"))
      [ 102 137 205 ]
    ;
    "mov bp,dx" = expect ''"mov bp,dx" to be correct [66 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "dx"))
      [ 102 137 213 ]
    ;
    "mov bp,bx" = expect ''"mov bp,bx" to be correct [66 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "bx"))
      [ 102 137 221 ]
    ;
    "mov bp,sp" = expect ''"mov bp,sp" to be correct [66 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "sp"))
      [ 102 137 229 ]
    ;
    "mov bp,bp" = expect ''"mov bp,bp" to be correct [66 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "bp"))
      [ 102 137 237 ]
    ;
    "mov bp,si" = expect ''"mov bp,si" to be correct [66 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "si"))
      [ 102 137 245 ]
    ;
    "mov bp,di" = expect ''"mov bp,di" to be correct [66 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "di"))
      [ 102 137 253 ]
    ;
    "mov bp,r8w" = expect ''"mov bp,r8w" to be correct [66 44 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "r8w"))
      [ 102 68 137 197 ]
    ;
    "mov bp,r9w" = expect ''"mov bp,r9w" to be correct [66 44 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "r9w"))
      [ 102 68 137 205 ]
    ;
    "mov bp,r10w" = expect ''"mov bp,r10w" to be correct [66 44 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "r10w"))
      [ 102 68 137 213 ]
    ;
    "mov bp,r11w" = expect ''"mov bp,r11w" to be correct [66 44 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "r11w"))
      [ 102 68 137 221 ]
    ;
    "mov bp,r12w" = expect ''"mov bp,r12w" to be correct [66 44 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "r12w"))
      [ 102 68 137 229 ]
    ;
    "mov bp,r13w" = expect ''"mov bp,r13w" to be correct [66 44 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "r13w"))
      [ 102 68 137 237 ]
    ;
    "mov bp,r14w" = expect ''"mov bp,r14w" to be correct [66 44 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "r14w"))
      [ 102 68 137 245 ]
    ;
    "mov bp,r15w" = expect ''"mov bp,r15w" to be correct [66 44 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "bp" "r15w"))
      [ 102 68 137 253 ]
    ;
    "mov si,ax" = expect ''"mov si,ax" to be correct [66 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "ax"))
      [ 102 137 198 ]
    ;
    "mov si,cx" = expect ''"mov si,cx" to be correct [66 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "cx"))
      [ 102 137 206 ]
    ;
    "mov si,dx" = expect ''"mov si,dx" to be correct [66 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "dx"))
      [ 102 137 214 ]
    ;
    "mov si,bx" = expect ''"mov si,bx" to be correct [66 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "bx"))
      [ 102 137 222 ]
    ;
    "mov si,sp" = expect ''"mov si,sp" to be correct [66 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "sp"))
      [ 102 137 230 ]
    ;
    "mov si,bp" = expect ''"mov si,bp" to be correct [66 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "bp"))
      [ 102 137 238 ]
    ;
    "mov si,si" = expect ''"mov si,si" to be correct [66 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "si"))
      [ 102 137 246 ]
    ;
    "mov si,di" = expect ''"mov si,di" to be correct [66 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "di"))
      [ 102 137 254 ]
    ;
    "mov si,r8w" = expect ''"mov si,r8w" to be correct [66 44 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "r8w"))
      [ 102 68 137 198 ]
    ;
    "mov si,r9w" = expect ''"mov si,r9w" to be correct [66 44 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "r9w"))
      [ 102 68 137 206 ]
    ;
    "mov si,r10w" = expect ''"mov si,r10w" to be correct [66 44 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "r10w"))
      [ 102 68 137 214 ]
    ;
    "mov si,r11w" = expect ''"mov si,r11w" to be correct [66 44 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "r11w"))
      [ 102 68 137 222 ]
    ;
    "mov si,r12w" = expect ''"mov si,r12w" to be correct [66 44 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "r12w"))
      [ 102 68 137 230 ]
    ;
    "mov si,r13w" = expect ''"mov si,r13w" to be correct [66 44 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "r13w"))
      [ 102 68 137 238 ]
    ;
    "mov si,r14w" = expect ''"mov si,r14w" to be correct [66 44 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "r14w"))
      [ 102 68 137 246 ]
    ;
    "mov si,r15w" = expect ''"mov si,r15w" to be correct [66 44 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "si" "r15w"))
      [ 102 68 137 254 ]
    ;
    "mov di,ax" = expect ''"mov di,ax" to be correct [66 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "ax"))
      [ 102 137 199 ]
    ;
    "mov di,cx" = expect ''"mov di,cx" to be correct [66 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "cx"))
      [ 102 137 207 ]
    ;
    "mov di,dx" = expect ''"mov di,dx" to be correct [66 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "dx"))
      [ 102 137 215 ]
    ;
    "mov di,bx" = expect ''"mov di,bx" to be correct [66 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "bx"))
      [ 102 137 223 ]
    ;
    "mov di,sp" = expect ''"mov di,sp" to be correct [66 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "sp"))
      [ 102 137 231 ]
    ;
    "mov di,bp" = expect ''"mov di,bp" to be correct [66 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "bp"))
      [ 102 137 239 ]
    ;
    "mov di,si" = expect ''"mov di,si" to be correct [66 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "si"))
      [ 102 137 247 ]
    ;
    "mov di,di" = expect ''"mov di,di" to be correct [66 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "di"))
      [ 102 137 255 ]
    ;
    "mov di,r8w" = expect ''"mov di,r8w" to be correct [66 44 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "r8w"))
      [ 102 68 137 199 ]
    ;
    "mov di,r9w" = expect ''"mov di,r9w" to be correct [66 44 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "r9w"))
      [ 102 68 137 207 ]
    ;
    "mov di,r10w" = expect ''"mov di,r10w" to be correct [66 44 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "r10w"))
      [ 102 68 137 215 ]
    ;
    "mov di,r11w" = expect ''"mov di,r11w" to be correct [66 44 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "r11w"))
      [ 102 68 137 223 ]
    ;
    "mov di,r12w" = expect ''"mov di,r12w" to be correct [66 44 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "r12w"))
      [ 102 68 137 231 ]
    ;
    "mov di,r13w" = expect ''"mov di,r13w" to be correct [66 44 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "r13w"))
      [ 102 68 137 239 ]
    ;
    "mov di,r14w" = expect ''"mov di,r14w" to be correct [66 44 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "r14w"))
      [ 102 68 137 247 ]
    ;
    "mov di,r15w" = expect ''"mov di,r15w" to be correct [66 44 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "di" "r15w"))
      [ 102 68 137 255 ]
    ;
    "mov eax,eax" = expect ''"mov eax,eax" to be correct [89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "eax"))
      [ 137 192 ]
    ;
    "mov eax,ecx" = expect ''"mov eax,ecx" to be correct [89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "ecx"))
      [ 137 200 ]
    ;
    "mov eax,edx" = expect ''"mov eax,edx" to be correct [89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "edx"))
      [ 137 208 ]
    ;
    "mov eax,ebx" = expect ''"mov eax,ebx" to be correct [89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "ebx"))
      [ 137 216 ]
    ;
    "mov eax,esp" = expect ''"mov eax,esp" to be correct [89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "esp"))
      [ 137 224 ]
    ;
    "mov eax,ebp" = expect ''"mov eax,ebp" to be correct [89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "ebp"))
      [ 137 232 ]
    ;
    "mov eax,esi" = expect ''"mov eax,esi" to be correct [89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "esi"))
      [ 137 240 ]
    ;
    "mov eax,edi" = expect ''"mov eax,edi" to be correct [89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "edi"))
      [ 137 248 ]
    ;
    "mov eax,r8d" = expect ''"mov eax,r8d" to be correct [44 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "r8d"))
      [ 68 137 192 ]
    ;
    "mov eax,r9d" = expect ''"mov eax,r9d" to be correct [44 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "r9d"))
      [ 68 137 200 ]
    ;
    "mov eax,r10d" = expect ''"mov eax,r10d" to be correct [44 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "r10d"))
      [ 68 137 208 ]
    ;
    "mov eax,r11d" = expect ''"mov eax,r11d" to be correct [44 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "r11d"))
      [ 68 137 216 ]
    ;
    "mov eax,r12d" = expect ''"mov eax,r12d" to be correct [44 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "r12d"))
      [ 68 137 224 ]
    ;
    "mov eax,r13d" = expect ''"mov eax,r13d" to be correct [44 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "r13d"))
      [ 68 137 232 ]
    ;
    "mov eax,r14d" = expect ''"mov eax,r14d" to be correct [44 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "r14d"))
      [ 68 137 240 ]
    ;
    "mov eax,r15d" = expect ''"mov eax,r15d" to be correct [44 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "eax" "r15d"))
      [ 68 137 248 ]
    ;
    "mov ecx,eax" = expect ''"mov ecx,eax" to be correct [89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "eax"))
      [ 137 193 ]
    ;
    "mov ecx,ecx" = expect ''"mov ecx,ecx" to be correct [89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "ecx"))
      [ 137 201 ]
    ;
    "mov ecx,edx" = expect ''"mov ecx,edx" to be correct [89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "edx"))
      [ 137 209 ]
    ;
    "mov ecx,ebx" = expect ''"mov ecx,ebx" to be correct [89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "ebx"))
      [ 137 217 ]
    ;
    "mov ecx,esp" = expect ''"mov ecx,esp" to be correct [89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "esp"))
      [ 137 225 ]
    ;
    "mov ecx,ebp" = expect ''"mov ecx,ebp" to be correct [89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "ebp"))
      [ 137 233 ]
    ;
    "mov ecx,esi" = expect ''"mov ecx,esi" to be correct [89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "esi"))
      [ 137 241 ]
    ;
    "mov ecx,edi" = expect ''"mov ecx,edi" to be correct [89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "edi"))
      [ 137 249 ]
    ;
    "mov ecx,r8d" = expect ''"mov ecx,r8d" to be correct [44 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "r8d"))
      [ 68 137 193 ]
    ;
    "mov ecx,r9d" = expect ''"mov ecx,r9d" to be correct [44 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "r9d"))
      [ 68 137 201 ]
    ;
    "mov ecx,r10d" = expect ''"mov ecx,r10d" to be correct [44 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "r10d"))
      [ 68 137 209 ]
    ;
    "mov ecx,r11d" = expect ''"mov ecx,r11d" to be correct [44 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "r11d"))
      [ 68 137 217 ]
    ;
    "mov ecx,r12d" = expect ''"mov ecx,r12d" to be correct [44 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "r12d"))
      [ 68 137 225 ]
    ;
    "mov ecx,r13d" = expect ''"mov ecx,r13d" to be correct [44 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "r13d"))
      [ 68 137 233 ]
    ;
    "mov ecx,r14d" = expect ''"mov ecx,r14d" to be correct [44 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "r14d"))
      [ 68 137 241 ]
    ;
    "mov ecx,r15d" = expect ''"mov ecx,r15d" to be correct [44 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ecx" "r15d"))
      [ 68 137 249 ]
    ;
    "mov edx,eax" = expect ''"mov edx,eax" to be correct [89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "eax"))
      [ 137 194 ]
    ;
    "mov edx,ecx" = expect ''"mov edx,ecx" to be correct [89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "ecx"))
      [ 137 202 ]
    ;
    "mov edx,edx" = expect ''"mov edx,edx" to be correct [89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "edx"))
      [ 137 210 ]
    ;
    "mov edx,ebx" = expect ''"mov edx,ebx" to be correct [89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "ebx"))
      [ 137 218 ]
    ;
    "mov edx,esp" = expect ''"mov edx,esp" to be correct [89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "esp"))
      [ 137 226 ]
    ;
    "mov edx,ebp" = expect ''"mov edx,ebp" to be correct [89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "ebp"))
      [ 137 234 ]
    ;
    "mov edx,esi" = expect ''"mov edx,esi" to be correct [89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "esi"))
      [ 137 242 ]
    ;
    "mov edx,edi" = expect ''"mov edx,edi" to be correct [89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "edi"))
      [ 137 250 ]
    ;
    "mov edx,r8d" = expect ''"mov edx,r8d" to be correct [44 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "r8d"))
      [ 68 137 194 ]
    ;
    "mov edx,r9d" = expect ''"mov edx,r9d" to be correct [44 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "r9d"))
      [ 68 137 202 ]
    ;
    "mov edx,r10d" = expect ''"mov edx,r10d" to be correct [44 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "r10d"))
      [ 68 137 210 ]
    ;
    "mov edx,r11d" = expect ''"mov edx,r11d" to be correct [44 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "r11d"))
      [ 68 137 218 ]
    ;
    "mov edx,r12d" = expect ''"mov edx,r12d" to be correct [44 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "r12d"))
      [ 68 137 226 ]
    ;
    "mov edx,r13d" = expect ''"mov edx,r13d" to be correct [44 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "r13d"))
      [ 68 137 234 ]
    ;
    "mov edx,r14d" = expect ''"mov edx,r14d" to be correct [44 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "r14d"))
      [ 68 137 242 ]
    ;
    "mov edx,r15d" = expect ''"mov edx,r15d" to be correct [44 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edx" "r15d"))
      [ 68 137 250 ]
    ;
    "mov ebx,eax" = expect ''"mov ebx,eax" to be correct [89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "eax"))
      [ 137 195 ]
    ;
    "mov ebx,ecx" = expect ''"mov ebx,ecx" to be correct [89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "ecx"))
      [ 137 203 ]
    ;
    "mov ebx,edx" = expect ''"mov ebx,edx" to be correct [89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "edx"))
      [ 137 211 ]
    ;
    "mov ebx,ebx" = expect ''"mov ebx,ebx" to be correct [89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "ebx"))
      [ 137 219 ]
    ;
    "mov ebx,esp" = expect ''"mov ebx,esp" to be correct [89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "esp"))
      [ 137 227 ]
    ;
    "mov ebx,ebp" = expect ''"mov ebx,ebp" to be correct [89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "ebp"))
      [ 137 235 ]
    ;
    "mov ebx,esi" = expect ''"mov ebx,esi" to be correct [89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "esi"))
      [ 137 243 ]
    ;
    "mov ebx,edi" = expect ''"mov ebx,edi" to be correct [89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "edi"))
      [ 137 251 ]
    ;
    "mov ebx,r8d" = expect ''"mov ebx,r8d" to be correct [44 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "r8d"))
      [ 68 137 195 ]
    ;
    "mov ebx,r9d" = expect ''"mov ebx,r9d" to be correct [44 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "r9d"))
      [ 68 137 203 ]
    ;
    "mov ebx,r10d" = expect ''"mov ebx,r10d" to be correct [44 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "r10d"))
      [ 68 137 211 ]
    ;
    "mov ebx,r11d" = expect ''"mov ebx,r11d" to be correct [44 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "r11d"))
      [ 68 137 219 ]
    ;
    "mov ebx,r12d" = expect ''"mov ebx,r12d" to be correct [44 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "r12d"))
      [ 68 137 227 ]
    ;
    "mov ebx,r13d" = expect ''"mov ebx,r13d" to be correct [44 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "r13d"))
      [ 68 137 235 ]
    ;
    "mov ebx,r14d" = expect ''"mov ebx,r14d" to be correct [44 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "r14d"))
      [ 68 137 243 ]
    ;
    "mov ebx,r15d" = expect ''"mov ebx,r15d" to be correct [44 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebx" "r15d"))
      [ 68 137 251 ]
    ;
    "mov esp,eax" = expect ''"mov esp,eax" to be correct [89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "eax"))
      [ 137 196 ]
    ;
    "mov esp,ecx" = expect ''"mov esp,ecx" to be correct [89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "ecx"))
      [ 137 204 ]
    ;
    "mov esp,edx" = expect ''"mov esp,edx" to be correct [89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "edx"))
      [ 137 212 ]
    ;
    "mov esp,ebx" = expect ''"mov esp,ebx" to be correct [89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "ebx"))
      [ 137 220 ]
    ;
    "mov esp,esp" = expect ''"mov esp,esp" to be correct [89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "esp"))
      [ 137 228 ]
    ;
    "mov esp,ebp" = expect ''"mov esp,ebp" to be correct [89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "ebp"))
      [ 137 236 ]
    ;
    "mov esp,esi" = expect ''"mov esp,esi" to be correct [89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "esi"))
      [ 137 244 ]
    ;
    "mov esp,edi" = expect ''"mov esp,edi" to be correct [89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "edi"))
      [ 137 252 ]
    ;
    "mov esp,r8d" = expect ''"mov esp,r8d" to be correct [44 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "r8d"))
      [ 68 137 196 ]
    ;
    "mov esp,r9d" = expect ''"mov esp,r9d" to be correct [44 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "r9d"))
      [ 68 137 204 ]
    ;
    "mov esp,r10d" = expect ''"mov esp,r10d" to be correct [44 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "r10d"))
      [ 68 137 212 ]
    ;
    "mov esp,r11d" = expect ''"mov esp,r11d" to be correct [44 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "r11d"))
      [ 68 137 220 ]
    ;
    "mov esp,r12d" = expect ''"mov esp,r12d" to be correct [44 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "r12d"))
      [ 68 137 228 ]
    ;
    "mov esp,r13d" = expect ''"mov esp,r13d" to be correct [44 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "r13d"))
      [ 68 137 236 ]
    ;
    "mov esp,r14d" = expect ''"mov esp,r14d" to be correct [44 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "r14d"))
      [ 68 137 244 ]
    ;
    "mov esp,r15d" = expect ''"mov esp,r15d" to be correct [44 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esp" "r15d"))
      [ 68 137 252 ]
    ;
    "mov ebp,eax" = expect ''"mov ebp,eax" to be correct [89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "eax"))
      [ 137 197 ]
    ;
    "mov ebp,ecx" = expect ''"mov ebp,ecx" to be correct [89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "ecx"))
      [ 137 205 ]
    ;
    "mov ebp,edx" = expect ''"mov ebp,edx" to be correct [89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "edx"))
      [ 137 213 ]
    ;
    "mov ebp,ebx" = expect ''"mov ebp,ebx" to be correct [89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "ebx"))
      [ 137 221 ]
    ;
    "mov ebp,esp" = expect ''"mov ebp,esp" to be correct [89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "esp"))
      [ 137 229 ]
    ;
    "mov ebp,ebp" = expect ''"mov ebp,ebp" to be correct [89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "ebp"))
      [ 137 237 ]
    ;
    "mov ebp,esi" = expect ''"mov ebp,esi" to be correct [89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "esi"))
      [ 137 245 ]
    ;
    "mov ebp,edi" = expect ''"mov ebp,edi" to be correct [89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "edi"))
      [ 137 253 ]
    ;
    "mov ebp,r8d" = expect ''"mov ebp,r8d" to be correct [44 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "r8d"))
      [ 68 137 197 ]
    ;
    "mov ebp,r9d" = expect ''"mov ebp,r9d" to be correct [44 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "r9d"))
      [ 68 137 205 ]
    ;
    "mov ebp,r10d" = expect ''"mov ebp,r10d" to be correct [44 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "r10d"))
      [ 68 137 213 ]
    ;
    "mov ebp,r11d" = expect ''"mov ebp,r11d" to be correct [44 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "r11d"))
      [ 68 137 221 ]
    ;
    "mov ebp,r12d" = expect ''"mov ebp,r12d" to be correct [44 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "r12d"))
      [ 68 137 229 ]
    ;
    "mov ebp,r13d" = expect ''"mov ebp,r13d" to be correct [44 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "r13d"))
      [ 68 137 237 ]
    ;
    "mov ebp,r14d" = expect ''"mov ebp,r14d" to be correct [44 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "r14d"))
      [ 68 137 245 ]
    ;
    "mov ebp,r15d" = expect ''"mov ebp,r15d" to be correct [44 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "ebp" "r15d"))
      [ 68 137 253 ]
    ;
    "mov esi,eax" = expect ''"mov esi,eax" to be correct [89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "eax"))
      [ 137 198 ]
    ;
    "mov esi,ecx" = expect ''"mov esi,ecx" to be correct [89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "ecx"))
      [ 137 206 ]
    ;
    "mov esi,edx" = expect ''"mov esi,edx" to be correct [89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "edx"))
      [ 137 214 ]
    ;
    "mov esi,ebx" = expect ''"mov esi,ebx" to be correct [89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "ebx"))
      [ 137 222 ]
    ;
    "mov esi,esp" = expect ''"mov esi,esp" to be correct [89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "esp"))
      [ 137 230 ]
    ;
    "mov esi,ebp" = expect ''"mov esi,ebp" to be correct [89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "ebp"))
      [ 137 238 ]
    ;
    "mov esi,esi" = expect ''"mov esi,esi" to be correct [89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "esi"))
      [ 137 246 ]
    ;
    "mov esi,edi" = expect ''"mov esi,edi" to be correct [89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "edi"))
      [ 137 254 ]
    ;
    "mov esi,r8d" = expect ''"mov esi,r8d" to be correct [44 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "r8d"))
      [ 68 137 198 ]
    ;
    "mov esi,r9d" = expect ''"mov esi,r9d" to be correct [44 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "r9d"))
      [ 68 137 206 ]
    ;
    "mov esi,r10d" = expect ''"mov esi,r10d" to be correct [44 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "r10d"))
      [ 68 137 214 ]
    ;
    "mov esi,r11d" = expect ''"mov esi,r11d" to be correct [44 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "r11d"))
      [ 68 137 222 ]
    ;
    "mov esi,r12d" = expect ''"mov esi,r12d" to be correct [44 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "r12d"))
      [ 68 137 230 ]
    ;
    "mov esi,r13d" = expect ''"mov esi,r13d" to be correct [44 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "r13d"))
      [ 68 137 238 ]
    ;
    "mov esi,r14d" = expect ''"mov esi,r14d" to be correct [44 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "r14d"))
      [ 68 137 246 ]
    ;
    "mov esi,r15d" = expect ''"mov esi,r15d" to be correct [44 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "esi" "r15d"))
      [ 68 137 254 ]
    ;
    "mov edi,eax" = expect ''"mov edi,eax" to be correct [89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "eax"))
      [ 137 199 ]
    ;
    "mov edi,ecx" = expect ''"mov edi,ecx" to be correct [89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "ecx"))
      [ 137 207 ]
    ;
    "mov edi,edx" = expect ''"mov edi,edx" to be correct [89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "edx"))
      [ 137 215 ]
    ;
    "mov edi,ebx" = expect ''"mov edi,ebx" to be correct [89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "ebx"))
      [ 137 223 ]
    ;
    "mov edi,esp" = expect ''"mov edi,esp" to be correct [89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "esp"))
      [ 137 231 ]
    ;
    "mov edi,ebp" = expect ''"mov edi,ebp" to be correct [89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "ebp"))
      [ 137 239 ]
    ;
    "mov edi,esi" = expect ''"mov edi,esi" to be correct [89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "esi"))
      [ 137 247 ]
    ;
    "mov edi,edi" = expect ''"mov edi,edi" to be correct [89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "edi"))
      [ 137 255 ]
    ;
    "mov edi,r8d" = expect ''"mov edi,r8d" to be correct [44 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "r8d"))
      [ 68 137 199 ]
    ;
    "mov edi,r9d" = expect ''"mov edi,r9d" to be correct [44 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "r9d"))
      [ 68 137 207 ]
    ;
    "mov edi,r10d" = expect ''"mov edi,r10d" to be correct [44 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "r10d"))
      [ 68 137 215 ]
    ;
    "mov edi,r11d" = expect ''"mov edi,r11d" to be correct [44 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "r11d"))
      [ 68 137 223 ]
    ;
    "mov edi,r12d" = expect ''"mov edi,r12d" to be correct [44 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "r12d"))
      [ 68 137 231 ]
    ;
    "mov edi,r13d" = expect ''"mov edi,r13d" to be correct [44 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "r13d"))
      [ 68 137 239 ]
    ;
    "mov edi,r14d" = expect ''"mov edi,r14d" to be correct [44 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "r14d"))
      [ 68 137 247 ]
    ;
    "mov edi,r15d" = expect ''"mov edi,r15d" to be correct [44 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "edi" "r15d"))
      [ 68 137 255 ]
    ;
    "mov rax,rax" = expect ''"mov rax,rax" to be correct [48 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "rax"))
      [ 72 137 192 ]
    ;
    "mov rax,rcx" = expect ''"mov rax,rcx" to be correct [48 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "rcx"))
      [ 72 137 200 ]
    ;
    "mov rax,rdx" = expect ''"mov rax,rdx" to be correct [48 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "rdx"))
      [ 72 137 208 ]
    ;
    "mov rax,rbx" = expect ''"mov rax,rbx" to be correct [48 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "rbx"))
      [ 72 137 216 ]
    ;
    "mov rax,rsp" = expect ''"mov rax,rsp" to be correct [48 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "rsp"))
      [ 72 137 224 ]
    ;
    "mov rax,rbp" = expect ''"mov rax,rbp" to be correct [48 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "rbp"))
      [ 72 137 232 ]
    ;
    "mov rax,rsi" = expect ''"mov rax,rsi" to be correct [48 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "rsi"))
      [ 72 137 240 ]
    ;
    "mov rax,rdi" = expect ''"mov rax,rdi" to be correct [48 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "rdi"))
      [ 72 137 248 ]
    ;
    "mov rax,r8" = expect ''"mov rax,r8" to be correct [4c 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "r8"))
      [ 76 137 192 ]
    ;
    "mov rax,r9" = expect ''"mov rax,r9" to be correct [4c 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "r9"))
      [ 76 137 200 ]
    ;
    "mov rax,r10" = expect ''"mov rax,r10" to be correct [4c 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "r10"))
      [ 76 137 208 ]
    ;
    "mov rax,r11" = expect ''"mov rax,r11" to be correct [4c 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "r11"))
      [ 76 137 216 ]
    ;
    "mov rax,r12" = expect ''"mov rax,r12" to be correct [4c 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "r12"))
      [ 76 137 224 ]
    ;
    "mov rax,r13" = expect ''"mov rax,r13" to be correct [4c 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "r13"))
      [ 76 137 232 ]
    ;
    "mov rax,r14" = expect ''"mov rax,r14" to be correct [4c 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "r14"))
      [ 76 137 240 ]
    ;
    "mov rax,r15" = expect ''"mov rax,r15" to be correct [4c 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rax" "r15"))
      [ 76 137 248 ]
    ;
    "mov rcx,rax" = expect ''"mov rcx,rax" to be correct [48 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "rax"))
      [ 72 137 193 ]
    ;
    "mov rcx,rcx" = expect ''"mov rcx,rcx" to be correct [48 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "rcx"))
      [ 72 137 201 ]
    ;
    "mov rcx,rdx" = expect ''"mov rcx,rdx" to be correct [48 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "rdx"))
      [ 72 137 209 ]
    ;
    "mov rcx,rbx" = expect ''"mov rcx,rbx" to be correct [48 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "rbx"))
      [ 72 137 217 ]
    ;
    "mov rcx,rsp" = expect ''"mov rcx,rsp" to be correct [48 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "rsp"))
      [ 72 137 225 ]
    ;
    "mov rcx,rbp" = expect ''"mov rcx,rbp" to be correct [48 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "rbp"))
      [ 72 137 233 ]
    ;
    "mov rcx,rsi" = expect ''"mov rcx,rsi" to be correct [48 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "rsi"))
      [ 72 137 241 ]
    ;
    "mov rcx,rdi" = expect ''"mov rcx,rdi" to be correct [48 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "rdi"))
      [ 72 137 249 ]
    ;
    "mov rcx,r8" = expect ''"mov rcx,r8" to be correct [4c 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "r8"))
      [ 76 137 193 ]
    ;
    "mov rcx,r9" = expect ''"mov rcx,r9" to be correct [4c 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "r9"))
      [ 76 137 201 ]
    ;
    "mov rcx,r10" = expect ''"mov rcx,r10" to be correct [4c 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "r10"))
      [ 76 137 209 ]
    ;
    "mov rcx,r11" = expect ''"mov rcx,r11" to be correct [4c 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "r11"))
      [ 76 137 217 ]
    ;
    "mov rcx,r12" = expect ''"mov rcx,r12" to be correct [4c 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "r12"))
      [ 76 137 225 ]
    ;
    "mov rcx,r13" = expect ''"mov rcx,r13" to be correct [4c 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "r13"))
      [ 76 137 233 ]
    ;
    "mov rcx,r14" = expect ''"mov rcx,r14" to be correct [4c 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "r14"))
      [ 76 137 241 ]
    ;
    "mov rcx,r15" = expect ''"mov rcx,r15" to be correct [4c 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rcx" "r15"))
      [ 76 137 249 ]
    ;
    "mov rdx,rax" = expect ''"mov rdx,rax" to be correct [48 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "rax"))
      [ 72 137 194 ]
    ;
    "mov rdx,rcx" = expect ''"mov rdx,rcx" to be correct [48 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "rcx"))
      [ 72 137 202 ]
    ;
    "mov rdx,rdx" = expect ''"mov rdx,rdx" to be correct [48 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "rdx"))
      [ 72 137 210 ]
    ;
    "mov rdx,rbx" = expect ''"mov rdx,rbx" to be correct [48 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "rbx"))
      [ 72 137 218 ]
    ;
    "mov rdx,rsp" = expect ''"mov rdx,rsp" to be correct [48 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "rsp"))
      [ 72 137 226 ]
    ;
    "mov rdx,rbp" = expect ''"mov rdx,rbp" to be correct [48 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "rbp"))
      [ 72 137 234 ]
    ;
    "mov rdx,rsi" = expect ''"mov rdx,rsi" to be correct [48 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "rsi"))
      [ 72 137 242 ]
    ;
    "mov rdx,rdi" = expect ''"mov rdx,rdi" to be correct [48 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "rdi"))
      [ 72 137 250 ]
    ;
    "mov rdx,r8" = expect ''"mov rdx,r8" to be correct [4c 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "r8"))
      [ 76 137 194 ]
    ;
    "mov rdx,r9" = expect ''"mov rdx,r9" to be correct [4c 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "r9"))
      [ 76 137 202 ]
    ;
    "mov rdx,r10" = expect ''"mov rdx,r10" to be correct [4c 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "r10"))
      [ 76 137 210 ]
    ;
    "mov rdx,r11" = expect ''"mov rdx,r11" to be correct [4c 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "r11"))
      [ 76 137 218 ]
    ;
    "mov rdx,r12" = expect ''"mov rdx,r12" to be correct [4c 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "r12"))
      [ 76 137 226 ]
    ;
    "mov rdx,r13" = expect ''"mov rdx,r13" to be correct [4c 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "r13"))
      [ 76 137 234 ]
    ;
    "mov rdx,r14" = expect ''"mov rdx,r14" to be correct [4c 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "r14"))
      [ 76 137 242 ]
    ;
    "mov rdx,r15" = expect ''"mov rdx,r15" to be correct [4c 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdx" "r15"))
      [ 76 137 250 ]
    ;
    "mov rbx,rax" = expect ''"mov rbx,rax" to be correct [48 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "rax"))
      [ 72 137 195 ]
    ;
    "mov rbx,rcx" = expect ''"mov rbx,rcx" to be correct [48 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "rcx"))
      [ 72 137 203 ]
    ;
    "mov rbx,rdx" = expect ''"mov rbx,rdx" to be correct [48 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "rdx"))
      [ 72 137 211 ]
    ;
    "mov rbx,rbx" = expect ''"mov rbx,rbx" to be correct [48 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "rbx"))
      [ 72 137 219 ]
    ;
    "mov rbx,rsp" = expect ''"mov rbx,rsp" to be correct [48 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "rsp"))
      [ 72 137 227 ]
    ;
    "mov rbx,rbp" = expect ''"mov rbx,rbp" to be correct [48 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "rbp"))
      [ 72 137 235 ]
    ;
    "mov rbx,rsi" = expect ''"mov rbx,rsi" to be correct [48 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "rsi"))
      [ 72 137 243 ]
    ;
    "mov rbx,rdi" = expect ''"mov rbx,rdi" to be correct [48 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "rdi"))
      [ 72 137 251 ]
    ;
    "mov rbx,r8" = expect ''"mov rbx,r8" to be correct [4c 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "r8"))
      [ 76 137 195 ]
    ;
    "mov rbx,r9" = expect ''"mov rbx,r9" to be correct [4c 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "r9"))
      [ 76 137 203 ]
    ;
    "mov rbx,r10" = expect ''"mov rbx,r10" to be correct [4c 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "r10"))
      [ 76 137 211 ]
    ;
    "mov rbx,r11" = expect ''"mov rbx,r11" to be correct [4c 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "r11"))
      [ 76 137 219 ]
    ;
    "mov rbx,r12" = expect ''"mov rbx,r12" to be correct [4c 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "r12"))
      [ 76 137 227 ]
    ;
    "mov rbx,r13" = expect ''"mov rbx,r13" to be correct [4c 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "r13"))
      [ 76 137 235 ]
    ;
    "mov rbx,r14" = expect ''"mov rbx,r14" to be correct [4c 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "r14"))
      [ 76 137 243 ]
    ;
    "mov rbx,r15" = expect ''"mov rbx,r15" to be correct [4c 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbx" "r15"))
      [ 76 137 251 ]
    ;
    "mov rsp,rax" = expect ''"mov rsp,rax" to be correct [48 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "rax"))
      [ 72 137 196 ]
    ;
    "mov rsp,rcx" = expect ''"mov rsp,rcx" to be correct [48 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "rcx"))
      [ 72 137 204 ]
    ;
    "mov rsp,rdx" = expect ''"mov rsp,rdx" to be correct [48 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "rdx"))
      [ 72 137 212 ]
    ;
    "mov rsp,rbx" = expect ''"mov rsp,rbx" to be correct [48 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "rbx"))
      [ 72 137 220 ]
    ;
    "mov rsp,rsp" = expect ''"mov rsp,rsp" to be correct [48 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "rsp"))
      [ 72 137 228 ]
    ;
    "mov rsp,rbp" = expect ''"mov rsp,rbp" to be correct [48 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "rbp"))
      [ 72 137 236 ]
    ;
    "mov rsp,rsi" = expect ''"mov rsp,rsi" to be correct [48 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "rsi"))
      [ 72 137 244 ]
    ;
    "mov rsp,rdi" = expect ''"mov rsp,rdi" to be correct [48 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "rdi"))
      [ 72 137 252 ]
    ;
    "mov rsp,r8" = expect ''"mov rsp,r8" to be correct [4c 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "r8"))
      [ 76 137 196 ]
    ;
    "mov rsp,r9" = expect ''"mov rsp,r9" to be correct [4c 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "r9"))
      [ 76 137 204 ]
    ;
    "mov rsp,r10" = expect ''"mov rsp,r10" to be correct [4c 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "r10"))
      [ 76 137 212 ]
    ;
    "mov rsp,r11" = expect ''"mov rsp,r11" to be correct [4c 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "r11"))
      [ 76 137 220 ]
    ;
    "mov rsp,r12" = expect ''"mov rsp,r12" to be correct [4c 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "r12"))
      [ 76 137 228 ]
    ;
    "mov rsp,r13" = expect ''"mov rsp,r13" to be correct [4c 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "r13"))
      [ 76 137 236 ]
    ;
    "mov rsp,r14" = expect ''"mov rsp,r14" to be correct [4c 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "r14"))
      [ 76 137 244 ]
    ;
    "mov rsp,r15" = expect ''"mov rsp,r15" to be correct [4c 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsp" "r15"))
      [ 76 137 252 ]
    ;
    "mov rbp,rax" = expect ''"mov rbp,rax" to be correct [48 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "rax"))
      [ 72 137 197 ]
    ;
    "mov rbp,rcx" = expect ''"mov rbp,rcx" to be correct [48 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "rcx"))
      [ 72 137 205 ]
    ;
    "mov rbp,rdx" = expect ''"mov rbp,rdx" to be correct [48 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "rdx"))
      [ 72 137 213 ]
    ;
    "mov rbp,rbx" = expect ''"mov rbp,rbx" to be correct [48 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "rbx"))
      [ 72 137 221 ]
    ;
    "mov rbp,rsp" = expect ''"mov rbp,rsp" to be correct [48 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "rsp"))
      [ 72 137 229 ]
    ;
    "mov rbp,rbp" = expect ''"mov rbp,rbp" to be correct [48 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "rbp"))
      [ 72 137 237 ]
    ;
    "mov rbp,rsi" = expect ''"mov rbp,rsi" to be correct [48 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "rsi"))
      [ 72 137 245 ]
    ;
    "mov rbp,rdi" = expect ''"mov rbp,rdi" to be correct [48 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "rdi"))
      [ 72 137 253 ]
    ;
    "mov rbp,r8" = expect ''"mov rbp,r8" to be correct [4c 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "r8"))
      [ 76 137 197 ]
    ;
    "mov rbp,r9" = expect ''"mov rbp,r9" to be correct [4c 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "r9"))
      [ 76 137 205 ]
    ;
    "mov rbp,r10" = expect ''"mov rbp,r10" to be correct [4c 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "r10"))
      [ 76 137 213 ]
    ;
    "mov rbp,r11" = expect ''"mov rbp,r11" to be correct [4c 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "r11"))
      [ 76 137 221 ]
    ;
    "mov rbp,r12" = expect ''"mov rbp,r12" to be correct [4c 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "r12"))
      [ 76 137 229 ]
    ;
    "mov rbp,r13" = expect ''"mov rbp,r13" to be correct [4c 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "r13"))
      [ 76 137 237 ]
    ;
    "mov rbp,r14" = expect ''"mov rbp,r14" to be correct [4c 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "r14"))
      [ 76 137 245 ]
    ;
    "mov rbp,r15" = expect ''"mov rbp,r15" to be correct [4c 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rbp" "r15"))
      [ 76 137 253 ]
    ;
    "mov rsi,rax" = expect ''"mov rsi,rax" to be correct [48 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "rax"))
      [ 72 137 198 ]
    ;
    "mov rsi,rcx" = expect ''"mov rsi,rcx" to be correct [48 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "rcx"))
      [ 72 137 206 ]
    ;
    "mov rsi,rdx" = expect ''"mov rsi,rdx" to be correct [48 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "rdx"))
      [ 72 137 214 ]
    ;
    "mov rsi,rbx" = expect ''"mov rsi,rbx" to be correct [48 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "rbx"))
      [ 72 137 222 ]
    ;
    "mov rsi,rsp" = expect ''"mov rsi,rsp" to be correct [48 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "rsp"))
      [ 72 137 230 ]
    ;
    "mov rsi,rbp" = expect ''"mov rsi,rbp" to be correct [48 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "rbp"))
      [ 72 137 238 ]
    ;
    "mov rsi,rsi" = expect ''"mov rsi,rsi" to be correct [48 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "rsi"))
      [ 72 137 246 ]
    ;
    "mov rsi,rdi" = expect ''"mov rsi,rdi" to be correct [48 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "rdi"))
      [ 72 137 254 ]
    ;
    "mov rsi,r8" = expect ''"mov rsi,r8" to be correct [4c 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "r8"))
      [ 76 137 198 ]
    ;
    "mov rsi,r9" = expect ''"mov rsi,r9" to be correct [4c 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "r9"))
      [ 76 137 206 ]
    ;
    "mov rsi,r10" = expect ''"mov rsi,r10" to be correct [4c 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "r10"))
      [ 76 137 214 ]
    ;
    "mov rsi,r11" = expect ''"mov rsi,r11" to be correct [4c 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "r11"))
      [ 76 137 222 ]
    ;
    "mov rsi,r12" = expect ''"mov rsi,r12" to be correct [4c 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "r12"))
      [ 76 137 230 ]
    ;
    "mov rsi,r13" = expect ''"mov rsi,r13" to be correct [4c 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "r13"))
      [ 76 137 238 ]
    ;
    "mov rsi,r14" = expect ''"mov rsi,r14" to be correct [4c 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "r14"))
      [ 76 137 246 ]
    ;
    "mov rsi,r15" = expect ''"mov rsi,r15" to be correct [4c 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rsi" "r15"))
      [ 76 137 254 ]
    ;
    "mov rdi,rax" = expect ''"mov rdi,rax" to be correct [48 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "rax"))
      [ 72 137 199 ]
    ;
    "mov rdi,rcx" = expect ''"mov rdi,rcx" to be correct [48 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "rcx"))
      [ 72 137 207 ]
    ;
    "mov rdi,rdx" = expect ''"mov rdi,rdx" to be correct [48 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "rdx"))
      [ 72 137 215 ]
    ;
    "mov rdi,rbx" = expect ''"mov rdi,rbx" to be correct [48 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "rbx"))
      [ 72 137 223 ]
    ;
    "mov rdi,rsp" = expect ''"mov rdi,rsp" to be correct [48 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "rsp"))
      [ 72 137 231 ]
    ;
    "mov rdi,rbp" = expect ''"mov rdi,rbp" to be correct [48 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "rbp"))
      [ 72 137 239 ]
    ;
    "mov rdi,rsi" = expect ''"mov rdi,rsi" to be correct [48 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "rsi"))
      [ 72 137 247 ]
    ;
    "mov rdi,rdi" = expect ''"mov rdi,rdi" to be correct [48 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "rdi"))
      [ 72 137 255 ]
    ;
    "mov rdi,r8" = expect ''"mov rdi,r8" to be correct [4c 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "r8"))
      [ 76 137 199 ]
    ;
    "mov rdi,r9" = expect ''"mov rdi,r9" to be correct [4c 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "r9"))
      [ 76 137 207 ]
    ;
    "mov rdi,r10" = expect ''"mov rdi,r10" to be correct [4c 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "r10"))
      [ 76 137 215 ]
    ;
    "mov rdi,r11" = expect ''"mov rdi,r11" to be correct [4c 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "r11"))
      [ 76 137 223 ]
    ;
    "mov rdi,r12" = expect ''"mov rdi,r12" to be correct [4c 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "r12"))
      [ 76 137 231 ]
    ;
    "mov rdi,r13" = expect ''"mov rdi,r13" to be correct [4c 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "r13"))
      [ 76 137 239 ]
    ;
    "mov rdi,r14" = expect ''"mov rdi,r14" to be correct [4c 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "r14"))
      [ 76 137 247 ]
    ;
    "mov rdi,r15" = expect ''"mov rdi,r15" to be correct [4c 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "rdi" "r15"))
      [ 76 137 255 ]
    ;
    "mov r8b,al" = expect ''"mov r8b,al" to be correct [41 88 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "al"))
      [ 65 136 192 ]
    ;
    "mov r8b,cl" = expect ''"mov r8b,cl" to be correct [41 88 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "cl"))
      [ 65 136 200 ]
    ;
    "mov r8b,dl" = expect ''"mov r8b,dl" to be correct [41 88 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "dl"))
      [ 65 136 208 ]
    ;
    "mov r8b,bl" = expect ''"mov r8b,bl" to be correct [41 88 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "bl"))
      [ 65 136 216 ]
    ;
    "mov r8b,spl" = expect ''"mov r8b,spl" to be correct [41 88 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "spl"))
      [ 65 136 224 ]
    ;
    "mov r8b,bpl" = expect ''"mov r8b,bpl" to be correct [41 88 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "bpl"))
      [ 65 136 232 ]
    ;
    "mov r8b,sil" = expect ''"mov r8b,sil" to be correct [41 88 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "sil"))
      [ 65 136 240 ]
    ;
    "mov r8b,dil" = expect ''"mov r8b,dil" to be correct [41 88 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "dil"))
      [ 65 136 248 ]
    ;
    "mov r8b,r8b" = expect ''"mov r8b,r8b" to be correct [45 88 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "r8b"))
      [ 69 136 192 ]
    ;
    "mov r8b,r9b" = expect ''"mov r8b,r9b" to be correct [45 88 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "r9b"))
      [ 69 136 200 ]
    ;
    "mov r8b,r10b" = expect ''"mov r8b,r10b" to be correct [45 88 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "r10b"))
      [ 69 136 208 ]
    ;
    "mov r8b,r11b" = expect ''"mov r8b,r11b" to be correct [45 88 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "r11b"))
      [ 69 136 216 ]
    ;
    "mov r8b,r12b" = expect ''"mov r8b,r12b" to be correct [45 88 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "r12b"))
      [ 69 136 224 ]
    ;
    "mov r8b,r13b" = expect ''"mov r8b,r13b" to be correct [45 88 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "r13b"))
      [ 69 136 232 ]
    ;
    "mov r8b,r14b" = expect ''"mov r8b,r14b" to be correct [45 88 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "r14b"))
      [ 69 136 240 ]
    ;
    "mov r8b,r15b" = expect ''"mov r8b,r15b" to be correct [45 88 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8b" "r15b"))
      [ 69 136 248 ]
    ;
    "mov r8w,ax" = expect ''"mov r8w,ax" to be correct [66 41 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "ax"))
      [ 102 65 137 192 ]
    ;
    "mov r8w,cx" = expect ''"mov r8w,cx" to be correct [66 41 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "cx"))
      [ 102 65 137 200 ]
    ;
    "mov r8w,dx" = expect ''"mov r8w,dx" to be correct [66 41 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "dx"))
      [ 102 65 137 208 ]
    ;
    "mov r8w,bx" = expect ''"mov r8w,bx" to be correct [66 41 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "bx"))
      [ 102 65 137 216 ]
    ;
    "mov r8w,sp" = expect ''"mov r8w,sp" to be correct [66 41 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "sp"))
      [ 102 65 137 224 ]
    ;
    "mov r8w,bp" = expect ''"mov r8w,bp" to be correct [66 41 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "bp"))
      [ 102 65 137 232 ]
    ;
    "mov r8w,si" = expect ''"mov r8w,si" to be correct [66 41 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "si"))
      [ 102 65 137 240 ]
    ;
    "mov r8w,di" = expect ''"mov r8w,di" to be correct [66 41 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "di"))
      [ 102 65 137 248 ]
    ;
    "mov r8w,r8w" = expect ''"mov r8w,r8w" to be correct [66 45 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "r8w"))
      [ 102 69 137 192 ]
    ;
    "mov r8w,r9w" = expect ''"mov r8w,r9w" to be correct [66 45 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "r9w"))
      [ 102 69 137 200 ]
    ;
    "mov r8w,r10w" = expect ''"mov r8w,r10w" to be correct [66 45 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "r10w"))
      [ 102 69 137 208 ]
    ;
    "mov r8w,r11w" = expect ''"mov r8w,r11w" to be correct [66 45 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "r11w"))
      [ 102 69 137 216 ]
    ;
    "mov r8w,r12w" = expect ''"mov r8w,r12w" to be correct [66 45 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "r12w"))
      [ 102 69 137 224 ]
    ;
    "mov r8w,r13w" = expect ''"mov r8w,r13w" to be correct [66 45 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "r13w"))
      [ 102 69 137 232 ]
    ;
    "mov r8w,r14w" = expect ''"mov r8w,r14w" to be correct [66 45 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "r14w"))
      [ 102 69 137 240 ]
    ;
    "mov r8w,r15w" = expect ''"mov r8w,r15w" to be correct [66 45 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8w" "r15w"))
      [ 102 69 137 248 ]
    ;
    "mov r8d,eax" = expect ''"mov r8d,eax" to be correct [41 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "eax"))
      [ 65 137 192 ]
    ;
    "mov r8d,ecx" = expect ''"mov r8d,ecx" to be correct [41 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "ecx"))
      [ 65 137 200 ]
    ;
    "mov r8d,edx" = expect ''"mov r8d,edx" to be correct [41 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "edx"))
      [ 65 137 208 ]
    ;
    "mov r8d,ebx" = expect ''"mov r8d,ebx" to be correct [41 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "ebx"))
      [ 65 137 216 ]
    ;
    "mov r8d,esp" = expect ''"mov r8d,esp" to be correct [41 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "esp"))
      [ 65 137 224 ]
    ;
    "mov r8d,ebp" = expect ''"mov r8d,ebp" to be correct [41 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "ebp"))
      [ 65 137 232 ]
    ;
    "mov r8d,esi" = expect ''"mov r8d,esi" to be correct [41 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "esi"))
      [ 65 137 240 ]
    ;
    "mov r8d,edi" = expect ''"mov r8d,edi" to be correct [41 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "edi"))
      [ 65 137 248 ]
    ;
    "mov r8d,r8d" = expect ''"mov r8d,r8d" to be correct [45 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "r8d"))
      [ 69 137 192 ]
    ;
    "mov r8d,r9d" = expect ''"mov r8d,r9d" to be correct [45 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "r9d"))
      [ 69 137 200 ]
    ;
    "mov r8d,r10d" = expect ''"mov r8d,r10d" to be correct [45 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "r10d"))
      [ 69 137 208 ]
    ;
    "mov r8d,r11d" = expect ''"mov r8d,r11d" to be correct [45 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "r11d"))
      [ 69 137 216 ]
    ;
    "mov r8d,r12d" = expect ''"mov r8d,r12d" to be correct [45 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "r12d"))
      [ 69 137 224 ]
    ;
    "mov r8d,r13d" = expect ''"mov r8d,r13d" to be correct [45 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "r13d"))
      [ 69 137 232 ]
    ;
    "mov r8d,r14d" = expect ''"mov r8d,r14d" to be correct [45 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "r14d"))
      [ 69 137 240 ]
    ;
    "mov r8d,r15d" = expect ''"mov r8d,r15d" to be correct [45 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8d" "r15d"))
      [ 69 137 248 ]
    ;
    "mov r8,rax" = expect ''"mov r8,rax" to be correct [49 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "rax"))
      [ 73 137 192 ]
    ;
    "mov r8,rcx" = expect ''"mov r8,rcx" to be correct [49 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "rcx"))
      [ 73 137 200 ]
    ;
    "mov r8,rdx" = expect ''"mov r8,rdx" to be correct [49 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "rdx"))
      [ 73 137 208 ]
    ;
    "mov r8,rbx" = expect ''"mov r8,rbx" to be correct [49 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "rbx"))
      [ 73 137 216 ]
    ;
    "mov r8,rsp" = expect ''"mov r8,rsp" to be correct [49 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "rsp"))
      [ 73 137 224 ]
    ;
    "mov r8,rbp" = expect ''"mov r8,rbp" to be correct [49 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "rbp"))
      [ 73 137 232 ]
    ;
    "mov r8,rsi" = expect ''"mov r8,rsi" to be correct [49 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "rsi"))
      [ 73 137 240 ]
    ;
    "mov r8,rdi" = expect ''"mov r8,rdi" to be correct [49 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "rdi"))
      [ 73 137 248 ]
    ;
    "mov r8,r8" = expect ''"mov r8,r8" to be correct [4d 89 c0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "r8"))
      [ 77 137 192 ]
    ;
    "mov r8,r9" = expect ''"mov r8,r9" to be correct [4d 89 c8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "r9"))
      [ 77 137 200 ]
    ;
    "mov r8,r10" = expect ''"mov r8,r10" to be correct [4d 89 d0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "r10"))
      [ 77 137 208 ]
    ;
    "mov r8,r11" = expect ''"mov r8,r11" to be correct [4d 89 d8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "r11"))
      [ 77 137 216 ]
    ;
    "mov r8,r12" = expect ''"mov r8,r12" to be correct [4d 89 e0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "r12"))
      [ 77 137 224 ]
    ;
    "mov r8,r13" = expect ''"mov r8,r13" to be correct [4d 89 e8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "r13"))
      [ 77 137 232 ]
    ;
    "mov r8,r14" = expect ''"mov r8,r14" to be correct [4d 89 f0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "r14"))
      [ 77 137 240 ]
    ;
    "mov r8,r15" = expect ''"mov r8,r15" to be correct [4d 89 f8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r8" "r15"))
      [ 77 137 248 ]
    ;
    "mov r9b,al" = expect ''"mov r9b,al" to be correct [41 88 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "al"))
      [ 65 136 193 ]
    ;
    "mov r9b,cl" = expect ''"mov r9b,cl" to be correct [41 88 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "cl"))
      [ 65 136 201 ]
    ;
    "mov r9b,dl" = expect ''"mov r9b,dl" to be correct [41 88 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "dl"))
      [ 65 136 209 ]
    ;
    "mov r9b,bl" = expect ''"mov r9b,bl" to be correct [41 88 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "bl"))
      [ 65 136 217 ]
    ;
    "mov r9b,spl" = expect ''"mov r9b,spl" to be correct [41 88 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "spl"))
      [ 65 136 225 ]
    ;
    "mov r9b,bpl" = expect ''"mov r9b,bpl" to be correct [41 88 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "bpl"))
      [ 65 136 233 ]
    ;
    "mov r9b,sil" = expect ''"mov r9b,sil" to be correct [41 88 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "sil"))
      [ 65 136 241 ]
    ;
    "mov r9b,dil" = expect ''"mov r9b,dil" to be correct [41 88 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "dil"))
      [ 65 136 249 ]
    ;
    "mov r9b,r8b" = expect ''"mov r9b,r8b" to be correct [45 88 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "r8b"))
      [ 69 136 193 ]
    ;
    "mov r9b,r9b" = expect ''"mov r9b,r9b" to be correct [45 88 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "r9b"))
      [ 69 136 201 ]
    ;
    "mov r9b,r10b" = expect ''"mov r9b,r10b" to be correct [45 88 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "r10b"))
      [ 69 136 209 ]
    ;
    "mov r9b,r11b" = expect ''"mov r9b,r11b" to be correct [45 88 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "r11b"))
      [ 69 136 217 ]
    ;
    "mov r9b,r12b" = expect ''"mov r9b,r12b" to be correct [45 88 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "r12b"))
      [ 69 136 225 ]
    ;
    "mov r9b,r13b" = expect ''"mov r9b,r13b" to be correct [45 88 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "r13b"))
      [ 69 136 233 ]
    ;
    "mov r9b,r14b" = expect ''"mov r9b,r14b" to be correct [45 88 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "r14b"))
      [ 69 136 241 ]
    ;
    "mov r9b,r15b" = expect ''"mov r9b,r15b" to be correct [45 88 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9b" "r15b"))
      [ 69 136 249 ]
    ;
    "mov r9w,ax" = expect ''"mov r9w,ax" to be correct [66 41 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "ax"))
      [ 102 65 137 193 ]
    ;
    "mov r9w,cx" = expect ''"mov r9w,cx" to be correct [66 41 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "cx"))
      [ 102 65 137 201 ]
    ;
    "mov r9w,dx" = expect ''"mov r9w,dx" to be correct [66 41 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "dx"))
      [ 102 65 137 209 ]
    ;
    "mov r9w,bx" = expect ''"mov r9w,bx" to be correct [66 41 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "bx"))
      [ 102 65 137 217 ]
    ;
    "mov r9w,sp" = expect ''"mov r9w,sp" to be correct [66 41 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "sp"))
      [ 102 65 137 225 ]
    ;
    "mov r9w,bp" = expect ''"mov r9w,bp" to be correct [66 41 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "bp"))
      [ 102 65 137 233 ]
    ;
    "mov r9w,si" = expect ''"mov r9w,si" to be correct [66 41 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "si"))
      [ 102 65 137 241 ]
    ;
    "mov r9w,di" = expect ''"mov r9w,di" to be correct [66 41 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "di"))
      [ 102 65 137 249 ]
    ;
    "mov r9w,r8w" = expect ''"mov r9w,r8w" to be correct [66 45 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "r8w"))
      [ 102 69 137 193 ]
    ;
    "mov r9w,r9w" = expect ''"mov r9w,r9w" to be correct [66 45 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "r9w"))
      [ 102 69 137 201 ]
    ;
    "mov r9w,r10w" = expect ''"mov r9w,r10w" to be correct [66 45 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "r10w"))
      [ 102 69 137 209 ]
    ;
    "mov r9w,r11w" = expect ''"mov r9w,r11w" to be correct [66 45 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "r11w"))
      [ 102 69 137 217 ]
    ;
    "mov r9w,r12w" = expect ''"mov r9w,r12w" to be correct [66 45 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "r12w"))
      [ 102 69 137 225 ]
    ;
    "mov r9w,r13w" = expect ''"mov r9w,r13w" to be correct [66 45 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "r13w"))
      [ 102 69 137 233 ]
    ;
    "mov r9w,r14w" = expect ''"mov r9w,r14w" to be correct [66 45 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "r14w"))
      [ 102 69 137 241 ]
    ;
    "mov r9w,r15w" = expect ''"mov r9w,r15w" to be correct [66 45 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9w" "r15w"))
      [ 102 69 137 249 ]
    ;
    "mov r9d,eax" = expect ''"mov r9d,eax" to be correct [41 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "eax"))
      [ 65 137 193 ]
    ;
    "mov r9d,ecx" = expect ''"mov r9d,ecx" to be correct [41 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "ecx"))
      [ 65 137 201 ]
    ;
    "mov r9d,edx" = expect ''"mov r9d,edx" to be correct [41 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "edx"))
      [ 65 137 209 ]
    ;
    "mov r9d,ebx" = expect ''"mov r9d,ebx" to be correct [41 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "ebx"))
      [ 65 137 217 ]
    ;
    "mov r9d,esp" = expect ''"mov r9d,esp" to be correct [41 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "esp"))
      [ 65 137 225 ]
    ;
    "mov r9d,ebp" = expect ''"mov r9d,ebp" to be correct [41 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "ebp"))
      [ 65 137 233 ]
    ;
    "mov r9d,esi" = expect ''"mov r9d,esi" to be correct [41 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "esi"))
      [ 65 137 241 ]
    ;
    "mov r9d,edi" = expect ''"mov r9d,edi" to be correct [41 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "edi"))
      [ 65 137 249 ]
    ;
    "mov r9d,r8d" = expect ''"mov r9d,r8d" to be correct [45 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "r8d"))
      [ 69 137 193 ]
    ;
    "mov r9d,r9d" = expect ''"mov r9d,r9d" to be correct [45 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "r9d"))
      [ 69 137 201 ]
    ;
    "mov r9d,r10d" = expect ''"mov r9d,r10d" to be correct [45 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "r10d"))
      [ 69 137 209 ]
    ;
    "mov r9d,r11d" = expect ''"mov r9d,r11d" to be correct [45 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "r11d"))
      [ 69 137 217 ]
    ;
    "mov r9d,r12d" = expect ''"mov r9d,r12d" to be correct [45 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "r12d"))
      [ 69 137 225 ]
    ;
    "mov r9d,r13d" = expect ''"mov r9d,r13d" to be correct [45 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "r13d"))
      [ 69 137 233 ]
    ;
    "mov r9d,r14d" = expect ''"mov r9d,r14d" to be correct [45 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "r14d"))
      [ 69 137 241 ]
    ;
    "mov r9d,r15d" = expect ''"mov r9d,r15d" to be correct [45 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9d" "r15d"))
      [ 69 137 249 ]
    ;
    "mov r9,rax" = expect ''"mov r9,rax" to be correct [49 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "rax"))
      [ 73 137 193 ]
    ;
    "mov r9,rcx" = expect ''"mov r9,rcx" to be correct [49 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "rcx"))
      [ 73 137 201 ]
    ;
    "mov r9,rdx" = expect ''"mov r9,rdx" to be correct [49 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "rdx"))
      [ 73 137 209 ]
    ;
    "mov r9,rbx" = expect ''"mov r9,rbx" to be correct [49 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "rbx"))
      [ 73 137 217 ]
    ;
    "mov r9,rsp" = expect ''"mov r9,rsp" to be correct [49 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "rsp"))
      [ 73 137 225 ]
    ;
    "mov r9,rbp" = expect ''"mov r9,rbp" to be correct [49 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "rbp"))
      [ 73 137 233 ]
    ;
    "mov r9,rsi" = expect ''"mov r9,rsi" to be correct [49 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "rsi"))
      [ 73 137 241 ]
    ;
    "mov r9,rdi" = expect ''"mov r9,rdi" to be correct [49 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "rdi"))
      [ 73 137 249 ]
    ;
    "mov r9,r8" = expect ''"mov r9,r8" to be correct [4d 89 c1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "r8"))
      [ 77 137 193 ]
    ;
    "mov r9,r9" = expect ''"mov r9,r9" to be correct [4d 89 c9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "r9"))
      [ 77 137 201 ]
    ;
    "mov r9,r10" = expect ''"mov r9,r10" to be correct [4d 89 d1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "r10"))
      [ 77 137 209 ]
    ;
    "mov r9,r11" = expect ''"mov r9,r11" to be correct [4d 89 d9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "r11"))
      [ 77 137 217 ]
    ;
    "mov r9,r12" = expect ''"mov r9,r12" to be correct [4d 89 e1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "r12"))
      [ 77 137 225 ]
    ;
    "mov r9,r13" = expect ''"mov r9,r13" to be correct [4d 89 e9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "r13"))
      [ 77 137 233 ]
    ;
    "mov r9,r14" = expect ''"mov r9,r14" to be correct [4d 89 f1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "r14"))
      [ 77 137 241 ]
    ;
    "mov r9,r15" = expect ''"mov r9,r15" to be correct [4d 89 f9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r9" "r15"))
      [ 77 137 249 ]
    ;
    "mov r10b,al" = expect ''"mov r10b,al" to be correct [41 88 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "al"))
      [ 65 136 194 ]
    ;
    "mov r10b,cl" = expect ''"mov r10b,cl" to be correct [41 88 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "cl"))
      [ 65 136 202 ]
    ;
    "mov r10b,dl" = expect ''"mov r10b,dl" to be correct [41 88 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "dl"))
      [ 65 136 210 ]
    ;
    "mov r10b,bl" = expect ''"mov r10b,bl" to be correct [41 88 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "bl"))
      [ 65 136 218 ]
    ;
    "mov r10b,spl" = expect ''"mov r10b,spl" to be correct [41 88 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "spl"))
      [ 65 136 226 ]
    ;
    "mov r10b,bpl" = expect ''"mov r10b,bpl" to be correct [41 88 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "bpl"))
      [ 65 136 234 ]
    ;
    "mov r10b,sil" = expect ''"mov r10b,sil" to be correct [41 88 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "sil"))
      [ 65 136 242 ]
    ;
    "mov r10b,dil" = expect ''"mov r10b,dil" to be correct [41 88 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "dil"))
      [ 65 136 250 ]
    ;
    "mov r10b,r8b" = expect ''"mov r10b,r8b" to be correct [45 88 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "r8b"))
      [ 69 136 194 ]
    ;
    "mov r10b,r9b" = expect ''"mov r10b,r9b" to be correct [45 88 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "r9b"))
      [ 69 136 202 ]
    ;
    "mov r10b,r10b" = expect ''"mov r10b,r10b" to be correct [45 88 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "r10b"))
      [ 69 136 210 ]
    ;
    "mov r10b,r11b" = expect ''"mov r10b,r11b" to be correct [45 88 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "r11b"))
      [ 69 136 218 ]
    ;
    "mov r10b,r12b" = expect ''"mov r10b,r12b" to be correct [45 88 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "r12b"))
      [ 69 136 226 ]
    ;
    "mov r10b,r13b" = expect ''"mov r10b,r13b" to be correct [45 88 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "r13b"))
      [ 69 136 234 ]
    ;
    "mov r10b,r14b" = expect ''"mov r10b,r14b" to be correct [45 88 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "r14b"))
      [ 69 136 242 ]
    ;
    "mov r10b,r15b" = expect ''"mov r10b,r15b" to be correct [45 88 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10b" "r15b"))
      [ 69 136 250 ]
    ;
    "mov r10w,ax" = expect ''"mov r10w,ax" to be correct [66 41 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "ax"))
      [ 102 65 137 194 ]
    ;
    "mov r10w,cx" = expect ''"mov r10w,cx" to be correct [66 41 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "cx"))
      [ 102 65 137 202 ]
    ;
    "mov r10w,dx" = expect ''"mov r10w,dx" to be correct [66 41 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "dx"))
      [ 102 65 137 210 ]
    ;
    "mov r10w,bx" = expect ''"mov r10w,bx" to be correct [66 41 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "bx"))
      [ 102 65 137 218 ]
    ;
    "mov r10w,sp" = expect ''"mov r10w,sp" to be correct [66 41 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "sp"))
      [ 102 65 137 226 ]
    ;
    "mov r10w,bp" = expect ''"mov r10w,bp" to be correct [66 41 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "bp"))
      [ 102 65 137 234 ]
    ;
    "mov r10w,si" = expect ''"mov r10w,si" to be correct [66 41 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "si"))
      [ 102 65 137 242 ]
    ;
    "mov r10w,di" = expect ''"mov r10w,di" to be correct [66 41 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "di"))
      [ 102 65 137 250 ]
    ;
    "mov r10w,r8w" = expect ''"mov r10w,r8w" to be correct [66 45 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "r8w"))
      [ 102 69 137 194 ]
    ;
    "mov r10w,r9w" = expect ''"mov r10w,r9w" to be correct [66 45 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "r9w"))
      [ 102 69 137 202 ]
    ;
    "mov r10w,r10w" = expect ''"mov r10w,r10w" to be correct [66 45 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "r10w"))
      [ 102 69 137 210 ]
    ;
    "mov r10w,r11w" = expect ''"mov r10w,r11w" to be correct [66 45 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "r11w"))
      [ 102 69 137 218 ]
    ;
    "mov r10w,r12w" = expect ''"mov r10w,r12w" to be correct [66 45 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "r12w"))
      [ 102 69 137 226 ]
    ;
    "mov r10w,r13w" = expect ''"mov r10w,r13w" to be correct [66 45 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "r13w"))
      [ 102 69 137 234 ]
    ;
    "mov r10w,r14w" = expect ''"mov r10w,r14w" to be correct [66 45 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "r14w"))
      [ 102 69 137 242 ]
    ;
    "mov r10w,r15w" = expect ''"mov r10w,r15w" to be correct [66 45 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10w" "r15w"))
      [ 102 69 137 250 ]
    ;
    "mov r10d,eax" = expect ''"mov r10d,eax" to be correct [41 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "eax"))
      [ 65 137 194 ]
    ;
    "mov r10d,ecx" = expect ''"mov r10d,ecx" to be correct [41 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "ecx"))
      [ 65 137 202 ]
    ;
    "mov r10d,edx" = expect ''"mov r10d,edx" to be correct [41 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "edx"))
      [ 65 137 210 ]
    ;
    "mov r10d,ebx" = expect ''"mov r10d,ebx" to be correct [41 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "ebx"))
      [ 65 137 218 ]
    ;
    "mov r10d,esp" = expect ''"mov r10d,esp" to be correct [41 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "esp"))
      [ 65 137 226 ]
    ;
    "mov r10d,ebp" = expect ''"mov r10d,ebp" to be correct [41 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "ebp"))
      [ 65 137 234 ]
    ;
    "mov r10d,esi" = expect ''"mov r10d,esi" to be correct [41 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "esi"))
      [ 65 137 242 ]
    ;
    "mov r10d,edi" = expect ''"mov r10d,edi" to be correct [41 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "edi"))
      [ 65 137 250 ]
    ;
    "mov r10d,r8d" = expect ''"mov r10d,r8d" to be correct [45 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "r8d"))
      [ 69 137 194 ]
    ;
    "mov r10d,r9d" = expect ''"mov r10d,r9d" to be correct [45 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "r9d"))
      [ 69 137 202 ]
    ;
    "mov r10d,r10d" = expect ''"mov r10d,r10d" to be correct [45 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "r10d"))
      [ 69 137 210 ]
    ;
    "mov r10d,r11d" = expect ''"mov r10d,r11d" to be correct [45 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "r11d"))
      [ 69 137 218 ]
    ;
    "mov r10d,r12d" = expect ''"mov r10d,r12d" to be correct [45 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "r12d"))
      [ 69 137 226 ]
    ;
    "mov r10d,r13d" = expect ''"mov r10d,r13d" to be correct [45 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "r13d"))
      [ 69 137 234 ]
    ;
    "mov r10d,r14d" = expect ''"mov r10d,r14d" to be correct [45 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "r14d"))
      [ 69 137 242 ]
    ;
    "mov r10d,r15d" = expect ''"mov r10d,r15d" to be correct [45 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10d" "r15d"))
      [ 69 137 250 ]
    ;
    "mov r10,rax" = expect ''"mov r10,rax" to be correct [49 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "rax"))
      [ 73 137 194 ]
    ;
    "mov r10,rcx" = expect ''"mov r10,rcx" to be correct [49 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "rcx"))
      [ 73 137 202 ]
    ;
    "mov r10,rdx" = expect ''"mov r10,rdx" to be correct [49 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "rdx"))
      [ 73 137 210 ]
    ;
    "mov r10,rbx" = expect ''"mov r10,rbx" to be correct [49 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "rbx"))
      [ 73 137 218 ]
    ;
    "mov r10,rsp" = expect ''"mov r10,rsp" to be correct [49 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "rsp"))
      [ 73 137 226 ]
    ;
    "mov r10,rbp" = expect ''"mov r10,rbp" to be correct [49 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "rbp"))
      [ 73 137 234 ]
    ;
    "mov r10,rsi" = expect ''"mov r10,rsi" to be correct [49 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "rsi"))
      [ 73 137 242 ]
    ;
    "mov r10,rdi" = expect ''"mov r10,rdi" to be correct [49 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "rdi"))
      [ 73 137 250 ]
    ;
    "mov r10,r8" = expect ''"mov r10,r8" to be correct [4d 89 c2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "r8"))
      [ 77 137 194 ]
    ;
    "mov r10,r9" = expect ''"mov r10,r9" to be correct [4d 89 ca]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "r9"))
      [ 77 137 202 ]
    ;
    "mov r10,r10" = expect ''"mov r10,r10" to be correct [4d 89 d2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "r10"))
      [ 77 137 210 ]
    ;
    "mov r10,r11" = expect ''"mov r10,r11" to be correct [4d 89 da]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "r11"))
      [ 77 137 218 ]
    ;
    "mov r10,r12" = expect ''"mov r10,r12" to be correct [4d 89 e2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "r12"))
      [ 77 137 226 ]
    ;
    "mov r10,r13" = expect ''"mov r10,r13" to be correct [4d 89 ea]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "r13"))
      [ 77 137 234 ]
    ;
    "mov r10,r14" = expect ''"mov r10,r14" to be correct [4d 89 f2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "r14"))
      [ 77 137 242 ]
    ;
    "mov r10,r15" = expect ''"mov r10,r15" to be correct [4d 89 fa]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r10" "r15"))
      [ 77 137 250 ]
    ;
    "mov r11b,al" = expect ''"mov r11b,al" to be correct [41 88 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "al"))
      [ 65 136 195 ]
    ;
    "mov r11b,cl" = expect ''"mov r11b,cl" to be correct [41 88 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "cl"))
      [ 65 136 203 ]
    ;
    "mov r11b,dl" = expect ''"mov r11b,dl" to be correct [41 88 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "dl"))
      [ 65 136 211 ]
    ;
    "mov r11b,bl" = expect ''"mov r11b,bl" to be correct [41 88 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "bl"))
      [ 65 136 219 ]
    ;
    "mov r11b,spl" = expect ''"mov r11b,spl" to be correct [41 88 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "spl"))
      [ 65 136 227 ]
    ;
    "mov r11b,bpl" = expect ''"mov r11b,bpl" to be correct [41 88 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "bpl"))
      [ 65 136 235 ]
    ;
    "mov r11b,sil" = expect ''"mov r11b,sil" to be correct [41 88 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "sil"))
      [ 65 136 243 ]
    ;
    "mov r11b,dil" = expect ''"mov r11b,dil" to be correct [41 88 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "dil"))
      [ 65 136 251 ]
    ;
    "mov r11b,r8b" = expect ''"mov r11b,r8b" to be correct [45 88 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "r8b"))
      [ 69 136 195 ]
    ;
    "mov r11b,r9b" = expect ''"mov r11b,r9b" to be correct [45 88 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "r9b"))
      [ 69 136 203 ]
    ;
    "mov r11b,r10b" = expect ''"mov r11b,r10b" to be correct [45 88 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "r10b"))
      [ 69 136 211 ]
    ;
    "mov r11b,r11b" = expect ''"mov r11b,r11b" to be correct [45 88 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "r11b"))
      [ 69 136 219 ]
    ;
    "mov r11b,r12b" = expect ''"mov r11b,r12b" to be correct [45 88 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "r12b"))
      [ 69 136 227 ]
    ;
    "mov r11b,r13b" = expect ''"mov r11b,r13b" to be correct [45 88 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "r13b"))
      [ 69 136 235 ]
    ;
    "mov r11b,r14b" = expect ''"mov r11b,r14b" to be correct [45 88 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "r14b"))
      [ 69 136 243 ]
    ;
    "mov r11b,r15b" = expect ''"mov r11b,r15b" to be correct [45 88 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11b" "r15b"))
      [ 69 136 251 ]
    ;
    "mov r11w,ax" = expect ''"mov r11w,ax" to be correct [66 41 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "ax"))
      [ 102 65 137 195 ]
    ;
    "mov r11w,cx" = expect ''"mov r11w,cx" to be correct [66 41 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "cx"))
      [ 102 65 137 203 ]
    ;
    "mov r11w,dx" = expect ''"mov r11w,dx" to be correct [66 41 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "dx"))
      [ 102 65 137 211 ]
    ;
    "mov r11w,bx" = expect ''"mov r11w,bx" to be correct [66 41 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "bx"))
      [ 102 65 137 219 ]
    ;
    "mov r11w,sp" = expect ''"mov r11w,sp" to be correct [66 41 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "sp"))
      [ 102 65 137 227 ]
    ;
    "mov r11w,bp" = expect ''"mov r11w,bp" to be correct [66 41 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "bp"))
      [ 102 65 137 235 ]
    ;
    "mov r11w,si" = expect ''"mov r11w,si" to be correct [66 41 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "si"))
      [ 102 65 137 243 ]
    ;
    "mov r11w,di" = expect ''"mov r11w,di" to be correct [66 41 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "di"))
      [ 102 65 137 251 ]
    ;
    "mov r11w,r8w" = expect ''"mov r11w,r8w" to be correct [66 45 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "r8w"))
      [ 102 69 137 195 ]
    ;
    "mov r11w,r9w" = expect ''"mov r11w,r9w" to be correct [66 45 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "r9w"))
      [ 102 69 137 203 ]
    ;
    "mov r11w,r10w" = expect ''"mov r11w,r10w" to be correct [66 45 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "r10w"))
      [ 102 69 137 211 ]
    ;
    "mov r11w,r11w" = expect ''"mov r11w,r11w" to be correct [66 45 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "r11w"))
      [ 102 69 137 219 ]
    ;
    "mov r11w,r12w" = expect ''"mov r11w,r12w" to be correct [66 45 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "r12w"))
      [ 102 69 137 227 ]
    ;
    "mov r11w,r13w" = expect ''"mov r11w,r13w" to be correct [66 45 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "r13w"))
      [ 102 69 137 235 ]
    ;
    "mov r11w,r14w" = expect ''"mov r11w,r14w" to be correct [66 45 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "r14w"))
      [ 102 69 137 243 ]
    ;
    "mov r11w,r15w" = expect ''"mov r11w,r15w" to be correct [66 45 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11w" "r15w"))
      [ 102 69 137 251 ]
    ;
    "mov r11d,eax" = expect ''"mov r11d,eax" to be correct [41 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "eax"))
      [ 65 137 195 ]
    ;
    "mov r11d,ecx" = expect ''"mov r11d,ecx" to be correct [41 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "ecx"))
      [ 65 137 203 ]
    ;
    "mov r11d,edx" = expect ''"mov r11d,edx" to be correct [41 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "edx"))
      [ 65 137 211 ]
    ;
    "mov r11d,ebx" = expect ''"mov r11d,ebx" to be correct [41 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "ebx"))
      [ 65 137 219 ]
    ;
    "mov r11d,esp" = expect ''"mov r11d,esp" to be correct [41 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "esp"))
      [ 65 137 227 ]
    ;
    "mov r11d,ebp" = expect ''"mov r11d,ebp" to be correct [41 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "ebp"))
      [ 65 137 235 ]
    ;
    "mov r11d,esi" = expect ''"mov r11d,esi" to be correct [41 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "esi"))
      [ 65 137 243 ]
    ;
    "mov r11d,edi" = expect ''"mov r11d,edi" to be correct [41 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "edi"))
      [ 65 137 251 ]
    ;
    "mov r11d,r8d" = expect ''"mov r11d,r8d" to be correct [45 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "r8d"))
      [ 69 137 195 ]
    ;
    "mov r11d,r9d" = expect ''"mov r11d,r9d" to be correct [45 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "r9d"))
      [ 69 137 203 ]
    ;
    "mov r11d,r10d" = expect ''"mov r11d,r10d" to be correct [45 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "r10d"))
      [ 69 137 211 ]
    ;
    "mov r11d,r11d" = expect ''"mov r11d,r11d" to be correct [45 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "r11d"))
      [ 69 137 219 ]
    ;
    "mov r11d,r12d" = expect ''"mov r11d,r12d" to be correct [45 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "r12d"))
      [ 69 137 227 ]
    ;
    "mov r11d,r13d" = expect ''"mov r11d,r13d" to be correct [45 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "r13d"))
      [ 69 137 235 ]
    ;
    "mov r11d,r14d" = expect ''"mov r11d,r14d" to be correct [45 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "r14d"))
      [ 69 137 243 ]
    ;
    "mov r11d,r15d" = expect ''"mov r11d,r15d" to be correct [45 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11d" "r15d"))
      [ 69 137 251 ]
    ;
    "mov r11,rax" = expect ''"mov r11,rax" to be correct [49 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "rax"))
      [ 73 137 195 ]
    ;
    "mov r11,rcx" = expect ''"mov r11,rcx" to be correct [49 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "rcx"))
      [ 73 137 203 ]
    ;
    "mov r11,rdx" = expect ''"mov r11,rdx" to be correct [49 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "rdx"))
      [ 73 137 211 ]
    ;
    "mov r11,rbx" = expect ''"mov r11,rbx" to be correct [49 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "rbx"))
      [ 73 137 219 ]
    ;
    "mov r11,rsp" = expect ''"mov r11,rsp" to be correct [49 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "rsp"))
      [ 73 137 227 ]
    ;
    "mov r11,rbp" = expect ''"mov r11,rbp" to be correct [49 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "rbp"))
      [ 73 137 235 ]
    ;
    "mov r11,rsi" = expect ''"mov r11,rsi" to be correct [49 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "rsi"))
      [ 73 137 243 ]
    ;
    "mov r11,rdi" = expect ''"mov r11,rdi" to be correct [49 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "rdi"))
      [ 73 137 251 ]
    ;
    "mov r11,r8" = expect ''"mov r11,r8" to be correct [4d 89 c3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "r8"))
      [ 77 137 195 ]
    ;
    "mov r11,r9" = expect ''"mov r11,r9" to be correct [4d 89 cb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "r9"))
      [ 77 137 203 ]
    ;
    "mov r11,r10" = expect ''"mov r11,r10" to be correct [4d 89 d3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "r10"))
      [ 77 137 211 ]
    ;
    "mov r11,r11" = expect ''"mov r11,r11" to be correct [4d 89 db]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "r11"))
      [ 77 137 219 ]
    ;
    "mov r11,r12" = expect ''"mov r11,r12" to be correct [4d 89 e3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "r12"))
      [ 77 137 227 ]
    ;
    "mov r11,r13" = expect ''"mov r11,r13" to be correct [4d 89 eb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "r13"))
      [ 77 137 235 ]
    ;
    "mov r11,r14" = expect ''"mov r11,r14" to be correct [4d 89 f3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "r14"))
      [ 77 137 243 ]
    ;
    "mov r11,r15" = expect ''"mov r11,r15" to be correct [4d 89 fb]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r11" "r15"))
      [ 77 137 251 ]
    ;
    "mov r12b,al" = expect ''"mov r12b,al" to be correct [41 88 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "al"))
      [ 65 136 196 ]
    ;
    "mov r12b,cl" = expect ''"mov r12b,cl" to be correct [41 88 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "cl"))
      [ 65 136 204 ]
    ;
    "mov r12b,dl" = expect ''"mov r12b,dl" to be correct [41 88 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "dl"))
      [ 65 136 212 ]
    ;
    "mov r12b,bl" = expect ''"mov r12b,bl" to be correct [41 88 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "bl"))
      [ 65 136 220 ]
    ;
    "mov r12b,spl" = expect ''"mov r12b,spl" to be correct [41 88 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "spl"))
      [ 65 136 228 ]
    ;
    "mov r12b,bpl" = expect ''"mov r12b,bpl" to be correct [41 88 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "bpl"))
      [ 65 136 236 ]
    ;
    "mov r12b,sil" = expect ''"mov r12b,sil" to be correct [41 88 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "sil"))
      [ 65 136 244 ]
    ;
    "mov r12b,dil" = expect ''"mov r12b,dil" to be correct [41 88 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "dil"))
      [ 65 136 252 ]
    ;
    "mov r12b,r8b" = expect ''"mov r12b,r8b" to be correct [45 88 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "r8b"))
      [ 69 136 196 ]
    ;
    "mov r12b,r9b" = expect ''"mov r12b,r9b" to be correct [45 88 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "r9b"))
      [ 69 136 204 ]
    ;
    "mov r12b,r10b" = expect ''"mov r12b,r10b" to be correct [45 88 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "r10b"))
      [ 69 136 212 ]
    ;
    "mov r12b,r11b" = expect ''"mov r12b,r11b" to be correct [45 88 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "r11b"))
      [ 69 136 220 ]
    ;
    "mov r12b,r12b" = expect ''"mov r12b,r12b" to be correct [45 88 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "r12b"))
      [ 69 136 228 ]
    ;
    "mov r12b,r13b" = expect ''"mov r12b,r13b" to be correct [45 88 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "r13b"))
      [ 69 136 236 ]
    ;
    "mov r12b,r14b" = expect ''"mov r12b,r14b" to be correct [45 88 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "r14b"))
      [ 69 136 244 ]
    ;
    "mov r12b,r15b" = expect ''"mov r12b,r15b" to be correct [45 88 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12b" "r15b"))
      [ 69 136 252 ]
    ;
    "mov r12w,ax" = expect ''"mov r12w,ax" to be correct [66 41 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "ax"))
      [ 102 65 137 196 ]
    ;
    "mov r12w,cx" = expect ''"mov r12w,cx" to be correct [66 41 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "cx"))
      [ 102 65 137 204 ]
    ;
    "mov r12w,dx" = expect ''"mov r12w,dx" to be correct [66 41 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "dx"))
      [ 102 65 137 212 ]
    ;
    "mov r12w,bx" = expect ''"mov r12w,bx" to be correct [66 41 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "bx"))
      [ 102 65 137 220 ]
    ;
    "mov r12w,sp" = expect ''"mov r12w,sp" to be correct [66 41 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "sp"))
      [ 102 65 137 228 ]
    ;
    "mov r12w,bp" = expect ''"mov r12w,bp" to be correct [66 41 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "bp"))
      [ 102 65 137 236 ]
    ;
    "mov r12w,si" = expect ''"mov r12w,si" to be correct [66 41 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "si"))
      [ 102 65 137 244 ]
    ;
    "mov r12w,di" = expect ''"mov r12w,di" to be correct [66 41 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "di"))
      [ 102 65 137 252 ]
    ;
    "mov r12w,r8w" = expect ''"mov r12w,r8w" to be correct [66 45 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "r8w"))
      [ 102 69 137 196 ]
    ;
    "mov r12w,r9w" = expect ''"mov r12w,r9w" to be correct [66 45 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "r9w"))
      [ 102 69 137 204 ]
    ;
    "mov r12w,r10w" = expect ''"mov r12w,r10w" to be correct [66 45 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "r10w"))
      [ 102 69 137 212 ]
    ;
    "mov r12w,r11w" = expect ''"mov r12w,r11w" to be correct [66 45 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "r11w"))
      [ 102 69 137 220 ]
    ;
    "mov r12w,r12w" = expect ''"mov r12w,r12w" to be correct [66 45 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "r12w"))
      [ 102 69 137 228 ]
    ;
    "mov r12w,r13w" = expect ''"mov r12w,r13w" to be correct [66 45 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "r13w"))
      [ 102 69 137 236 ]
    ;
    "mov r12w,r14w" = expect ''"mov r12w,r14w" to be correct [66 45 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "r14w"))
      [ 102 69 137 244 ]
    ;
    "mov r12w,r15w" = expect ''"mov r12w,r15w" to be correct [66 45 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12w" "r15w"))
      [ 102 69 137 252 ]
    ;
    "mov r12d,eax" = expect ''"mov r12d,eax" to be correct [41 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "eax"))
      [ 65 137 196 ]
    ;
    "mov r12d,ecx" = expect ''"mov r12d,ecx" to be correct [41 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "ecx"))
      [ 65 137 204 ]
    ;
    "mov r12d,edx" = expect ''"mov r12d,edx" to be correct [41 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "edx"))
      [ 65 137 212 ]
    ;
    "mov r12d,ebx" = expect ''"mov r12d,ebx" to be correct [41 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "ebx"))
      [ 65 137 220 ]
    ;
    "mov r12d,esp" = expect ''"mov r12d,esp" to be correct [41 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "esp"))
      [ 65 137 228 ]
    ;
    "mov r12d,ebp" = expect ''"mov r12d,ebp" to be correct [41 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "ebp"))
      [ 65 137 236 ]
    ;
    "mov r12d,esi" = expect ''"mov r12d,esi" to be correct [41 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "esi"))
      [ 65 137 244 ]
    ;
    "mov r12d,edi" = expect ''"mov r12d,edi" to be correct [41 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "edi"))
      [ 65 137 252 ]
    ;
    "mov r12d,r8d" = expect ''"mov r12d,r8d" to be correct [45 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "r8d"))
      [ 69 137 196 ]
    ;
    "mov r12d,r9d" = expect ''"mov r12d,r9d" to be correct [45 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "r9d"))
      [ 69 137 204 ]
    ;
    "mov r12d,r10d" = expect ''"mov r12d,r10d" to be correct [45 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "r10d"))
      [ 69 137 212 ]
    ;
    "mov r12d,r11d" = expect ''"mov r12d,r11d" to be correct [45 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "r11d"))
      [ 69 137 220 ]
    ;
    "mov r12d,r12d" = expect ''"mov r12d,r12d" to be correct [45 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "r12d"))
      [ 69 137 228 ]
    ;
    "mov r12d,r13d" = expect ''"mov r12d,r13d" to be correct [45 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "r13d"))
      [ 69 137 236 ]
    ;
    "mov r12d,r14d" = expect ''"mov r12d,r14d" to be correct [45 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "r14d"))
      [ 69 137 244 ]
    ;
    "mov r12d,r15d" = expect ''"mov r12d,r15d" to be correct [45 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12d" "r15d"))
      [ 69 137 252 ]
    ;
    "mov r12,rax" = expect ''"mov r12,rax" to be correct [49 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "rax"))
      [ 73 137 196 ]
    ;
    "mov r12,rcx" = expect ''"mov r12,rcx" to be correct [49 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "rcx"))
      [ 73 137 204 ]
    ;
    "mov r12,rdx" = expect ''"mov r12,rdx" to be correct [49 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "rdx"))
      [ 73 137 212 ]
    ;
    "mov r12,rbx" = expect ''"mov r12,rbx" to be correct [49 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "rbx"))
      [ 73 137 220 ]
    ;
    "mov r12,rsp" = expect ''"mov r12,rsp" to be correct [49 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "rsp"))
      [ 73 137 228 ]
    ;
    "mov r12,rbp" = expect ''"mov r12,rbp" to be correct [49 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "rbp"))
      [ 73 137 236 ]
    ;
    "mov r12,rsi" = expect ''"mov r12,rsi" to be correct [49 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "rsi"))
      [ 73 137 244 ]
    ;
    "mov r12,rdi" = expect ''"mov r12,rdi" to be correct [49 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "rdi"))
      [ 73 137 252 ]
    ;
    "mov r12,r8" = expect ''"mov r12,r8" to be correct [4d 89 c4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "r8"))
      [ 77 137 196 ]
    ;
    "mov r12,r9" = expect ''"mov r12,r9" to be correct [4d 89 cc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "r9"))
      [ 77 137 204 ]
    ;
    "mov r12,r10" = expect ''"mov r12,r10" to be correct [4d 89 d4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "r10"))
      [ 77 137 212 ]
    ;
    "mov r12,r11" = expect ''"mov r12,r11" to be correct [4d 89 dc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "r11"))
      [ 77 137 220 ]
    ;
    "mov r12,r12" = expect ''"mov r12,r12" to be correct [4d 89 e4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "r12"))
      [ 77 137 228 ]
    ;
    "mov r12,r13" = expect ''"mov r12,r13" to be correct [4d 89 ec]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "r13"))
      [ 77 137 236 ]
    ;
    "mov r12,r14" = expect ''"mov r12,r14" to be correct [4d 89 f4]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "r14"))
      [ 77 137 244 ]
    ;
    "mov r12,r15" = expect ''"mov r12,r15" to be correct [4d 89 fc]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r12" "r15"))
      [ 77 137 252 ]
    ;
    "mov r13b,al" = expect ''"mov r13b,al" to be correct [41 88 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "al"))
      [ 65 136 197 ]
    ;
    "mov r13b,cl" = expect ''"mov r13b,cl" to be correct [41 88 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "cl"))
      [ 65 136 205 ]
    ;
    "mov r13b,dl" = expect ''"mov r13b,dl" to be correct [41 88 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "dl"))
      [ 65 136 213 ]
    ;
    "mov r13b,bl" = expect ''"mov r13b,bl" to be correct [41 88 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "bl"))
      [ 65 136 221 ]
    ;
    "mov r13b,spl" = expect ''"mov r13b,spl" to be correct [41 88 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "spl"))
      [ 65 136 229 ]
    ;
    "mov r13b,bpl" = expect ''"mov r13b,bpl" to be correct [41 88 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "bpl"))
      [ 65 136 237 ]
    ;
    "mov r13b,sil" = expect ''"mov r13b,sil" to be correct [41 88 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "sil"))
      [ 65 136 245 ]
    ;
    "mov r13b,dil" = expect ''"mov r13b,dil" to be correct [41 88 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "dil"))
      [ 65 136 253 ]
    ;
    "mov r13b,r8b" = expect ''"mov r13b,r8b" to be correct [45 88 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "r8b"))
      [ 69 136 197 ]
    ;
    "mov r13b,r9b" = expect ''"mov r13b,r9b" to be correct [45 88 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "r9b"))
      [ 69 136 205 ]
    ;
    "mov r13b,r10b" = expect ''"mov r13b,r10b" to be correct [45 88 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "r10b"))
      [ 69 136 213 ]
    ;
    "mov r13b,r11b" = expect ''"mov r13b,r11b" to be correct [45 88 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "r11b"))
      [ 69 136 221 ]
    ;
    "mov r13b,r12b" = expect ''"mov r13b,r12b" to be correct [45 88 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "r12b"))
      [ 69 136 229 ]
    ;
    "mov r13b,r13b" = expect ''"mov r13b,r13b" to be correct [45 88 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "r13b"))
      [ 69 136 237 ]
    ;
    "mov r13b,r14b" = expect ''"mov r13b,r14b" to be correct [45 88 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "r14b"))
      [ 69 136 245 ]
    ;
    "mov r13b,r15b" = expect ''"mov r13b,r15b" to be correct [45 88 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13b" "r15b"))
      [ 69 136 253 ]
    ;
    "mov r13w,ax" = expect ''"mov r13w,ax" to be correct [66 41 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "ax"))
      [ 102 65 137 197 ]
    ;
    "mov r13w,cx" = expect ''"mov r13w,cx" to be correct [66 41 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "cx"))
      [ 102 65 137 205 ]
    ;
    "mov r13w,dx" = expect ''"mov r13w,dx" to be correct [66 41 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "dx"))
      [ 102 65 137 213 ]
    ;
    "mov r13w,bx" = expect ''"mov r13w,bx" to be correct [66 41 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "bx"))
      [ 102 65 137 221 ]
    ;
    "mov r13w,sp" = expect ''"mov r13w,sp" to be correct [66 41 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "sp"))
      [ 102 65 137 229 ]
    ;
    "mov r13w,bp" = expect ''"mov r13w,bp" to be correct [66 41 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "bp"))
      [ 102 65 137 237 ]
    ;
    "mov r13w,si" = expect ''"mov r13w,si" to be correct [66 41 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "si"))
      [ 102 65 137 245 ]
    ;
    "mov r13w,di" = expect ''"mov r13w,di" to be correct [66 41 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "di"))
      [ 102 65 137 253 ]
    ;
    "mov r13w,r8w" = expect ''"mov r13w,r8w" to be correct [66 45 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "r8w"))
      [ 102 69 137 197 ]
    ;
    "mov r13w,r9w" = expect ''"mov r13w,r9w" to be correct [66 45 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "r9w"))
      [ 102 69 137 205 ]
    ;
    "mov r13w,r10w" = expect ''"mov r13w,r10w" to be correct [66 45 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "r10w"))
      [ 102 69 137 213 ]
    ;
    "mov r13w,r11w" = expect ''"mov r13w,r11w" to be correct [66 45 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "r11w"))
      [ 102 69 137 221 ]
    ;
    "mov r13w,r12w" = expect ''"mov r13w,r12w" to be correct [66 45 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "r12w"))
      [ 102 69 137 229 ]
    ;
    "mov r13w,r13w" = expect ''"mov r13w,r13w" to be correct [66 45 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "r13w"))
      [ 102 69 137 237 ]
    ;
    "mov r13w,r14w" = expect ''"mov r13w,r14w" to be correct [66 45 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "r14w"))
      [ 102 69 137 245 ]
    ;
    "mov r13w,r15w" = expect ''"mov r13w,r15w" to be correct [66 45 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13w" "r15w"))
      [ 102 69 137 253 ]
    ;
    "mov r13d,eax" = expect ''"mov r13d,eax" to be correct [41 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "eax"))
      [ 65 137 197 ]
    ;
    "mov r13d,ecx" = expect ''"mov r13d,ecx" to be correct [41 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "ecx"))
      [ 65 137 205 ]
    ;
    "mov r13d,edx" = expect ''"mov r13d,edx" to be correct [41 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "edx"))
      [ 65 137 213 ]
    ;
    "mov r13d,ebx" = expect ''"mov r13d,ebx" to be correct [41 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "ebx"))
      [ 65 137 221 ]
    ;
    "mov r13d,esp" = expect ''"mov r13d,esp" to be correct [41 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "esp"))
      [ 65 137 229 ]
    ;
    "mov r13d,ebp" = expect ''"mov r13d,ebp" to be correct [41 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "ebp"))
      [ 65 137 237 ]
    ;
    "mov r13d,esi" = expect ''"mov r13d,esi" to be correct [41 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "esi"))
      [ 65 137 245 ]
    ;
    "mov r13d,edi" = expect ''"mov r13d,edi" to be correct [41 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "edi"))
      [ 65 137 253 ]
    ;
    "mov r13d,r8d" = expect ''"mov r13d,r8d" to be correct [45 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "r8d"))
      [ 69 137 197 ]
    ;
    "mov r13d,r9d" = expect ''"mov r13d,r9d" to be correct [45 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "r9d"))
      [ 69 137 205 ]
    ;
    "mov r13d,r10d" = expect ''"mov r13d,r10d" to be correct [45 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "r10d"))
      [ 69 137 213 ]
    ;
    "mov r13d,r11d" = expect ''"mov r13d,r11d" to be correct [45 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "r11d"))
      [ 69 137 221 ]
    ;
    "mov r13d,r12d" = expect ''"mov r13d,r12d" to be correct [45 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "r12d"))
      [ 69 137 229 ]
    ;
    "mov r13d,r13d" = expect ''"mov r13d,r13d" to be correct [45 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "r13d"))
      [ 69 137 237 ]
    ;
    "mov r13d,r14d" = expect ''"mov r13d,r14d" to be correct [45 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "r14d"))
      [ 69 137 245 ]
    ;
    "mov r13d,r15d" = expect ''"mov r13d,r15d" to be correct [45 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13d" "r15d"))
      [ 69 137 253 ]
    ;
    "mov r13,rax" = expect ''"mov r13,rax" to be correct [49 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "rax"))
      [ 73 137 197 ]
    ;
    "mov r13,rcx" = expect ''"mov r13,rcx" to be correct [49 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "rcx"))
      [ 73 137 205 ]
    ;
    "mov r13,rdx" = expect ''"mov r13,rdx" to be correct [49 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "rdx"))
      [ 73 137 213 ]
    ;
    "mov r13,rbx" = expect ''"mov r13,rbx" to be correct [49 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "rbx"))
      [ 73 137 221 ]
    ;
    "mov r13,rsp" = expect ''"mov r13,rsp" to be correct [49 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "rsp"))
      [ 73 137 229 ]
    ;
    "mov r13,rbp" = expect ''"mov r13,rbp" to be correct [49 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "rbp"))
      [ 73 137 237 ]
    ;
    "mov r13,rsi" = expect ''"mov r13,rsi" to be correct [49 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "rsi"))
      [ 73 137 245 ]
    ;
    "mov r13,rdi" = expect ''"mov r13,rdi" to be correct [49 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "rdi"))
      [ 73 137 253 ]
    ;
    "mov r13,r8" = expect ''"mov r13,r8" to be correct [4d 89 c5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "r8"))
      [ 77 137 197 ]
    ;
    "mov r13,r9" = expect ''"mov r13,r9" to be correct [4d 89 cd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "r9"))
      [ 77 137 205 ]
    ;
    "mov r13,r10" = expect ''"mov r13,r10" to be correct [4d 89 d5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "r10"))
      [ 77 137 213 ]
    ;
    "mov r13,r11" = expect ''"mov r13,r11" to be correct [4d 89 dd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "r11"))
      [ 77 137 221 ]
    ;
    "mov r13,r12" = expect ''"mov r13,r12" to be correct [4d 89 e5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "r12"))
      [ 77 137 229 ]
    ;
    "mov r13,r13" = expect ''"mov r13,r13" to be correct [4d 89 ed]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "r13"))
      [ 77 137 237 ]
    ;
    "mov r13,r14" = expect ''"mov r13,r14" to be correct [4d 89 f5]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "r14"))
      [ 77 137 245 ]
    ;
    "mov r13,r15" = expect ''"mov r13,r15" to be correct [4d 89 fd]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r13" "r15"))
      [ 77 137 253 ]
    ;
    "mov r14b,al" = expect ''"mov r14b,al" to be correct [41 88 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "al"))
      [ 65 136 198 ]
    ;
    "mov r14b,cl" = expect ''"mov r14b,cl" to be correct [41 88 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "cl"))
      [ 65 136 206 ]
    ;
    "mov r14b,dl" = expect ''"mov r14b,dl" to be correct [41 88 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "dl"))
      [ 65 136 214 ]
    ;
    "mov r14b,bl" = expect ''"mov r14b,bl" to be correct [41 88 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "bl"))
      [ 65 136 222 ]
    ;
    "mov r14b,spl" = expect ''"mov r14b,spl" to be correct [41 88 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "spl"))
      [ 65 136 230 ]
    ;
    "mov r14b,bpl" = expect ''"mov r14b,bpl" to be correct [41 88 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "bpl"))
      [ 65 136 238 ]
    ;
    "mov r14b,sil" = expect ''"mov r14b,sil" to be correct [41 88 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "sil"))
      [ 65 136 246 ]
    ;
    "mov r14b,dil" = expect ''"mov r14b,dil" to be correct [41 88 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "dil"))
      [ 65 136 254 ]
    ;
    "mov r14b,r8b" = expect ''"mov r14b,r8b" to be correct [45 88 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "r8b"))
      [ 69 136 198 ]
    ;
    "mov r14b,r9b" = expect ''"mov r14b,r9b" to be correct [45 88 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "r9b"))
      [ 69 136 206 ]
    ;
    "mov r14b,r10b" = expect ''"mov r14b,r10b" to be correct [45 88 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "r10b"))
      [ 69 136 214 ]
    ;
    "mov r14b,r11b" = expect ''"mov r14b,r11b" to be correct [45 88 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "r11b"))
      [ 69 136 222 ]
    ;
    "mov r14b,r12b" = expect ''"mov r14b,r12b" to be correct [45 88 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "r12b"))
      [ 69 136 230 ]
    ;
    "mov r14b,r13b" = expect ''"mov r14b,r13b" to be correct [45 88 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "r13b"))
      [ 69 136 238 ]
    ;
    "mov r14b,r14b" = expect ''"mov r14b,r14b" to be correct [45 88 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "r14b"))
      [ 69 136 246 ]
    ;
    "mov r14b,r15b" = expect ''"mov r14b,r15b" to be correct [45 88 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14b" "r15b"))
      [ 69 136 254 ]
    ;
    "mov r14w,ax" = expect ''"mov r14w,ax" to be correct [66 41 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "ax"))
      [ 102 65 137 198 ]
    ;
    "mov r14w,cx" = expect ''"mov r14w,cx" to be correct [66 41 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "cx"))
      [ 102 65 137 206 ]
    ;
    "mov r14w,dx" = expect ''"mov r14w,dx" to be correct [66 41 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "dx"))
      [ 102 65 137 214 ]
    ;
    "mov r14w,bx" = expect ''"mov r14w,bx" to be correct [66 41 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "bx"))
      [ 102 65 137 222 ]
    ;
    "mov r14w,sp" = expect ''"mov r14w,sp" to be correct [66 41 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "sp"))
      [ 102 65 137 230 ]
    ;
    "mov r14w,bp" = expect ''"mov r14w,bp" to be correct [66 41 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "bp"))
      [ 102 65 137 238 ]
    ;
    "mov r14w,si" = expect ''"mov r14w,si" to be correct [66 41 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "si"))
      [ 102 65 137 246 ]
    ;
    "mov r14w,di" = expect ''"mov r14w,di" to be correct [66 41 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "di"))
      [ 102 65 137 254 ]
    ;
    "mov r14w,r8w" = expect ''"mov r14w,r8w" to be correct [66 45 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "r8w"))
      [ 102 69 137 198 ]
    ;
    "mov r14w,r9w" = expect ''"mov r14w,r9w" to be correct [66 45 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "r9w"))
      [ 102 69 137 206 ]
    ;
    "mov r14w,r10w" = expect ''"mov r14w,r10w" to be correct [66 45 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "r10w"))
      [ 102 69 137 214 ]
    ;
    "mov r14w,r11w" = expect ''"mov r14w,r11w" to be correct [66 45 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "r11w"))
      [ 102 69 137 222 ]
    ;
    "mov r14w,r12w" = expect ''"mov r14w,r12w" to be correct [66 45 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "r12w"))
      [ 102 69 137 230 ]
    ;
    "mov r14w,r13w" = expect ''"mov r14w,r13w" to be correct [66 45 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "r13w"))
      [ 102 69 137 238 ]
    ;
    "mov r14w,r14w" = expect ''"mov r14w,r14w" to be correct [66 45 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "r14w"))
      [ 102 69 137 246 ]
    ;
    "mov r14w,r15w" = expect ''"mov r14w,r15w" to be correct [66 45 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14w" "r15w"))
      [ 102 69 137 254 ]
    ;
    "mov r14d,eax" = expect ''"mov r14d,eax" to be correct [41 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "eax"))
      [ 65 137 198 ]
    ;
    "mov r14d,ecx" = expect ''"mov r14d,ecx" to be correct [41 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "ecx"))
      [ 65 137 206 ]
    ;
    "mov r14d,edx" = expect ''"mov r14d,edx" to be correct [41 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "edx"))
      [ 65 137 214 ]
    ;
    "mov r14d,ebx" = expect ''"mov r14d,ebx" to be correct [41 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "ebx"))
      [ 65 137 222 ]
    ;
    "mov r14d,esp" = expect ''"mov r14d,esp" to be correct [41 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "esp"))
      [ 65 137 230 ]
    ;
    "mov r14d,ebp" = expect ''"mov r14d,ebp" to be correct [41 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "ebp"))
      [ 65 137 238 ]
    ;
    "mov r14d,esi" = expect ''"mov r14d,esi" to be correct [41 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "esi"))
      [ 65 137 246 ]
    ;
    "mov r14d,edi" = expect ''"mov r14d,edi" to be correct [41 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "edi"))
      [ 65 137 254 ]
    ;
    "mov r14d,r8d" = expect ''"mov r14d,r8d" to be correct [45 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "r8d"))
      [ 69 137 198 ]
    ;
    "mov r14d,r9d" = expect ''"mov r14d,r9d" to be correct [45 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "r9d"))
      [ 69 137 206 ]
    ;
    "mov r14d,r10d" = expect ''"mov r14d,r10d" to be correct [45 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "r10d"))
      [ 69 137 214 ]
    ;
    "mov r14d,r11d" = expect ''"mov r14d,r11d" to be correct [45 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "r11d"))
      [ 69 137 222 ]
    ;
    "mov r14d,r12d" = expect ''"mov r14d,r12d" to be correct [45 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "r12d"))
      [ 69 137 230 ]
    ;
    "mov r14d,r13d" = expect ''"mov r14d,r13d" to be correct [45 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "r13d"))
      [ 69 137 238 ]
    ;
    "mov r14d,r14d" = expect ''"mov r14d,r14d" to be correct [45 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "r14d"))
      [ 69 137 246 ]
    ;
    "mov r14d,r15d" = expect ''"mov r14d,r15d" to be correct [45 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14d" "r15d"))
      [ 69 137 254 ]
    ;
    "mov r14,rax" = expect ''"mov r14,rax" to be correct [49 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "rax"))
      [ 73 137 198 ]
    ;
    "mov r14,rcx" = expect ''"mov r14,rcx" to be correct [49 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "rcx"))
      [ 73 137 206 ]
    ;
    "mov r14,rdx" = expect ''"mov r14,rdx" to be correct [49 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "rdx"))
      [ 73 137 214 ]
    ;
    "mov r14,rbx" = expect ''"mov r14,rbx" to be correct [49 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "rbx"))
      [ 73 137 222 ]
    ;
    "mov r14,rsp" = expect ''"mov r14,rsp" to be correct [49 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "rsp"))
      [ 73 137 230 ]
    ;
    "mov r14,rbp" = expect ''"mov r14,rbp" to be correct [49 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "rbp"))
      [ 73 137 238 ]
    ;
    "mov r14,rsi" = expect ''"mov r14,rsi" to be correct [49 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "rsi"))
      [ 73 137 246 ]
    ;
    "mov r14,rdi" = expect ''"mov r14,rdi" to be correct [49 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "rdi"))
      [ 73 137 254 ]
    ;
    "mov r14,r8" = expect ''"mov r14,r8" to be correct [4d 89 c6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "r8"))
      [ 77 137 198 ]
    ;
    "mov r14,r9" = expect ''"mov r14,r9" to be correct [4d 89 ce]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "r9"))
      [ 77 137 206 ]
    ;
    "mov r14,r10" = expect ''"mov r14,r10" to be correct [4d 89 d6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "r10"))
      [ 77 137 214 ]
    ;
    "mov r14,r11" = expect ''"mov r14,r11" to be correct [4d 89 de]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "r11"))
      [ 77 137 222 ]
    ;
    "mov r14,r12" = expect ''"mov r14,r12" to be correct [4d 89 e6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "r12"))
      [ 77 137 230 ]
    ;
    "mov r14,r13" = expect ''"mov r14,r13" to be correct [4d 89 ee]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "r13"))
      [ 77 137 238 ]
    ;
    "mov r14,r14" = expect ''"mov r14,r14" to be correct [4d 89 f6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "r14"))
      [ 77 137 246 ]
    ;
    "mov r14,r15" = expect ''"mov r14,r15" to be correct [4d 89 fe]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r14" "r15"))
      [ 77 137 254 ]
    ;
    "mov r15b,al" = expect ''"mov r15b,al" to be correct [41 88 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "al"))
      [ 65 136 199 ]
    ;
    "mov r15b,cl" = expect ''"mov r15b,cl" to be correct [41 88 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "cl"))
      [ 65 136 207 ]
    ;
    "mov r15b,dl" = expect ''"mov r15b,dl" to be correct [41 88 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "dl"))
      [ 65 136 215 ]
    ;
    "mov r15b,bl" = expect ''"mov r15b,bl" to be correct [41 88 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "bl"))
      [ 65 136 223 ]
    ;
    "mov r15b,spl" = expect ''"mov r15b,spl" to be correct [41 88 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "spl"))
      [ 65 136 231 ]
    ;
    "mov r15b,bpl" = expect ''"mov r15b,bpl" to be correct [41 88 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "bpl"))
      [ 65 136 239 ]
    ;
    "mov r15b,sil" = expect ''"mov r15b,sil" to be correct [41 88 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "sil"))
      [ 65 136 247 ]
    ;
    "mov r15b,dil" = expect ''"mov r15b,dil" to be correct [41 88 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "dil"))
      [ 65 136 255 ]
    ;
    "mov r15b,r8b" = expect ''"mov r15b,r8b" to be correct [45 88 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "r8b"))
      [ 69 136 199 ]
    ;
    "mov r15b,r9b" = expect ''"mov r15b,r9b" to be correct [45 88 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "r9b"))
      [ 69 136 207 ]
    ;
    "mov r15b,r10b" = expect ''"mov r15b,r10b" to be correct [45 88 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "r10b"))
      [ 69 136 215 ]
    ;
    "mov r15b,r11b" = expect ''"mov r15b,r11b" to be correct [45 88 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "r11b"))
      [ 69 136 223 ]
    ;
    "mov r15b,r12b" = expect ''"mov r15b,r12b" to be correct [45 88 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "r12b"))
      [ 69 136 231 ]
    ;
    "mov r15b,r13b" = expect ''"mov r15b,r13b" to be correct [45 88 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "r13b"))
      [ 69 136 239 ]
    ;
    "mov r15b,r14b" = expect ''"mov r15b,r14b" to be correct [45 88 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "r14b"))
      [ 69 136 247 ]
    ;
    "mov r15b,r15b" = expect ''"mov r15b,r15b" to be correct [45 88 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15b" "r15b"))
      [ 69 136 255 ]
    ;
    "mov r15w,ax" = expect ''"mov r15w,ax" to be correct [66 41 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "ax"))
      [ 102 65 137 199 ]
    ;
    "mov r15w,cx" = expect ''"mov r15w,cx" to be correct [66 41 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "cx"))
      [ 102 65 137 207 ]
    ;
    "mov r15w,dx" = expect ''"mov r15w,dx" to be correct [66 41 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "dx"))
      [ 102 65 137 215 ]
    ;
    "mov r15w,bx" = expect ''"mov r15w,bx" to be correct [66 41 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "bx"))
      [ 102 65 137 223 ]
    ;
    "mov r15w,sp" = expect ''"mov r15w,sp" to be correct [66 41 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "sp"))
      [ 102 65 137 231 ]
    ;
    "mov r15w,bp" = expect ''"mov r15w,bp" to be correct [66 41 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "bp"))
      [ 102 65 137 239 ]
    ;
    "mov r15w,si" = expect ''"mov r15w,si" to be correct [66 41 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "si"))
      [ 102 65 137 247 ]
    ;
    "mov r15w,di" = expect ''"mov r15w,di" to be correct [66 41 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "di"))
      [ 102 65 137 255 ]
    ;
    "mov r15w,r8w" = expect ''"mov r15w,r8w" to be correct [66 45 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "r8w"))
      [ 102 69 137 199 ]
    ;
    "mov r15w,r9w" = expect ''"mov r15w,r9w" to be correct [66 45 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "r9w"))
      [ 102 69 137 207 ]
    ;
    "mov r15w,r10w" = expect ''"mov r15w,r10w" to be correct [66 45 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "r10w"))
      [ 102 69 137 215 ]
    ;
    "mov r15w,r11w" = expect ''"mov r15w,r11w" to be correct [66 45 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "r11w"))
      [ 102 69 137 223 ]
    ;
    "mov r15w,r12w" = expect ''"mov r15w,r12w" to be correct [66 45 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "r12w"))
      [ 102 69 137 231 ]
    ;
    "mov r15w,r13w" = expect ''"mov r15w,r13w" to be correct [66 45 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "r13w"))
      [ 102 69 137 239 ]
    ;
    "mov r15w,r14w" = expect ''"mov r15w,r14w" to be correct [66 45 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "r14w"))
      [ 102 69 137 247 ]
    ;
    "mov r15w,r15w" = expect ''"mov r15w,r15w" to be correct [66 45 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15w" "r15w"))
      [ 102 69 137 255 ]
    ;
    "mov r15d,eax" = expect ''"mov r15d,eax" to be correct [41 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "eax"))
      [ 65 137 199 ]
    ;
    "mov r15d,ecx" = expect ''"mov r15d,ecx" to be correct [41 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "ecx"))
      [ 65 137 207 ]
    ;
    "mov r15d,edx" = expect ''"mov r15d,edx" to be correct [41 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "edx"))
      [ 65 137 215 ]
    ;
    "mov r15d,ebx" = expect ''"mov r15d,ebx" to be correct [41 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "ebx"))
      [ 65 137 223 ]
    ;
    "mov r15d,esp" = expect ''"mov r15d,esp" to be correct [41 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "esp"))
      [ 65 137 231 ]
    ;
    "mov r15d,ebp" = expect ''"mov r15d,ebp" to be correct [41 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "ebp"))
      [ 65 137 239 ]
    ;
    "mov r15d,esi" = expect ''"mov r15d,esi" to be correct [41 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "esi"))
      [ 65 137 247 ]
    ;
    "mov r15d,edi" = expect ''"mov r15d,edi" to be correct [41 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "edi"))
      [ 65 137 255 ]
    ;
    "mov r15d,r8d" = expect ''"mov r15d,r8d" to be correct [45 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "r8d"))
      [ 69 137 199 ]
    ;
    "mov r15d,r9d" = expect ''"mov r15d,r9d" to be correct [45 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "r9d"))
      [ 69 137 207 ]
    ;
    "mov r15d,r10d" = expect ''"mov r15d,r10d" to be correct [45 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "r10d"))
      [ 69 137 215 ]
    ;
    "mov r15d,r11d" = expect ''"mov r15d,r11d" to be correct [45 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "r11d"))
      [ 69 137 223 ]
    ;
    "mov r15d,r12d" = expect ''"mov r15d,r12d" to be correct [45 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "r12d"))
      [ 69 137 231 ]
    ;
    "mov r15d,r13d" = expect ''"mov r15d,r13d" to be correct [45 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "r13d"))
      [ 69 137 239 ]
    ;
    "mov r15d,r14d" = expect ''"mov r15d,r14d" to be correct [45 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "r14d"))
      [ 69 137 247 ]
    ;
    "mov r15d,r15d" = expect ''"mov r15d,r15d" to be correct [45 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15d" "r15d"))
      [ 69 137 255 ]
    ;
    "mov r15,rax" = expect ''"mov r15,rax" to be correct [49 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "rax"))
      [ 73 137 199 ]
    ;
    "mov r15,rcx" = expect ''"mov r15,rcx" to be correct [49 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "rcx"))
      [ 73 137 207 ]
    ;
    "mov r15,rdx" = expect ''"mov r15,rdx" to be correct [49 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "rdx"))
      [ 73 137 215 ]
    ;
    "mov r15,rbx" = expect ''"mov r15,rbx" to be correct [49 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "rbx"))
      [ 73 137 223 ]
    ;
    "mov r15,rsp" = expect ''"mov r15,rsp" to be correct [49 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "rsp"))
      [ 73 137 231 ]
    ;
    "mov r15,rbp" = expect ''"mov r15,rbp" to be correct [49 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "rbp"))
      [ 73 137 239 ]
    ;
    "mov r15,rsi" = expect ''"mov r15,rsi" to be correct [49 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "rsi"))
      [ 73 137 247 ]
    ;
    "mov r15,rdi" = expect ''"mov r15,rdi" to be correct [49 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "rdi"))
      [ 73 137 255 ]
    ;
    "mov r15,r8" = expect ''"mov r15,r8" to be correct [4d 89 c7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "r8"))
      [ 77 137 199 ]
    ;
    "mov r15,r9" = expect ''"mov r15,r9" to be correct [4d 89 cf]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "r9"))
      [ 77 137 207 ]
    ;
    "mov r15,r10" = expect ''"mov r15,r10" to be correct [4d 89 d7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "r10"))
      [ 77 137 215 ]
    ;
    "mov r15,r11" = expect ''"mov r15,r11" to be correct [4d 89 df]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "r11"))
      [ 77 137 223 ]
    ;
    "mov r15,r12" = expect ''"mov r15,r12" to be correct [4d 89 e7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "r12"))
      [ 77 137 231 ]
    ;
    "mov r15,r13" = expect ''"mov r15,r13" to be correct [4d 89 ef]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "r13"))
      [ 77 137 239 ]
    ;
    "mov r15,r14" = expect ''"mov r15,r14" to be correct [4d 89 f7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "r14"))
      [ 77 137 247 ]
    ;
    "mov r15,r15" = expect ''"mov r15,r15" to be correct [4d 89 ff]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_reg "r15" "r15"))
      [ 77 137 255 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["mov","MOV_from_mem",["reg","mem"]]
  #
  "MOV_from_mem" = {
    "mov rax,[rax]" = expect ''"mov rax,[rax]" to be correct [48 8b 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "rax"))
      [ 72 139 0 ]
    ;
    "mov rax,[rcx]" = expect ''"mov rax,[rcx]" to be correct [48 8b 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "rcx"))
      [ 72 139 1 ]
    ;
    "mov rax,[rdx]" = expect ''"mov rax,[rdx]" to be correct [48 8b 2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "rdx"))
      [ 72 139 2 ]
    ;
    "mov rax,[rbx]" = expect ''"mov rax,[rbx]" to be correct [48 8b 3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "rbx"))
      [ 72 139 3 ]
    ;
    "mov rax,[rsp]" = expect ''"mov rax,[rsp]" to be correct [48 8b 4 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "rsp"))
      [ 72 139 4 36 ]
    ;
    "mov rax,[rbp]" = expect ''"mov rax,[rbp]" to be correct [48 8b 45 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "rbp"))
      [ 72 139 69 0 ]
    ;
    "mov rax,[rsi]" = expect ''"mov rax,[rsi]" to be correct [48 8b 6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "rsi"))
      [ 72 139 6 ]
    ;
    "mov rax,[rdi]" = expect ''"mov rax,[rdi]" to be correct [48 8b 7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "rdi"))
      [ 72 139 7 ]
    ;
    "mov rax,[r8]" = expect ''"mov rax,[r8]" to be correct [49 8b 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "r8"))
      [ 73 139 0 ]
    ;
    "mov rax,[r9]" = expect ''"mov rax,[r9]" to be correct [49 8b 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "r9"))
      [ 73 139 1 ]
    ;
    "mov rax,[r10]" = expect ''"mov rax,[r10]" to be correct [49 8b 2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "r10"))
      [ 73 139 2 ]
    ;
    "mov rax,[r11]" = expect ''"mov rax,[r11]" to be correct [49 8b 3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "r11"))
      [ 73 139 3 ]
    ;
    "mov rax,[r12]" = expect ''"mov rax,[r12]" to be correct [49 8b 4 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "r12"))
      [ 73 139 4 36 ]
    ;
    "mov rax,[r13]" = expect ''"mov rax,[r13]" to be correct [49 8b 45 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "r13"))
      [ 73 139 69 0 ]
    ;
    "mov rax,[r14]" = expect ''"mov rax,[r14]" to be correct [49 8b 6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "r14"))
      [ 73 139 6 ]
    ;
    "mov rax,[r15]" = expect ''"mov rax,[r15]" to be correct [49 8b 7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rax" "r15"))
      [ 73 139 7 ]
    ;
    "mov rcx,[rax]" = expect ''"mov rcx,[rax]" to be correct [48 8b 8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "rax"))
      [ 72 139 8 ]
    ;
    "mov rcx,[rcx]" = expect ''"mov rcx,[rcx]" to be correct [48 8b 9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "rcx"))
      [ 72 139 9 ]
    ;
    "mov rcx,[rdx]" = expect ''"mov rcx,[rdx]" to be correct [48 8b a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "rdx"))
      [ 72 139 10 ]
    ;
    "mov rcx,[rbx]" = expect ''"mov rcx,[rbx]" to be correct [48 8b b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "rbx"))
      [ 72 139 11 ]
    ;
    "mov rcx,[rsp]" = expect ''"mov rcx,[rsp]" to be correct [48 8b c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "rsp"))
      [ 72 139 12 36 ]
    ;
    "mov rcx,[rbp]" = expect ''"mov rcx,[rbp]" to be correct [48 8b 4d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "rbp"))
      [ 72 139 77 0 ]
    ;
    "mov rcx,[rsi]" = expect ''"mov rcx,[rsi]" to be correct [48 8b e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "rsi"))
      [ 72 139 14 ]
    ;
    "mov rcx,[rdi]" = expect ''"mov rcx,[rdi]" to be correct [48 8b f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "rdi"))
      [ 72 139 15 ]
    ;
    "mov rcx,[r8]" = expect ''"mov rcx,[r8]" to be correct [49 8b 8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "r8"))
      [ 73 139 8 ]
    ;
    "mov rcx,[r9]" = expect ''"mov rcx,[r9]" to be correct [49 8b 9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "r9"))
      [ 73 139 9 ]
    ;
    "mov rcx,[r10]" = expect ''"mov rcx,[r10]" to be correct [49 8b a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "r10"))
      [ 73 139 10 ]
    ;
    "mov rcx,[r11]" = expect ''"mov rcx,[r11]" to be correct [49 8b b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "r11"))
      [ 73 139 11 ]
    ;
    "mov rcx,[r12]" = expect ''"mov rcx,[r12]" to be correct [49 8b c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "r12"))
      [ 73 139 12 36 ]
    ;
    "mov rcx,[r13]" = expect ''"mov rcx,[r13]" to be correct [49 8b 4d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "r13"))
      [ 73 139 77 0 ]
    ;
    "mov rcx,[r14]" = expect ''"mov rcx,[r14]" to be correct [49 8b e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "r14"))
      [ 73 139 14 ]
    ;
    "mov rcx,[r15]" = expect ''"mov rcx,[r15]" to be correct [49 8b f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rcx" "r15"))
      [ 73 139 15 ]
    ;
    "mov rdx,[rax]" = expect ''"mov rdx,[rax]" to be correct [48 8b 10]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "rax"))
      [ 72 139 16 ]
    ;
    "mov rdx,[rcx]" = expect ''"mov rdx,[rcx]" to be correct [48 8b 11]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "rcx"))
      [ 72 139 17 ]
    ;
    "mov rdx,[rdx]" = expect ''"mov rdx,[rdx]" to be correct [48 8b 12]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "rdx"))
      [ 72 139 18 ]
    ;
    "mov rdx,[rbx]" = expect ''"mov rdx,[rbx]" to be correct [48 8b 13]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "rbx"))
      [ 72 139 19 ]
    ;
    "mov rdx,[rsp]" = expect ''"mov rdx,[rsp]" to be correct [48 8b 14 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "rsp"))
      [ 72 139 20 36 ]
    ;
    "mov rdx,[rbp]" = expect ''"mov rdx,[rbp]" to be correct [48 8b 55 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "rbp"))
      [ 72 139 85 0 ]
    ;
    "mov rdx,[rsi]" = expect ''"mov rdx,[rsi]" to be correct [48 8b 16]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "rsi"))
      [ 72 139 22 ]
    ;
    "mov rdx,[rdi]" = expect ''"mov rdx,[rdi]" to be correct [48 8b 17]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "rdi"))
      [ 72 139 23 ]
    ;
    "mov rdx,[r8]" = expect ''"mov rdx,[r8]" to be correct [49 8b 10]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "r8"))
      [ 73 139 16 ]
    ;
    "mov rdx,[r9]" = expect ''"mov rdx,[r9]" to be correct [49 8b 11]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "r9"))
      [ 73 139 17 ]
    ;
    "mov rdx,[r10]" = expect ''"mov rdx,[r10]" to be correct [49 8b 12]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "r10"))
      [ 73 139 18 ]
    ;
    "mov rdx,[r11]" = expect ''"mov rdx,[r11]" to be correct [49 8b 13]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "r11"))
      [ 73 139 19 ]
    ;
    "mov rdx,[r12]" = expect ''"mov rdx,[r12]" to be correct [49 8b 14 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "r12"))
      [ 73 139 20 36 ]
    ;
    "mov rdx,[r13]" = expect ''"mov rdx,[r13]" to be correct [49 8b 55 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "r13"))
      [ 73 139 85 0 ]
    ;
    "mov rdx,[r14]" = expect ''"mov rdx,[r14]" to be correct [49 8b 16]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "r14"))
      [ 73 139 22 ]
    ;
    "mov rdx,[r15]" = expect ''"mov rdx,[r15]" to be correct [49 8b 17]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdx" "r15"))
      [ 73 139 23 ]
    ;
    "mov rbx,[rax]" = expect ''"mov rbx,[rax]" to be correct [48 8b 18]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "rax"))
      [ 72 139 24 ]
    ;
    "mov rbx,[rcx]" = expect ''"mov rbx,[rcx]" to be correct [48 8b 19]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "rcx"))
      [ 72 139 25 ]
    ;
    "mov rbx,[rdx]" = expect ''"mov rbx,[rdx]" to be correct [48 8b 1a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "rdx"))
      [ 72 139 26 ]
    ;
    "mov rbx,[rbx]" = expect ''"mov rbx,[rbx]" to be correct [48 8b 1b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "rbx"))
      [ 72 139 27 ]
    ;
    "mov rbx,[rsp]" = expect ''"mov rbx,[rsp]" to be correct [48 8b 1c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "rsp"))
      [ 72 139 28 36 ]
    ;
    "mov rbx,[rbp]" = expect ''"mov rbx,[rbp]" to be correct [48 8b 5d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "rbp"))
      [ 72 139 93 0 ]
    ;
    "mov rbx,[rsi]" = expect ''"mov rbx,[rsi]" to be correct [48 8b 1e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "rsi"))
      [ 72 139 30 ]
    ;
    "mov rbx,[rdi]" = expect ''"mov rbx,[rdi]" to be correct [48 8b 1f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "rdi"))
      [ 72 139 31 ]
    ;
    "mov rbx,[r8]" = expect ''"mov rbx,[r8]" to be correct [49 8b 18]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "r8"))
      [ 73 139 24 ]
    ;
    "mov rbx,[r9]" = expect ''"mov rbx,[r9]" to be correct [49 8b 19]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "r9"))
      [ 73 139 25 ]
    ;
    "mov rbx,[r10]" = expect ''"mov rbx,[r10]" to be correct [49 8b 1a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "r10"))
      [ 73 139 26 ]
    ;
    "mov rbx,[r11]" = expect ''"mov rbx,[r11]" to be correct [49 8b 1b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "r11"))
      [ 73 139 27 ]
    ;
    "mov rbx,[r12]" = expect ''"mov rbx,[r12]" to be correct [49 8b 1c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "r12"))
      [ 73 139 28 36 ]
    ;
    "mov rbx,[r13]" = expect ''"mov rbx,[r13]" to be correct [49 8b 5d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "r13"))
      [ 73 139 93 0 ]
    ;
    "mov rbx,[r14]" = expect ''"mov rbx,[r14]" to be correct [49 8b 1e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "r14"))
      [ 73 139 30 ]
    ;
    "mov rbx,[r15]" = expect ''"mov rbx,[r15]" to be correct [49 8b 1f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbx" "r15"))
      [ 73 139 31 ]
    ;
    "mov rsp,[rax]" = expect ''"mov rsp,[rax]" to be correct [48 8b 20]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "rax"))
      [ 72 139 32 ]
    ;
    "mov rsp,[rcx]" = expect ''"mov rsp,[rcx]" to be correct [48 8b 21]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "rcx"))
      [ 72 139 33 ]
    ;
    "mov rsp,[rdx]" = expect ''"mov rsp,[rdx]" to be correct [48 8b 22]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "rdx"))
      [ 72 139 34 ]
    ;
    "mov rsp,[rbx]" = expect ''"mov rsp,[rbx]" to be correct [48 8b 23]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "rbx"))
      [ 72 139 35 ]
    ;
    "mov rsp,[rsp]" = expect ''"mov rsp,[rsp]" to be correct [48 8b 24 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "rsp"))
      [ 72 139 36 36 ]
    ;
    "mov rsp,[rbp]" = expect ''"mov rsp,[rbp]" to be correct [48 8b 65 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "rbp"))
      [ 72 139 101 0 ]
    ;
    "mov rsp,[rsi]" = expect ''"mov rsp,[rsi]" to be correct [48 8b 26]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "rsi"))
      [ 72 139 38 ]
    ;
    "mov rsp,[rdi]" = expect ''"mov rsp,[rdi]" to be correct [48 8b 27]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "rdi"))
      [ 72 139 39 ]
    ;
    "mov rsp,[r8]" = expect ''"mov rsp,[r8]" to be correct [49 8b 20]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "r8"))
      [ 73 139 32 ]
    ;
    "mov rsp,[r9]" = expect ''"mov rsp,[r9]" to be correct [49 8b 21]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "r9"))
      [ 73 139 33 ]
    ;
    "mov rsp,[r10]" = expect ''"mov rsp,[r10]" to be correct [49 8b 22]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "r10"))
      [ 73 139 34 ]
    ;
    "mov rsp,[r11]" = expect ''"mov rsp,[r11]" to be correct [49 8b 23]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "r11"))
      [ 73 139 35 ]
    ;
    "mov rsp,[r12]" = expect ''"mov rsp,[r12]" to be correct [49 8b 24 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "r12"))
      [ 73 139 36 36 ]
    ;
    "mov rsp,[r13]" = expect ''"mov rsp,[r13]" to be correct [49 8b 65 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "r13"))
      [ 73 139 101 0 ]
    ;
    "mov rsp,[r14]" = expect ''"mov rsp,[r14]" to be correct [49 8b 26]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "r14"))
      [ 73 139 38 ]
    ;
    "mov rsp,[r15]" = expect ''"mov rsp,[r15]" to be correct [49 8b 27]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsp" "r15"))
      [ 73 139 39 ]
    ;
    "mov rbp,[rax]" = expect ''"mov rbp,[rax]" to be correct [48 8b 28]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "rax"))
      [ 72 139 40 ]
    ;
    "mov rbp,[rcx]" = expect ''"mov rbp,[rcx]" to be correct [48 8b 29]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "rcx"))
      [ 72 139 41 ]
    ;
    "mov rbp,[rdx]" = expect ''"mov rbp,[rdx]" to be correct [48 8b 2a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "rdx"))
      [ 72 139 42 ]
    ;
    "mov rbp,[rbx]" = expect ''"mov rbp,[rbx]" to be correct [48 8b 2b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "rbx"))
      [ 72 139 43 ]
    ;
    "mov rbp,[rsp]" = expect ''"mov rbp,[rsp]" to be correct [48 8b 2c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "rsp"))
      [ 72 139 44 36 ]
    ;
    "mov rbp,[rbp]" = expect ''"mov rbp,[rbp]" to be correct [48 8b 6d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "rbp"))
      [ 72 139 109 0 ]
    ;
    "mov rbp,[rsi]" = expect ''"mov rbp,[rsi]" to be correct [48 8b 2e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "rsi"))
      [ 72 139 46 ]
    ;
    "mov rbp,[rdi]" = expect ''"mov rbp,[rdi]" to be correct [48 8b 2f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "rdi"))
      [ 72 139 47 ]
    ;
    "mov rbp,[r8]" = expect ''"mov rbp,[r8]" to be correct [49 8b 28]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "r8"))
      [ 73 139 40 ]
    ;
    "mov rbp,[r9]" = expect ''"mov rbp,[r9]" to be correct [49 8b 29]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "r9"))
      [ 73 139 41 ]
    ;
    "mov rbp,[r10]" = expect ''"mov rbp,[r10]" to be correct [49 8b 2a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "r10"))
      [ 73 139 42 ]
    ;
    "mov rbp,[r11]" = expect ''"mov rbp,[r11]" to be correct [49 8b 2b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "r11"))
      [ 73 139 43 ]
    ;
    "mov rbp,[r12]" = expect ''"mov rbp,[r12]" to be correct [49 8b 2c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "r12"))
      [ 73 139 44 36 ]
    ;
    "mov rbp,[r13]" = expect ''"mov rbp,[r13]" to be correct [49 8b 6d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "r13"))
      [ 73 139 109 0 ]
    ;
    "mov rbp,[r14]" = expect ''"mov rbp,[r14]" to be correct [49 8b 2e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "r14"))
      [ 73 139 46 ]
    ;
    "mov rbp,[r15]" = expect ''"mov rbp,[r15]" to be correct [49 8b 2f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rbp" "r15"))
      [ 73 139 47 ]
    ;
    "mov rsi,[rax]" = expect ''"mov rsi,[rax]" to be correct [48 8b 30]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "rax"))
      [ 72 139 48 ]
    ;
    "mov rsi,[rcx]" = expect ''"mov rsi,[rcx]" to be correct [48 8b 31]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "rcx"))
      [ 72 139 49 ]
    ;
    "mov rsi,[rdx]" = expect ''"mov rsi,[rdx]" to be correct [48 8b 32]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "rdx"))
      [ 72 139 50 ]
    ;
    "mov rsi,[rbx]" = expect ''"mov rsi,[rbx]" to be correct [48 8b 33]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "rbx"))
      [ 72 139 51 ]
    ;
    "mov rsi,[rsp]" = expect ''"mov rsi,[rsp]" to be correct [48 8b 34 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "rsp"))
      [ 72 139 52 36 ]
    ;
    "mov rsi,[rbp]" = expect ''"mov rsi,[rbp]" to be correct [48 8b 75 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "rbp"))
      [ 72 139 117 0 ]
    ;
    "mov rsi,[rsi]" = expect ''"mov rsi,[rsi]" to be correct [48 8b 36]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "rsi"))
      [ 72 139 54 ]
    ;
    "mov rsi,[rdi]" = expect ''"mov rsi,[rdi]" to be correct [48 8b 37]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "rdi"))
      [ 72 139 55 ]
    ;
    "mov rsi,[r8]" = expect ''"mov rsi,[r8]" to be correct [49 8b 30]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "r8"))
      [ 73 139 48 ]
    ;
    "mov rsi,[r9]" = expect ''"mov rsi,[r9]" to be correct [49 8b 31]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "r9"))
      [ 73 139 49 ]
    ;
    "mov rsi,[r10]" = expect ''"mov rsi,[r10]" to be correct [49 8b 32]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "r10"))
      [ 73 139 50 ]
    ;
    "mov rsi,[r11]" = expect ''"mov rsi,[r11]" to be correct [49 8b 33]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "r11"))
      [ 73 139 51 ]
    ;
    "mov rsi,[r12]" = expect ''"mov rsi,[r12]" to be correct [49 8b 34 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "r12"))
      [ 73 139 52 36 ]
    ;
    "mov rsi,[r13]" = expect ''"mov rsi,[r13]" to be correct [49 8b 75 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "r13"))
      [ 73 139 117 0 ]
    ;
    "mov rsi,[r14]" = expect ''"mov rsi,[r14]" to be correct [49 8b 36]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "r14"))
      [ 73 139 54 ]
    ;
    "mov rsi,[r15]" = expect ''"mov rsi,[r15]" to be correct [49 8b 37]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rsi" "r15"))
      [ 73 139 55 ]
    ;
    "mov rdi,[rax]" = expect ''"mov rdi,[rax]" to be correct [48 8b 38]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "rax"))
      [ 72 139 56 ]
    ;
    "mov rdi,[rcx]" = expect ''"mov rdi,[rcx]" to be correct [48 8b 39]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "rcx"))
      [ 72 139 57 ]
    ;
    "mov rdi,[rdx]" = expect ''"mov rdi,[rdx]" to be correct [48 8b 3a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "rdx"))
      [ 72 139 58 ]
    ;
    "mov rdi,[rbx]" = expect ''"mov rdi,[rbx]" to be correct [48 8b 3b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "rbx"))
      [ 72 139 59 ]
    ;
    "mov rdi,[rsp]" = expect ''"mov rdi,[rsp]" to be correct [48 8b 3c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "rsp"))
      [ 72 139 60 36 ]
    ;
    "mov rdi,[rbp]" = expect ''"mov rdi,[rbp]" to be correct [48 8b 7d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "rbp"))
      [ 72 139 125 0 ]
    ;
    "mov rdi,[rsi]" = expect ''"mov rdi,[rsi]" to be correct [48 8b 3e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "rsi"))
      [ 72 139 62 ]
    ;
    "mov rdi,[rdi]" = expect ''"mov rdi,[rdi]" to be correct [48 8b 3f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "rdi"))
      [ 72 139 63 ]
    ;
    "mov rdi,[r8]" = expect ''"mov rdi,[r8]" to be correct [49 8b 38]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "r8"))
      [ 73 139 56 ]
    ;
    "mov rdi,[r9]" = expect ''"mov rdi,[r9]" to be correct [49 8b 39]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "r9"))
      [ 73 139 57 ]
    ;
    "mov rdi,[r10]" = expect ''"mov rdi,[r10]" to be correct [49 8b 3a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "r10"))
      [ 73 139 58 ]
    ;
    "mov rdi,[r11]" = expect ''"mov rdi,[r11]" to be correct [49 8b 3b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "r11"))
      [ 73 139 59 ]
    ;
    "mov rdi,[r12]" = expect ''"mov rdi,[r12]" to be correct [49 8b 3c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "r12"))
      [ 73 139 60 36 ]
    ;
    "mov rdi,[r13]" = expect ''"mov rdi,[r13]" to be correct [49 8b 7d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "r13"))
      [ 73 139 125 0 ]
    ;
    "mov rdi,[r14]" = expect ''"mov rdi,[r14]" to be correct [49 8b 3e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "r14"))
      [ 73 139 62 ]
    ;
    "mov rdi,[r15]" = expect ''"mov rdi,[r15]" to be correct [49 8b 3f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "rdi" "r15"))
      [ 73 139 63 ]
    ;
    "mov r8,[rax]" = expect ''"mov r8,[rax]" to be correct [4c 8b 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "rax"))
      [ 76 139 0 ]
    ;
    "mov r8,[rcx]" = expect ''"mov r8,[rcx]" to be correct [4c 8b 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "rcx"))
      [ 76 139 1 ]
    ;
    "mov r8,[rdx]" = expect ''"mov r8,[rdx]" to be correct [4c 8b 2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "rdx"))
      [ 76 139 2 ]
    ;
    "mov r8,[rbx]" = expect ''"mov r8,[rbx]" to be correct [4c 8b 3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "rbx"))
      [ 76 139 3 ]
    ;
    "mov r8,[rsp]" = expect ''"mov r8,[rsp]" to be correct [4c 8b 4 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "rsp"))
      [ 76 139 4 36 ]
    ;
    "mov r8,[rbp]" = expect ''"mov r8,[rbp]" to be correct [4c 8b 45 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "rbp"))
      [ 76 139 69 0 ]
    ;
    "mov r8,[rsi]" = expect ''"mov r8,[rsi]" to be correct [4c 8b 6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "rsi"))
      [ 76 139 6 ]
    ;
    "mov r8,[rdi]" = expect ''"mov r8,[rdi]" to be correct [4c 8b 7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "rdi"))
      [ 76 139 7 ]
    ;
    "mov r8,[r8]" = expect ''"mov r8,[r8]" to be correct [4d 8b 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "r8"))
      [ 77 139 0 ]
    ;
    "mov r8,[r9]" = expect ''"mov r8,[r9]" to be correct [4d 8b 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "r9"))
      [ 77 139 1 ]
    ;
    "mov r8,[r10]" = expect ''"mov r8,[r10]" to be correct [4d 8b 2]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "r10"))
      [ 77 139 2 ]
    ;
    "mov r8,[r11]" = expect ''"mov r8,[r11]" to be correct [4d 8b 3]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "r11"))
      [ 77 139 3 ]
    ;
    "mov r8,[r12]" = expect ''"mov r8,[r12]" to be correct [4d 8b 4 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "r12"))
      [ 77 139 4 36 ]
    ;
    "mov r8,[r13]" = expect ''"mov r8,[r13]" to be correct [4d 8b 45 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "r13"))
      [ 77 139 69 0 ]
    ;
    "mov r8,[r14]" = expect ''"mov r8,[r14]" to be correct [4d 8b 6]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "r14"))
      [ 77 139 6 ]
    ;
    "mov r8,[r15]" = expect ''"mov r8,[r15]" to be correct [4d 8b 7]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r8" "r15"))
      [ 77 139 7 ]
    ;
    "mov r9,[rax]" = expect ''"mov r9,[rax]" to be correct [4c 8b 8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "rax"))
      [ 76 139 8 ]
    ;
    "mov r9,[rcx]" = expect ''"mov r9,[rcx]" to be correct [4c 8b 9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "rcx"))
      [ 76 139 9 ]
    ;
    "mov r9,[rdx]" = expect ''"mov r9,[rdx]" to be correct [4c 8b a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "rdx"))
      [ 76 139 10 ]
    ;
    "mov r9,[rbx]" = expect ''"mov r9,[rbx]" to be correct [4c 8b b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "rbx"))
      [ 76 139 11 ]
    ;
    "mov r9,[rsp]" = expect ''"mov r9,[rsp]" to be correct [4c 8b c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "rsp"))
      [ 76 139 12 36 ]
    ;
    "mov r9,[rbp]" = expect ''"mov r9,[rbp]" to be correct [4c 8b 4d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "rbp"))
      [ 76 139 77 0 ]
    ;
    "mov r9,[rsi]" = expect ''"mov r9,[rsi]" to be correct [4c 8b e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "rsi"))
      [ 76 139 14 ]
    ;
    "mov r9,[rdi]" = expect ''"mov r9,[rdi]" to be correct [4c 8b f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "rdi"))
      [ 76 139 15 ]
    ;
    "mov r9,[r8]" = expect ''"mov r9,[r8]" to be correct [4d 8b 8]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "r8"))
      [ 77 139 8 ]
    ;
    "mov r9,[r9]" = expect ''"mov r9,[r9]" to be correct [4d 8b 9]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "r9"))
      [ 77 139 9 ]
    ;
    "mov r9,[r10]" = expect ''"mov r9,[r10]" to be correct [4d 8b a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "r10"))
      [ 77 139 10 ]
    ;
    "mov r9,[r11]" = expect ''"mov r9,[r11]" to be correct [4d 8b b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "r11"))
      [ 77 139 11 ]
    ;
    "mov r9,[r12]" = expect ''"mov r9,[r12]" to be correct [4d 8b c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "r12"))
      [ 77 139 12 36 ]
    ;
    "mov r9,[r13]" = expect ''"mov r9,[r13]" to be correct [4d 8b 4d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "r13"))
      [ 77 139 77 0 ]
    ;
    "mov r9,[r14]" = expect ''"mov r9,[r14]" to be correct [4d 8b e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "r14"))
      [ 77 139 14 ]
    ;
    "mov r9,[r15]" = expect ''"mov r9,[r15]" to be correct [4d 8b f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r9" "r15"))
      [ 77 139 15 ]
    ;
    "mov r10,[rax]" = expect ''"mov r10,[rax]" to be correct [4c 8b 10]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "rax"))
      [ 76 139 16 ]
    ;
    "mov r10,[rcx]" = expect ''"mov r10,[rcx]" to be correct [4c 8b 11]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "rcx"))
      [ 76 139 17 ]
    ;
    "mov r10,[rdx]" = expect ''"mov r10,[rdx]" to be correct [4c 8b 12]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "rdx"))
      [ 76 139 18 ]
    ;
    "mov r10,[rbx]" = expect ''"mov r10,[rbx]" to be correct [4c 8b 13]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "rbx"))
      [ 76 139 19 ]
    ;
    "mov r10,[rsp]" = expect ''"mov r10,[rsp]" to be correct [4c 8b 14 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "rsp"))
      [ 76 139 20 36 ]
    ;
    "mov r10,[rbp]" = expect ''"mov r10,[rbp]" to be correct [4c 8b 55 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "rbp"))
      [ 76 139 85 0 ]
    ;
    "mov r10,[rsi]" = expect ''"mov r10,[rsi]" to be correct [4c 8b 16]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "rsi"))
      [ 76 139 22 ]
    ;
    "mov r10,[rdi]" = expect ''"mov r10,[rdi]" to be correct [4c 8b 17]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "rdi"))
      [ 76 139 23 ]
    ;
    "mov r10,[r8]" = expect ''"mov r10,[r8]" to be correct [4d 8b 10]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "r8"))
      [ 77 139 16 ]
    ;
    "mov r10,[r9]" = expect ''"mov r10,[r9]" to be correct [4d 8b 11]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "r9"))
      [ 77 139 17 ]
    ;
    "mov r10,[r10]" = expect ''"mov r10,[r10]" to be correct [4d 8b 12]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "r10"))
      [ 77 139 18 ]
    ;
    "mov r10,[r11]" = expect ''"mov r10,[r11]" to be correct [4d 8b 13]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "r11"))
      [ 77 139 19 ]
    ;
    "mov r10,[r12]" = expect ''"mov r10,[r12]" to be correct [4d 8b 14 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "r12"))
      [ 77 139 20 36 ]
    ;
    "mov r10,[r13]" = expect ''"mov r10,[r13]" to be correct [4d 8b 55 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "r13"))
      [ 77 139 85 0 ]
    ;
    "mov r10,[r14]" = expect ''"mov r10,[r14]" to be correct [4d 8b 16]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "r14"))
      [ 77 139 22 ]
    ;
    "mov r10,[r15]" = expect ''"mov r10,[r15]" to be correct [4d 8b 17]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r10" "r15"))
      [ 77 139 23 ]
    ;
    "mov r11,[rax]" = expect ''"mov r11,[rax]" to be correct [4c 8b 18]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "rax"))
      [ 76 139 24 ]
    ;
    "mov r11,[rcx]" = expect ''"mov r11,[rcx]" to be correct [4c 8b 19]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "rcx"))
      [ 76 139 25 ]
    ;
    "mov r11,[rdx]" = expect ''"mov r11,[rdx]" to be correct [4c 8b 1a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "rdx"))
      [ 76 139 26 ]
    ;
    "mov r11,[rbx]" = expect ''"mov r11,[rbx]" to be correct [4c 8b 1b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "rbx"))
      [ 76 139 27 ]
    ;
    "mov r11,[rsp]" = expect ''"mov r11,[rsp]" to be correct [4c 8b 1c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "rsp"))
      [ 76 139 28 36 ]
    ;
    "mov r11,[rbp]" = expect ''"mov r11,[rbp]" to be correct [4c 8b 5d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "rbp"))
      [ 76 139 93 0 ]
    ;
    "mov r11,[rsi]" = expect ''"mov r11,[rsi]" to be correct [4c 8b 1e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "rsi"))
      [ 76 139 30 ]
    ;
    "mov r11,[rdi]" = expect ''"mov r11,[rdi]" to be correct [4c 8b 1f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "rdi"))
      [ 76 139 31 ]
    ;
    "mov r11,[r8]" = expect ''"mov r11,[r8]" to be correct [4d 8b 18]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "r8"))
      [ 77 139 24 ]
    ;
    "mov r11,[r9]" = expect ''"mov r11,[r9]" to be correct [4d 8b 19]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "r9"))
      [ 77 139 25 ]
    ;
    "mov r11,[r10]" = expect ''"mov r11,[r10]" to be correct [4d 8b 1a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "r10"))
      [ 77 139 26 ]
    ;
    "mov r11,[r11]" = expect ''"mov r11,[r11]" to be correct [4d 8b 1b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "r11"))
      [ 77 139 27 ]
    ;
    "mov r11,[r12]" = expect ''"mov r11,[r12]" to be correct [4d 8b 1c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "r12"))
      [ 77 139 28 36 ]
    ;
    "mov r11,[r13]" = expect ''"mov r11,[r13]" to be correct [4d 8b 5d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "r13"))
      [ 77 139 93 0 ]
    ;
    "mov r11,[r14]" = expect ''"mov r11,[r14]" to be correct [4d 8b 1e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "r14"))
      [ 77 139 30 ]
    ;
    "mov r11,[r15]" = expect ''"mov r11,[r15]" to be correct [4d 8b 1f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r11" "r15"))
      [ 77 139 31 ]
    ;
    "mov r12,[rax]" = expect ''"mov r12,[rax]" to be correct [4c 8b 20]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "rax"))
      [ 76 139 32 ]
    ;
    "mov r12,[rcx]" = expect ''"mov r12,[rcx]" to be correct [4c 8b 21]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "rcx"))
      [ 76 139 33 ]
    ;
    "mov r12,[rdx]" = expect ''"mov r12,[rdx]" to be correct [4c 8b 22]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "rdx"))
      [ 76 139 34 ]
    ;
    "mov r12,[rbx]" = expect ''"mov r12,[rbx]" to be correct [4c 8b 23]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "rbx"))
      [ 76 139 35 ]
    ;
    "mov r12,[rsp]" = expect ''"mov r12,[rsp]" to be correct [4c 8b 24 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "rsp"))
      [ 76 139 36 36 ]
    ;
    "mov r12,[rbp]" = expect ''"mov r12,[rbp]" to be correct [4c 8b 65 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "rbp"))
      [ 76 139 101 0 ]
    ;
    "mov r12,[rsi]" = expect ''"mov r12,[rsi]" to be correct [4c 8b 26]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "rsi"))
      [ 76 139 38 ]
    ;
    "mov r12,[rdi]" = expect ''"mov r12,[rdi]" to be correct [4c 8b 27]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "rdi"))
      [ 76 139 39 ]
    ;
    "mov r12,[r8]" = expect ''"mov r12,[r8]" to be correct [4d 8b 20]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "r8"))
      [ 77 139 32 ]
    ;
    "mov r12,[r9]" = expect ''"mov r12,[r9]" to be correct [4d 8b 21]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "r9"))
      [ 77 139 33 ]
    ;
    "mov r12,[r10]" = expect ''"mov r12,[r10]" to be correct [4d 8b 22]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "r10"))
      [ 77 139 34 ]
    ;
    "mov r12,[r11]" = expect ''"mov r12,[r11]" to be correct [4d 8b 23]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "r11"))
      [ 77 139 35 ]
    ;
    "mov r12,[r12]" = expect ''"mov r12,[r12]" to be correct [4d 8b 24 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "r12"))
      [ 77 139 36 36 ]
    ;
    "mov r12,[r13]" = expect ''"mov r12,[r13]" to be correct [4d 8b 65 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "r13"))
      [ 77 139 101 0 ]
    ;
    "mov r12,[r14]" = expect ''"mov r12,[r14]" to be correct [4d 8b 26]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "r14"))
      [ 77 139 38 ]
    ;
    "mov r12,[r15]" = expect ''"mov r12,[r15]" to be correct [4d 8b 27]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r12" "r15"))
      [ 77 139 39 ]
    ;
    "mov r13,[rax]" = expect ''"mov r13,[rax]" to be correct [4c 8b 28]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "rax"))
      [ 76 139 40 ]
    ;
    "mov r13,[rcx]" = expect ''"mov r13,[rcx]" to be correct [4c 8b 29]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "rcx"))
      [ 76 139 41 ]
    ;
    "mov r13,[rdx]" = expect ''"mov r13,[rdx]" to be correct [4c 8b 2a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "rdx"))
      [ 76 139 42 ]
    ;
    "mov r13,[rbx]" = expect ''"mov r13,[rbx]" to be correct [4c 8b 2b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "rbx"))
      [ 76 139 43 ]
    ;
    "mov r13,[rsp]" = expect ''"mov r13,[rsp]" to be correct [4c 8b 2c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "rsp"))
      [ 76 139 44 36 ]
    ;
    "mov r13,[rbp]" = expect ''"mov r13,[rbp]" to be correct [4c 8b 6d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "rbp"))
      [ 76 139 109 0 ]
    ;
    "mov r13,[rsi]" = expect ''"mov r13,[rsi]" to be correct [4c 8b 2e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "rsi"))
      [ 76 139 46 ]
    ;
    "mov r13,[rdi]" = expect ''"mov r13,[rdi]" to be correct [4c 8b 2f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "rdi"))
      [ 76 139 47 ]
    ;
    "mov r13,[r8]" = expect ''"mov r13,[r8]" to be correct [4d 8b 28]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "r8"))
      [ 77 139 40 ]
    ;
    "mov r13,[r9]" = expect ''"mov r13,[r9]" to be correct [4d 8b 29]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "r9"))
      [ 77 139 41 ]
    ;
    "mov r13,[r10]" = expect ''"mov r13,[r10]" to be correct [4d 8b 2a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "r10"))
      [ 77 139 42 ]
    ;
    "mov r13,[r11]" = expect ''"mov r13,[r11]" to be correct [4d 8b 2b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "r11"))
      [ 77 139 43 ]
    ;
    "mov r13,[r12]" = expect ''"mov r13,[r12]" to be correct [4d 8b 2c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "r12"))
      [ 77 139 44 36 ]
    ;
    "mov r13,[r13]" = expect ''"mov r13,[r13]" to be correct [4d 8b 6d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "r13"))
      [ 77 139 109 0 ]
    ;
    "mov r13,[r14]" = expect ''"mov r13,[r14]" to be correct [4d 8b 2e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "r14"))
      [ 77 139 46 ]
    ;
    "mov r13,[r15]" = expect ''"mov r13,[r15]" to be correct [4d 8b 2f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r13" "r15"))
      [ 77 139 47 ]
    ;
    "mov r14,[rax]" = expect ''"mov r14,[rax]" to be correct [4c 8b 30]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "rax"))
      [ 76 139 48 ]
    ;
    "mov r14,[rcx]" = expect ''"mov r14,[rcx]" to be correct [4c 8b 31]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "rcx"))
      [ 76 139 49 ]
    ;
    "mov r14,[rdx]" = expect ''"mov r14,[rdx]" to be correct [4c 8b 32]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "rdx"))
      [ 76 139 50 ]
    ;
    "mov r14,[rbx]" = expect ''"mov r14,[rbx]" to be correct [4c 8b 33]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "rbx"))
      [ 76 139 51 ]
    ;
    "mov r14,[rsp]" = expect ''"mov r14,[rsp]" to be correct [4c 8b 34 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "rsp"))
      [ 76 139 52 36 ]
    ;
    "mov r14,[rbp]" = expect ''"mov r14,[rbp]" to be correct [4c 8b 75 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "rbp"))
      [ 76 139 117 0 ]
    ;
    "mov r14,[rsi]" = expect ''"mov r14,[rsi]" to be correct [4c 8b 36]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "rsi"))
      [ 76 139 54 ]
    ;
    "mov r14,[rdi]" = expect ''"mov r14,[rdi]" to be correct [4c 8b 37]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "rdi"))
      [ 76 139 55 ]
    ;
    "mov r14,[r8]" = expect ''"mov r14,[r8]" to be correct [4d 8b 30]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "r8"))
      [ 77 139 48 ]
    ;
    "mov r14,[r9]" = expect ''"mov r14,[r9]" to be correct [4d 8b 31]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "r9"))
      [ 77 139 49 ]
    ;
    "mov r14,[r10]" = expect ''"mov r14,[r10]" to be correct [4d 8b 32]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "r10"))
      [ 77 139 50 ]
    ;
    "mov r14,[r11]" = expect ''"mov r14,[r11]" to be correct [4d 8b 33]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "r11"))
      [ 77 139 51 ]
    ;
    "mov r14,[r12]" = expect ''"mov r14,[r12]" to be correct [4d 8b 34 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "r12"))
      [ 77 139 52 36 ]
    ;
    "mov r14,[r13]" = expect ''"mov r14,[r13]" to be correct [4d 8b 75 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "r13"))
      [ 77 139 117 0 ]
    ;
    "mov r14,[r14]" = expect ''"mov r14,[r14]" to be correct [4d 8b 36]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "r14"))
      [ 77 139 54 ]
    ;
    "mov r14,[r15]" = expect ''"mov r14,[r15]" to be correct [4d 8b 37]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r14" "r15"))
      [ 77 139 55 ]
    ;
    "mov r15,[rax]" = expect ''"mov r15,[rax]" to be correct [4c 8b 38]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "rax"))
      [ 76 139 56 ]
    ;
    "mov r15,[rcx]" = expect ''"mov r15,[rcx]" to be correct [4c 8b 39]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "rcx"))
      [ 76 139 57 ]
    ;
    "mov r15,[rdx]" = expect ''"mov r15,[rdx]" to be correct [4c 8b 3a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "rdx"))
      [ 76 139 58 ]
    ;
    "mov r15,[rbx]" = expect ''"mov r15,[rbx]" to be correct [4c 8b 3b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "rbx"))
      [ 76 139 59 ]
    ;
    "mov r15,[rsp]" = expect ''"mov r15,[rsp]" to be correct [4c 8b 3c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "rsp"))
      [ 76 139 60 36 ]
    ;
    "mov r15,[rbp]" = expect ''"mov r15,[rbp]" to be correct [4c 8b 7d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "rbp"))
      [ 76 139 125 0 ]
    ;
    "mov r15,[rsi]" = expect ''"mov r15,[rsi]" to be correct [4c 8b 3e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "rsi"))
      [ 76 139 62 ]
    ;
    "mov r15,[rdi]" = expect ''"mov r15,[rdi]" to be correct [4c 8b 3f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "rdi"))
      [ 76 139 63 ]
    ;
    "mov r15,[r8]" = expect ''"mov r15,[r8]" to be correct [4d 8b 38]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "r8"))
      [ 77 139 56 ]
    ;
    "mov r15,[r9]" = expect ''"mov r15,[r9]" to be correct [4d 8b 39]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "r9"))
      [ 77 139 57 ]
    ;
    "mov r15,[r10]" = expect ''"mov r15,[r10]" to be correct [4d 8b 3a]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "r10"))
      [ 77 139 58 ]
    ;
    "mov r15,[r11]" = expect ''"mov r15,[r11]" to be correct [4d 8b 3b]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "r11"))
      [ 77 139 59 ]
    ;
    "mov r15,[r12]" = expect ''"mov r15,[r12]" to be correct [4d 8b 3c 24]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "r12"))
      [ 77 139 60 36 ]
    ;
    "mov r15,[r13]" = expect ''"mov r15,[r13]" to be correct [4d 8b 7d 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "r13"))
      [ 77 139 125 0 ]
    ;
    "mov r15,[r14]" = expect ''"mov r15,[r14]" to be correct [4d 8b 3e]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "r14"))
      [ 77 139 62 ]
    ;
    "mov r15,[r15]" = expect ''"mov r15,[r15]" to be correct [4d 8b 3f]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_from_mem "r15" "r15"))
      [ 77 139 63 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["mov","MOV_imm",["reg","imm"]]
  #
  "MOV_imm" = {
    "mov al,0" = expect ''"mov al,0" to be correct [b0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "al" [ 0 ]))
      [ 176 0 ]
    ;
    "mov al,1" = expect ''"mov al,1" to be correct [b0 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "al" [ 1 ]))
      [ 176 1 ]
    ;
    "mov cl,0" = expect ''"mov cl,0" to be correct [b1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "cl" [ 0 ]))
      [ 177 0 ]
    ;
    "mov cl,1" = expect ''"mov cl,1" to be correct [b1 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "cl" [ 1 ]))
      [ 177 1 ]
    ;
    "mov dl,0" = expect ''"mov dl,0" to be correct [b2 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "dl" [ 0 ]))
      [ 178 0 ]
    ;
    "mov dl,1" = expect ''"mov dl,1" to be correct [b2 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "dl" [ 1 ]))
      [ 178 1 ]
    ;
    "mov bl,0" = expect ''"mov bl,0" to be correct [b3 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "bl" [ 0 ]))
      [ 179 0 ]
    ;
    "mov bl,1" = expect ''"mov bl,1" to be correct [b3 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "bl" [ 1 ]))
      [ 179 1 ]
    ;
    "mov ah,0" = expect ''"mov ah,0" to be correct [b4 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ah" [ 0 ]))
      [ 180 0 ]
    ;
    "mov ah,1" = expect ''"mov ah,1" to be correct [b4 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ah" [ 1 ]))
      [ 180 1 ]
    ;
    "mov ch,0" = expect ''"mov ch,0" to be correct [b5 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ch" [ 0 ]))
      [ 181 0 ]
    ;
    "mov ch,1" = expect ''"mov ch,1" to be correct [b5 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ch" [ 1 ]))
      [ 181 1 ]
    ;
    "mov dh,0" = expect ''"mov dh,0" to be correct [b6 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "dh" [ 0 ]))
      [ 182 0 ]
    ;
    "mov dh,1" = expect ''"mov dh,1" to be correct [b6 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "dh" [ 1 ]))
      [ 182 1 ]
    ;
    "mov bh,0" = expect ''"mov bh,0" to be correct [b7 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "bh" [ 0 ]))
      [ 183 0 ]
    ;
    "mov bh,1" = expect ''"mov bh,1" to be correct [b7 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "bh" [ 1 ]))
      [ 183 1 ]
    ;
    "mov ax,0" = expect ''"mov ax,0" to be correct [66 b8 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ax" [ 0 ]))
      [ 102 184 0 0 ]
    ;
    "mov ax,1" = expect ''"mov ax,1" to be correct [66 b8 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ax" [ 1 ]))
      [ 102 184 1 0 ]
    ;
    "mov cx,0" = expect ''"mov cx,0" to be correct [66 b9 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "cx" [ 0 ]))
      [ 102 185 0 0 ]
    ;
    "mov cx,1" = expect ''"mov cx,1" to be correct [66 b9 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "cx" [ 1 ]))
      [ 102 185 1 0 ]
    ;
    "mov dx,0" = expect ''"mov dx,0" to be correct [66 ba 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "dx" [ 0 ]))
      [ 102 186 0 0 ]
    ;
    "mov dx,1" = expect ''"mov dx,1" to be correct [66 ba 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "dx" [ 1 ]))
      [ 102 186 1 0 ]
    ;
    "mov bx,0" = expect ''"mov bx,0" to be correct [66 bb 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "bx" [ 0 ]))
      [ 102 187 0 0 ]
    ;
    "mov bx,1" = expect ''"mov bx,1" to be correct [66 bb 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "bx" [ 1 ]))
      [ 102 187 1 0 ]
    ;
    "mov sp,0" = expect ''"mov sp,0" to be correct [66 bc 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "sp" [ 0 ]))
      [ 102 188 0 0 ]
    ;
    "mov sp,1" = expect ''"mov sp,1" to be correct [66 bc 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "sp" [ 1 ]))
      [ 102 188 1 0 ]
    ;
    "mov bp,0" = expect ''"mov bp,0" to be correct [66 bd 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "bp" [ 0 ]))
      [ 102 189 0 0 ]
    ;
    "mov bp,1" = expect ''"mov bp,1" to be correct [66 bd 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "bp" [ 1 ]))
      [ 102 189 1 0 ]
    ;
    "mov si,0" = expect ''"mov si,0" to be correct [66 be 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "si" [ 0 ]))
      [ 102 190 0 0 ]
    ;
    "mov si,1" = expect ''"mov si,1" to be correct [66 be 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "si" [ 1 ]))
      [ 102 190 1 0 ]
    ;
    "mov di,0" = expect ''"mov di,0" to be correct [66 bf 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "di" [ 0 ]))
      [ 102 191 0 0 ]
    ;
    "mov di,1" = expect ''"mov di,1" to be correct [66 bf 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "di" [ 1 ]))
      [ 102 191 1 0 ]
    ;
    "mov eax,0" = expect ''"mov eax,0" to be correct [b8 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "eax" [ 0 ]))
      [ 184 0 0 0 0 ]
    ;
    "mov eax,1" = expect ''"mov eax,1" to be correct [b8 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "eax" [ 1 ]))
      [ 184 1 0 0 0 ]
    ;
    "mov ecx,0" = expect ''"mov ecx,0" to be correct [b9 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ecx" [ 0 ]))
      [ 185 0 0 0 0 ]
    ;
    "mov ecx,1" = expect ''"mov ecx,1" to be correct [b9 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ecx" [ 1 ]))
      [ 185 1 0 0 0 ]
    ;
    "mov edx,0" = expect ''"mov edx,0" to be correct [ba 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "edx" [ 0 ]))
      [ 186 0 0 0 0 ]
    ;
    "mov edx,1" = expect ''"mov edx,1" to be correct [ba 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "edx" [ 1 ]))
      [ 186 1 0 0 0 ]
    ;
    "mov ebx,0" = expect ''"mov ebx,0" to be correct [bb 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ebx" [ 0 ]))
      [ 187 0 0 0 0 ]
    ;
    "mov ebx,1" = expect ''"mov ebx,1" to be correct [bb 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ebx" [ 1 ]))
      [ 187 1 0 0 0 ]
    ;
    "mov esp,0" = expect ''"mov esp,0" to be correct [bc 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "esp" [ 0 ]))
      [ 188 0 0 0 0 ]
    ;
    "mov esp,1" = expect ''"mov esp,1" to be correct [bc 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "esp" [ 1 ]))
      [ 188 1 0 0 0 ]
    ;
    "mov ebp,0" = expect ''"mov ebp,0" to be correct [bd 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ebp" [ 0 ]))
      [ 189 0 0 0 0 ]
    ;
    "mov ebp,1" = expect ''"mov ebp,1" to be correct [bd 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "ebp" [ 1 ]))
      [ 189 1 0 0 0 ]
    ;
    "mov esi,0" = expect ''"mov esi,0" to be correct [be 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "esi" [ 0 ]))
      [ 190 0 0 0 0 ]
    ;
    "mov esi,1" = expect ''"mov esi,1" to be correct [be 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "esi" [ 1 ]))
      [ 190 1 0 0 0 ]
    ;
    "mov edi,0" = expect ''"mov edi,0" to be correct [bf 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "edi" [ 0 ]))
      [ 191 0 0 0 0 ]
    ;
    "mov edi,1" = expect ''"mov edi,1" to be correct [bf 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "edi" [ 1 ]))
      [ 191 1 0 0 0 ]
    ;
    "mov rax,0" = expect ''"mov rax,0" to be correct [48 b8 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rax" [ 0 ]))
      [ 72 184 0 0 0 0 0 0 0 0 ]
    ;
    "mov rax,1" = expect ''"mov rax,1" to be correct [48 b8 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rax" [ 1 ]))
      [ 72 184 1 0 0 0 0 0 0 0 ]
    ;
    "mov rcx,0" = expect ''"mov rcx,0" to be correct [48 b9 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rcx" [ 0 ]))
      [ 72 185 0 0 0 0 0 0 0 0 ]
    ;
    "mov rcx,1" = expect ''"mov rcx,1" to be correct [48 b9 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rcx" [ 1 ]))
      [ 72 185 1 0 0 0 0 0 0 0 ]
    ;
    "mov rdx,0" = expect ''"mov rdx,0" to be correct [48 ba 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rdx" [ 0 ]))
      [ 72 186 0 0 0 0 0 0 0 0 ]
    ;
    "mov rdx,1" = expect ''"mov rdx,1" to be correct [48 ba 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rdx" [ 1 ]))
      [ 72 186 1 0 0 0 0 0 0 0 ]
    ;
    "mov rbx,0" = expect ''"mov rbx,0" to be correct [48 bb 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rbx" [ 0 ]))
      [ 72 187 0 0 0 0 0 0 0 0 ]
    ;
    "mov rbx,1" = expect ''"mov rbx,1" to be correct [48 bb 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rbx" [ 1 ]))
      [ 72 187 1 0 0 0 0 0 0 0 ]
    ;
    "mov rsp,0" = expect ''"mov rsp,0" to be correct [48 bc 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rsp" [ 0 ]))
      [ 72 188 0 0 0 0 0 0 0 0 ]
    ;
    "mov rsp,1" = expect ''"mov rsp,1" to be correct [48 bc 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rsp" [ 1 ]))
      [ 72 188 1 0 0 0 0 0 0 0 ]
    ;
    "mov rbp,0" = expect ''"mov rbp,0" to be correct [48 bd 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rbp" [ 0 ]))
      [ 72 189 0 0 0 0 0 0 0 0 ]
    ;
    "mov rbp,1" = expect ''"mov rbp,1" to be correct [48 bd 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rbp" [ 1 ]))
      [ 72 189 1 0 0 0 0 0 0 0 ]
    ;
    "mov rsi,0" = expect ''"mov rsi,0" to be correct [48 be 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rsi" [ 0 ]))
      [ 72 190 0 0 0 0 0 0 0 0 ]
    ;
    "mov rsi,1" = expect ''"mov rsi,1" to be correct [48 be 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rsi" [ 1 ]))
      [ 72 190 1 0 0 0 0 0 0 0 ]
    ;
    "mov rdi,0" = expect ''"mov rdi,0" to be correct [48 bf 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rdi" [ 0 ]))
      [ 72 191 0 0 0 0 0 0 0 0 ]
    ;
    "mov rdi,1" = expect ''"mov rdi,1" to be correct [48 bf 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "rdi" [ 1 ]))
      [ 72 191 1 0 0 0 0 0 0 0 ]
    ;
    "mov r8b,0" = expect ''"mov r8b,0" to be correct [41 b0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r8b" [ 0 ]))
      [ 65 176 0 ]
    ;
    "mov r8b,1" = expect ''"mov r8b,1" to be correct [41 b0 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r8b" [ 1 ]))
      [ 65 176 1 ]
    ;
    "mov r8w,0" = expect ''"mov r8w,0" to be correct [66 41 b8 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r8w" [ 0 ]))
      [ 102 65 184 0 0 ]
    ;
    "mov r8w,1" = expect ''"mov r8w,1" to be correct [66 41 b8 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r8w" [ 1 ]))
      [ 102 65 184 1 0 ]
    ;
    "mov r8d,0" = expect ''"mov r8d,0" to be correct [41 b8 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r8d" [ 0 ]))
      [ 65 184 0 0 0 0 ]
    ;
    "mov r8d,1" = expect ''"mov r8d,1" to be correct [41 b8 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r8d" [ 1 ]))
      [ 65 184 1 0 0 0 ]
    ;
    "mov r8,0" = expect ''"mov r8,0" to be correct [49 b8 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r8" [ 0 ]))
      [ 73 184 0 0 0 0 0 0 0 0 ]
    ;
    "mov r8,1" = expect ''"mov r8,1" to be correct [49 b8 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r8" [ 1 ]))
      [ 73 184 1 0 0 0 0 0 0 0 ]
    ;
    "mov r9b,0" = expect ''"mov r9b,0" to be correct [41 b1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r9b" [ 0 ]))
      [ 65 177 0 ]
    ;
    "mov r9b,1" = expect ''"mov r9b,1" to be correct [41 b1 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r9b" [ 1 ]))
      [ 65 177 1 ]
    ;
    "mov r9w,0" = expect ''"mov r9w,0" to be correct [66 41 b9 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r9w" [ 0 ]))
      [ 102 65 185 0 0 ]
    ;
    "mov r9w,1" = expect ''"mov r9w,1" to be correct [66 41 b9 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r9w" [ 1 ]))
      [ 102 65 185 1 0 ]
    ;
    "mov r9d,0" = expect ''"mov r9d,0" to be correct [41 b9 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r9d" [ 0 ]))
      [ 65 185 0 0 0 0 ]
    ;
    "mov r9d,1" = expect ''"mov r9d,1" to be correct [41 b9 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r9d" [ 1 ]))
      [ 65 185 1 0 0 0 ]
    ;
    "mov r9,0" = expect ''"mov r9,0" to be correct [49 b9 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r9" [ 0 ]))
      [ 73 185 0 0 0 0 0 0 0 0 ]
    ;
    "mov r9,1" = expect ''"mov r9,1" to be correct [49 b9 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r9" [ 1 ]))
      [ 73 185 1 0 0 0 0 0 0 0 ]
    ;
    "mov r10b,0" = expect ''"mov r10b,0" to be correct [41 b2 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r10b" [ 0 ]))
      [ 65 178 0 ]
    ;
    "mov r10b,1" = expect ''"mov r10b,1" to be correct [41 b2 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r10b" [ 1 ]))
      [ 65 178 1 ]
    ;
    "mov r10w,0" = expect ''"mov r10w,0" to be correct [66 41 ba 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r10w" [ 0 ]))
      [ 102 65 186 0 0 ]
    ;
    "mov r10w,1" = expect ''"mov r10w,1" to be correct [66 41 ba 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r10w" [ 1 ]))
      [ 102 65 186 1 0 ]
    ;
    "mov r10d,0" = expect ''"mov r10d,0" to be correct [41 ba 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r10d" [ 0 ]))
      [ 65 186 0 0 0 0 ]
    ;
    "mov r10d,1" = expect ''"mov r10d,1" to be correct [41 ba 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r10d" [ 1 ]))
      [ 65 186 1 0 0 0 ]
    ;
    "mov r10,0" = expect ''"mov r10,0" to be correct [49 ba 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r10" [ 0 ]))
      [ 73 186 0 0 0 0 0 0 0 0 ]
    ;
    "mov r10,1" = expect ''"mov r10,1" to be correct [49 ba 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r10" [ 1 ]))
      [ 73 186 1 0 0 0 0 0 0 0 ]
    ;
    "mov r11b,0" = expect ''"mov r11b,0" to be correct [41 b3 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r11b" [ 0 ]))
      [ 65 179 0 ]
    ;
    "mov r11b,1" = expect ''"mov r11b,1" to be correct [41 b3 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r11b" [ 1 ]))
      [ 65 179 1 ]
    ;
    "mov r11w,0" = expect ''"mov r11w,0" to be correct [66 41 bb 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r11w" [ 0 ]))
      [ 102 65 187 0 0 ]
    ;
    "mov r11w,1" = expect ''"mov r11w,1" to be correct [66 41 bb 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r11w" [ 1 ]))
      [ 102 65 187 1 0 ]
    ;
    "mov r11d,0" = expect ''"mov r11d,0" to be correct [41 bb 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r11d" [ 0 ]))
      [ 65 187 0 0 0 0 ]
    ;
    "mov r11d,1" = expect ''"mov r11d,1" to be correct [41 bb 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r11d" [ 1 ]))
      [ 65 187 1 0 0 0 ]
    ;
    "mov r11,0" = expect ''"mov r11,0" to be correct [49 bb 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r11" [ 0 ]))
      [ 73 187 0 0 0 0 0 0 0 0 ]
    ;
    "mov r11,1" = expect ''"mov r11,1" to be correct [49 bb 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r11" [ 1 ]))
      [ 73 187 1 0 0 0 0 0 0 0 ]
    ;
    "mov r12b,0" = expect ''"mov r12b,0" to be correct [41 b4 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r12b" [ 0 ]))
      [ 65 180 0 ]
    ;
    "mov r12b,1" = expect ''"mov r12b,1" to be correct [41 b4 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r12b" [ 1 ]))
      [ 65 180 1 ]
    ;
    "mov r12w,0" = expect ''"mov r12w,0" to be correct [66 41 bc 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r12w" [ 0 ]))
      [ 102 65 188 0 0 ]
    ;
    "mov r12w,1" = expect ''"mov r12w,1" to be correct [66 41 bc 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r12w" [ 1 ]))
      [ 102 65 188 1 0 ]
    ;
    "mov r12d,0" = expect ''"mov r12d,0" to be correct [41 bc 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r12d" [ 0 ]))
      [ 65 188 0 0 0 0 ]
    ;
    "mov r12d,1" = expect ''"mov r12d,1" to be correct [41 bc 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r12d" [ 1 ]))
      [ 65 188 1 0 0 0 ]
    ;
    "mov r12,0" = expect ''"mov r12,0" to be correct [49 bc 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r12" [ 0 ]))
      [ 73 188 0 0 0 0 0 0 0 0 ]
    ;
    "mov r12,1" = expect ''"mov r12,1" to be correct [49 bc 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r12" [ 1 ]))
      [ 73 188 1 0 0 0 0 0 0 0 ]
    ;
    "mov r13b,0" = expect ''"mov r13b,0" to be correct [41 b5 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r13b" [ 0 ]))
      [ 65 181 0 ]
    ;
    "mov r13b,1" = expect ''"mov r13b,1" to be correct [41 b5 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r13b" [ 1 ]))
      [ 65 181 1 ]
    ;
    "mov r13w,0" = expect ''"mov r13w,0" to be correct [66 41 bd 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r13w" [ 0 ]))
      [ 102 65 189 0 0 ]
    ;
    "mov r13w,1" = expect ''"mov r13w,1" to be correct [66 41 bd 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r13w" [ 1 ]))
      [ 102 65 189 1 0 ]
    ;
    "mov r13d,0" = expect ''"mov r13d,0" to be correct [41 bd 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r13d" [ 0 ]))
      [ 65 189 0 0 0 0 ]
    ;
    "mov r13d,1" = expect ''"mov r13d,1" to be correct [41 bd 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r13d" [ 1 ]))
      [ 65 189 1 0 0 0 ]
    ;
    "mov r13,0" = expect ''"mov r13,0" to be correct [49 bd 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r13" [ 0 ]))
      [ 73 189 0 0 0 0 0 0 0 0 ]
    ;
    "mov r13,1" = expect ''"mov r13,1" to be correct [49 bd 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r13" [ 1 ]))
      [ 73 189 1 0 0 0 0 0 0 0 ]
    ;
    "mov r14b,0" = expect ''"mov r14b,0" to be correct [41 b6 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r14b" [ 0 ]))
      [ 65 182 0 ]
    ;
    "mov r14b,1" = expect ''"mov r14b,1" to be correct [41 b6 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r14b" [ 1 ]))
      [ 65 182 1 ]
    ;
    "mov r14w,0" = expect ''"mov r14w,0" to be correct [66 41 be 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r14w" [ 0 ]))
      [ 102 65 190 0 0 ]
    ;
    "mov r14w,1" = expect ''"mov r14w,1" to be correct [66 41 be 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r14w" [ 1 ]))
      [ 102 65 190 1 0 ]
    ;
    "mov r14d,0" = expect ''"mov r14d,0" to be correct [41 be 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r14d" [ 0 ]))
      [ 65 190 0 0 0 0 ]
    ;
    "mov r14d,1" = expect ''"mov r14d,1" to be correct [41 be 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r14d" [ 1 ]))
      [ 65 190 1 0 0 0 ]
    ;
    "mov r14,0" = expect ''"mov r14,0" to be correct [49 be 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r14" [ 0 ]))
      [ 73 190 0 0 0 0 0 0 0 0 ]
    ;
    "mov r14,1" = expect ''"mov r14,1" to be correct [49 be 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r14" [ 1 ]))
      [ 73 190 1 0 0 0 0 0 0 0 ]
    ;
    "mov r15b,0" = expect ''"mov r15b,0" to be correct [41 b7 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r15b" [ 0 ]))
      [ 65 183 0 ]
    ;
    "mov r15b,1" = expect ''"mov r15b,1" to be correct [41 b7 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r15b" [ 1 ]))
      [ 65 183 1 ]
    ;
    "mov r15w,0" = expect ''"mov r15w,0" to be correct [66 41 bf 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r15w" [ 0 ]))
      [ 102 65 191 0 0 ]
    ;
    "mov r15w,1" = expect ''"mov r15w,1" to be correct [66 41 bf 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r15w" [ 1 ]))
      [ 102 65 191 1 0 ]
    ;
    "mov r15d,0" = expect ''"mov r15d,0" to be correct [41 bf 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r15d" [ 0 ]))
      [ 65 191 0 0 0 0 ]
    ;
    "mov r15d,1" = expect ''"mov r15d,1" to be correct [41 bf 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r15d" [ 1 ]))
      [ 65 191 1 0 0 0 ]
    ;
    "mov r15,0" = expect ''"mov r15,0" to be correct [49 bf 0 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r15" [ 0 ]))
      [ 73 191 0 0 0 0 0 0 0 0 ]
    ;
    "mov r15,1" = expect ''"mov r15,1" to be correct [49 bf 1 0 0 0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.MOV_imm "r15" [ 1 ]))
      [ 73 191 1 0 0 0 0 0 0 0 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["je","JE",["off"]]
  #
  "JE" = {
    "je 42" = expect ''"je 42" to be correct [f 84 26 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.JE 42))
      [ 15 132 38 0 0 0 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["jne","JNE",["off"]]
  #
  "JNE" = {
    "jne 42" = expect ''"jne 42" to be correct [f 85 26 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.JNE 42))
      [ 15 133 38 0 0 0 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["cmp","CMP_imm",["reg","imm"]]
  #
  "CMP_imm" = {
    "cmp al,0" = expect ''"cmp al,0" to be correct [3c 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "al" [ 0 ]))
      [ 60 0 ]
    ;
    "cmp al,1" = expect ''"cmp al,1" to be correct [3c 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "al" [ 1 ]))
      [ 60 1 ]
    ;
    "cmp cl,0" = expect ''"cmp cl,0" to be correct [80 f9 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "cl" [ 0 ]))
      [ 128 249 0 ]
    ;
    "cmp cl,1" = expect ''"cmp cl,1" to be correct [80 f9 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "cl" [ 1 ]))
      [ 128 249 1 ]
    ;
    "cmp dl,0" = expect ''"cmp dl,0" to be correct [80 fa 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "dl" [ 0 ]))
      [ 128 250 0 ]
    ;
    "cmp dl,1" = expect ''"cmp dl,1" to be correct [80 fa 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "dl" [ 1 ]))
      [ 128 250 1 ]
    ;
    "cmp bl,0" = expect ''"cmp bl,0" to be correct [80 fb 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "bl" [ 0 ]))
      [ 128 251 0 ]
    ;
    "cmp bl,1" = expect ''"cmp bl,1" to be correct [80 fb 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "bl" [ 1 ]))
      [ 128 251 1 ]
    ;
    "cmp ah,0" = expect ''"cmp ah,0" to be correct [80 fc 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ah" [ 0 ]))
      [ 128 252 0 ]
    ;
    "cmp ah,1" = expect ''"cmp ah,1" to be correct [80 fc 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ah" [ 1 ]))
      [ 128 252 1 ]
    ;
    "cmp ch,0" = expect ''"cmp ch,0" to be correct [80 fd 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ch" [ 0 ]))
      [ 128 253 0 ]
    ;
    "cmp ch,1" = expect ''"cmp ch,1" to be correct [80 fd 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ch" [ 1 ]))
      [ 128 253 1 ]
    ;
    "cmp dh,0" = expect ''"cmp dh,0" to be correct [80 fe 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "dh" [ 0 ]))
      [ 128 254 0 ]
    ;
    "cmp dh,1" = expect ''"cmp dh,1" to be correct [80 fe 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "dh" [ 1 ]))
      [ 128 254 1 ]
    ;
    "cmp bh,0" = expect ''"cmp bh,0" to be correct [80 ff 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "bh" [ 0 ]))
      [ 128 255 0 ]
    ;
    "cmp bh,1" = expect ''"cmp bh,1" to be correct [80 ff 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "bh" [ 1 ]))
      [ 128 255 1 ]
    ;
    "cmp ax,0" = expect ''"cmp ax,0" to be correct [66 3d 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ax" [ 0 ]))
      [ 102 61 0 0 ]
    ;
    "cmp ax,1" = expect ''"cmp ax,1" to be correct [66 3d 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ax" [ 1 ]))
      [ 102 61 1 0 ]
    ;
    "cmp cx,0" = expect ''"cmp cx,0" to be correct [66 81 f9 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "cx" [ 0 ]))
      [ 102 129 249 0 0 ]
    ;
    "cmp cx,1" = expect ''"cmp cx,1" to be correct [66 81 f9 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "cx" [ 1 ]))
      [ 102 129 249 1 0 ]
    ;
    "cmp dx,0" = expect ''"cmp dx,0" to be correct [66 81 fa 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "dx" [ 0 ]))
      [ 102 129 250 0 0 ]
    ;
    "cmp dx,1" = expect ''"cmp dx,1" to be correct [66 81 fa 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "dx" [ 1 ]))
      [ 102 129 250 1 0 ]
    ;
    "cmp bx,0" = expect ''"cmp bx,0" to be correct [66 81 fb 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "bx" [ 0 ]))
      [ 102 129 251 0 0 ]
    ;
    "cmp bx,1" = expect ''"cmp bx,1" to be correct [66 81 fb 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "bx" [ 1 ]))
      [ 102 129 251 1 0 ]
    ;
    "cmp sp,0" = expect ''"cmp sp,0" to be correct [66 81 fc 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "sp" [ 0 ]))
      [ 102 129 252 0 0 ]
    ;
    "cmp sp,1" = expect ''"cmp sp,1" to be correct [66 81 fc 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "sp" [ 1 ]))
      [ 102 129 252 1 0 ]
    ;
    "cmp bp,0" = expect ''"cmp bp,0" to be correct [66 81 fd 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "bp" [ 0 ]))
      [ 102 129 253 0 0 ]
    ;
    "cmp bp,1" = expect ''"cmp bp,1" to be correct [66 81 fd 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "bp" [ 1 ]))
      [ 102 129 253 1 0 ]
    ;
    "cmp si,0" = expect ''"cmp si,0" to be correct [66 81 fe 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "si" [ 0 ]))
      [ 102 129 254 0 0 ]
    ;
    "cmp si,1" = expect ''"cmp si,1" to be correct [66 81 fe 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "si" [ 1 ]))
      [ 102 129 254 1 0 ]
    ;
    "cmp di,0" = expect ''"cmp di,0" to be correct [66 81 ff 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "di" [ 0 ]))
      [ 102 129 255 0 0 ]
    ;
    "cmp di,1" = expect ''"cmp di,1" to be correct [66 81 ff 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "di" [ 1 ]))
      [ 102 129 255 1 0 ]
    ;
    "cmp eax,0" = expect ''"cmp eax,0" to be correct [3d 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "eax" [ 0 ]))
      [ 61 0 0 0 0 ]
    ;
    "cmp eax,1" = expect ''"cmp eax,1" to be correct [3d 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "eax" [ 1 ]))
      [ 61 1 0 0 0 ]
    ;
    "cmp ecx,0" = expect ''"cmp ecx,0" to be correct [81 f9 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ecx" [ 0 ]))
      [ 129 249 0 0 0 0 ]
    ;
    "cmp ecx,1" = expect ''"cmp ecx,1" to be correct [81 f9 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ecx" [ 1 ]))
      [ 129 249 1 0 0 0 ]
    ;
    "cmp edx,0" = expect ''"cmp edx,0" to be correct [81 fa 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "edx" [ 0 ]))
      [ 129 250 0 0 0 0 ]
    ;
    "cmp edx,1" = expect ''"cmp edx,1" to be correct [81 fa 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "edx" [ 1 ]))
      [ 129 250 1 0 0 0 ]
    ;
    "cmp ebx,0" = expect ''"cmp ebx,0" to be correct [81 fb 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ebx" [ 0 ]))
      [ 129 251 0 0 0 0 ]
    ;
    "cmp ebx,1" = expect ''"cmp ebx,1" to be correct [81 fb 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ebx" [ 1 ]))
      [ 129 251 1 0 0 0 ]
    ;
    "cmp esp,0" = expect ''"cmp esp,0" to be correct [81 fc 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "esp" [ 0 ]))
      [ 129 252 0 0 0 0 ]
    ;
    "cmp esp,1" = expect ''"cmp esp,1" to be correct [81 fc 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "esp" [ 1 ]))
      [ 129 252 1 0 0 0 ]
    ;
    "cmp ebp,0" = expect ''"cmp ebp,0" to be correct [81 fd 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ebp" [ 0 ]))
      [ 129 253 0 0 0 0 ]
    ;
    "cmp ebp,1" = expect ''"cmp ebp,1" to be correct [81 fd 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "ebp" [ 1 ]))
      [ 129 253 1 0 0 0 ]
    ;
    "cmp esi,0" = expect ''"cmp esi,0" to be correct [81 fe 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "esi" [ 0 ]))
      [ 129 254 0 0 0 0 ]
    ;
    "cmp esi,1" = expect ''"cmp esi,1" to be correct [81 fe 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "esi" [ 1 ]))
      [ 129 254 1 0 0 0 ]
    ;
    "cmp edi,0" = expect ''"cmp edi,0" to be correct [81 ff 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "edi" [ 0 ]))
      [ 129 255 0 0 0 0 ]
    ;
    "cmp edi,1" = expect ''"cmp edi,1" to be correct [81 ff 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "edi" [ 1 ]))
      [ 129 255 1 0 0 0 ]
    ;
    "cmp rax,0" = expect ''"cmp rax,0" to be correct [48 3d 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rax" [ 0 ]))
      [ 72 61 0 0 0 0 ]
    ;
    "cmp rax,1" = expect ''"cmp rax,1" to be correct [48 3d 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rax" [ 1 ]))
      [ 72 61 1 0 0 0 ]
    ;
    "cmp rcx,0" = expect ''"cmp rcx,0" to be correct [48 81 f9 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rcx" [ 0 ]))
      [ 72 129 249 0 0 0 0 ]
    ;
    "cmp rcx,1" = expect ''"cmp rcx,1" to be correct [48 81 f9 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rcx" [ 1 ]))
      [ 72 129 249 1 0 0 0 ]
    ;
    "cmp rdx,0" = expect ''"cmp rdx,0" to be correct [48 81 fa 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rdx" [ 0 ]))
      [ 72 129 250 0 0 0 0 ]
    ;
    "cmp rdx,1" = expect ''"cmp rdx,1" to be correct [48 81 fa 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rdx" [ 1 ]))
      [ 72 129 250 1 0 0 0 ]
    ;
    "cmp rbx,0" = expect ''"cmp rbx,0" to be correct [48 81 fb 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rbx" [ 0 ]))
      [ 72 129 251 0 0 0 0 ]
    ;
    "cmp rbx,1" = expect ''"cmp rbx,1" to be correct [48 81 fb 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rbx" [ 1 ]))
      [ 72 129 251 1 0 0 0 ]
    ;
    "cmp rsp,0" = expect ''"cmp rsp,0" to be correct [48 81 fc 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rsp" [ 0 ]))
      [ 72 129 252 0 0 0 0 ]
    ;
    "cmp rsp,1" = expect ''"cmp rsp,1" to be correct [48 81 fc 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rsp" [ 1 ]))
      [ 72 129 252 1 0 0 0 ]
    ;
    "cmp rbp,0" = expect ''"cmp rbp,0" to be correct [48 81 fd 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rbp" [ 0 ]))
      [ 72 129 253 0 0 0 0 ]
    ;
    "cmp rbp,1" = expect ''"cmp rbp,1" to be correct [48 81 fd 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rbp" [ 1 ]))
      [ 72 129 253 1 0 0 0 ]
    ;
    "cmp rsi,0" = expect ''"cmp rsi,0" to be correct [48 81 fe 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rsi" [ 0 ]))
      [ 72 129 254 0 0 0 0 ]
    ;
    "cmp rsi,1" = expect ''"cmp rsi,1" to be correct [48 81 fe 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rsi" [ 1 ]))
      [ 72 129 254 1 0 0 0 ]
    ;
    "cmp rdi,0" = expect ''"cmp rdi,0" to be correct [48 81 ff 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rdi" [ 0 ]))
      [ 72 129 255 0 0 0 0 ]
    ;
    "cmp rdi,1" = expect ''"cmp rdi,1" to be correct [48 81 ff 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "rdi" [ 1 ]))
      [ 72 129 255 1 0 0 0 ]
    ;
    "cmp r8b,0" = expect ''"cmp r8b,0" to be correct [41 80 f8 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r8b" [ 0 ]))
      [ 65 128 248 0 ]
    ;
    "cmp r8b,1" = expect ''"cmp r8b,1" to be correct [41 80 f8 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r8b" [ 1 ]))
      [ 65 128 248 1 ]
    ;
    "cmp r8w,0" = expect ''"cmp r8w,0" to be correct [66 41 81 f8 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r8w" [ 0 ]))
      [ 102 65 129 248 0 0 ]
    ;
    "cmp r8w,1" = expect ''"cmp r8w,1" to be correct [66 41 81 f8 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r8w" [ 1 ]))
      [ 102 65 129 248 1 0 ]
    ;
    "cmp r8d,0" = expect ''"cmp r8d,0" to be correct [41 81 f8 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r8d" [ 0 ]))
      [ 65 129 248 0 0 0 0 ]
    ;
    "cmp r8d,1" = expect ''"cmp r8d,1" to be correct [41 81 f8 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r8d" [ 1 ]))
      [ 65 129 248 1 0 0 0 ]
    ;
    "cmp r8,0" = expect ''"cmp r8,0" to be correct [49 81 f8 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r8" [ 0 ]))
      [ 73 129 248 0 0 0 0 ]
    ;
    "cmp r8,1" = expect ''"cmp r8,1" to be correct [49 81 f8 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r8" [ 1 ]))
      [ 73 129 248 1 0 0 0 ]
    ;
    "cmp r9b,0" = expect ''"cmp r9b,0" to be correct [41 80 f9 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r9b" [ 0 ]))
      [ 65 128 249 0 ]
    ;
    "cmp r9b,1" = expect ''"cmp r9b,1" to be correct [41 80 f9 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r9b" [ 1 ]))
      [ 65 128 249 1 ]
    ;
    "cmp r9w,0" = expect ''"cmp r9w,0" to be correct [66 41 81 f9 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r9w" [ 0 ]))
      [ 102 65 129 249 0 0 ]
    ;
    "cmp r9w,1" = expect ''"cmp r9w,1" to be correct [66 41 81 f9 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r9w" [ 1 ]))
      [ 102 65 129 249 1 0 ]
    ;
    "cmp r9d,0" = expect ''"cmp r9d,0" to be correct [41 81 f9 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r9d" [ 0 ]))
      [ 65 129 249 0 0 0 0 ]
    ;
    "cmp r9d,1" = expect ''"cmp r9d,1" to be correct [41 81 f9 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r9d" [ 1 ]))
      [ 65 129 249 1 0 0 0 ]
    ;
    "cmp r9,0" = expect ''"cmp r9,0" to be correct [49 81 f9 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r9" [ 0 ]))
      [ 73 129 249 0 0 0 0 ]
    ;
    "cmp r9,1" = expect ''"cmp r9,1" to be correct [49 81 f9 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r9" [ 1 ]))
      [ 73 129 249 1 0 0 0 ]
    ;
    "cmp r10b,0" = expect ''"cmp r10b,0" to be correct [41 80 fa 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r10b" [ 0 ]))
      [ 65 128 250 0 ]
    ;
    "cmp r10b,1" = expect ''"cmp r10b,1" to be correct [41 80 fa 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r10b" [ 1 ]))
      [ 65 128 250 1 ]
    ;
    "cmp r10w,0" = expect ''"cmp r10w,0" to be correct [66 41 81 fa 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r10w" [ 0 ]))
      [ 102 65 129 250 0 0 ]
    ;
    "cmp r10w,1" = expect ''"cmp r10w,1" to be correct [66 41 81 fa 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r10w" [ 1 ]))
      [ 102 65 129 250 1 0 ]
    ;
    "cmp r10d,0" = expect ''"cmp r10d,0" to be correct [41 81 fa 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r10d" [ 0 ]))
      [ 65 129 250 0 0 0 0 ]
    ;
    "cmp r10d,1" = expect ''"cmp r10d,1" to be correct [41 81 fa 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r10d" [ 1 ]))
      [ 65 129 250 1 0 0 0 ]
    ;
    "cmp r10,0" = expect ''"cmp r10,0" to be correct [49 81 fa 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r10" [ 0 ]))
      [ 73 129 250 0 0 0 0 ]
    ;
    "cmp r10,1" = expect ''"cmp r10,1" to be correct [49 81 fa 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r10" [ 1 ]))
      [ 73 129 250 1 0 0 0 ]
    ;
    "cmp r11b,0" = expect ''"cmp r11b,0" to be correct [41 80 fb 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r11b" [ 0 ]))
      [ 65 128 251 0 ]
    ;
    "cmp r11b,1" = expect ''"cmp r11b,1" to be correct [41 80 fb 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r11b" [ 1 ]))
      [ 65 128 251 1 ]
    ;
    "cmp r11w,0" = expect ''"cmp r11w,0" to be correct [66 41 81 fb 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r11w" [ 0 ]))
      [ 102 65 129 251 0 0 ]
    ;
    "cmp r11w,1" = expect ''"cmp r11w,1" to be correct [66 41 81 fb 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r11w" [ 1 ]))
      [ 102 65 129 251 1 0 ]
    ;
    "cmp r11d,0" = expect ''"cmp r11d,0" to be correct [41 81 fb 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r11d" [ 0 ]))
      [ 65 129 251 0 0 0 0 ]
    ;
    "cmp r11d,1" = expect ''"cmp r11d,1" to be correct [41 81 fb 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r11d" [ 1 ]))
      [ 65 129 251 1 0 0 0 ]
    ;
    "cmp r11,0" = expect ''"cmp r11,0" to be correct [49 81 fb 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r11" [ 0 ]))
      [ 73 129 251 0 0 0 0 ]
    ;
    "cmp r11,1" = expect ''"cmp r11,1" to be correct [49 81 fb 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r11" [ 1 ]))
      [ 73 129 251 1 0 0 0 ]
    ;
    "cmp r12b,0" = expect ''"cmp r12b,0" to be correct [41 80 fc 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r12b" [ 0 ]))
      [ 65 128 252 0 ]
    ;
    "cmp r12b,1" = expect ''"cmp r12b,1" to be correct [41 80 fc 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r12b" [ 1 ]))
      [ 65 128 252 1 ]
    ;
    "cmp r12w,0" = expect ''"cmp r12w,0" to be correct [66 41 81 fc 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r12w" [ 0 ]))
      [ 102 65 129 252 0 0 ]
    ;
    "cmp r12w,1" = expect ''"cmp r12w,1" to be correct [66 41 81 fc 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r12w" [ 1 ]))
      [ 102 65 129 252 1 0 ]
    ;
    "cmp r12d,0" = expect ''"cmp r12d,0" to be correct [41 81 fc 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r12d" [ 0 ]))
      [ 65 129 252 0 0 0 0 ]
    ;
    "cmp r12d,1" = expect ''"cmp r12d,1" to be correct [41 81 fc 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r12d" [ 1 ]))
      [ 65 129 252 1 0 0 0 ]
    ;
    "cmp r12,0" = expect ''"cmp r12,0" to be correct [49 81 fc 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r12" [ 0 ]))
      [ 73 129 252 0 0 0 0 ]
    ;
    "cmp r12,1" = expect ''"cmp r12,1" to be correct [49 81 fc 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r12" [ 1 ]))
      [ 73 129 252 1 0 0 0 ]
    ;
    "cmp r13b,0" = expect ''"cmp r13b,0" to be correct [41 80 fd 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r13b" [ 0 ]))
      [ 65 128 253 0 ]
    ;
    "cmp r13b,1" = expect ''"cmp r13b,1" to be correct [41 80 fd 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r13b" [ 1 ]))
      [ 65 128 253 1 ]
    ;
    "cmp r13w,0" = expect ''"cmp r13w,0" to be correct [66 41 81 fd 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r13w" [ 0 ]))
      [ 102 65 129 253 0 0 ]
    ;
    "cmp r13w,1" = expect ''"cmp r13w,1" to be correct [66 41 81 fd 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r13w" [ 1 ]))
      [ 102 65 129 253 1 0 ]
    ;
    "cmp r13d,0" = expect ''"cmp r13d,0" to be correct [41 81 fd 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r13d" [ 0 ]))
      [ 65 129 253 0 0 0 0 ]
    ;
    "cmp r13d,1" = expect ''"cmp r13d,1" to be correct [41 81 fd 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r13d" [ 1 ]))
      [ 65 129 253 1 0 0 0 ]
    ;
    "cmp r13,0" = expect ''"cmp r13,0" to be correct [49 81 fd 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r13" [ 0 ]))
      [ 73 129 253 0 0 0 0 ]
    ;
    "cmp r13,1" = expect ''"cmp r13,1" to be correct [49 81 fd 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r13" [ 1 ]))
      [ 73 129 253 1 0 0 0 ]
    ;
    "cmp r14b,0" = expect ''"cmp r14b,0" to be correct [41 80 fe 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r14b" [ 0 ]))
      [ 65 128 254 0 ]
    ;
    "cmp r14b,1" = expect ''"cmp r14b,1" to be correct [41 80 fe 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r14b" [ 1 ]))
      [ 65 128 254 1 ]
    ;
    "cmp r14w,0" = expect ''"cmp r14w,0" to be correct [66 41 81 fe 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r14w" [ 0 ]))
      [ 102 65 129 254 0 0 ]
    ;
    "cmp r14w,1" = expect ''"cmp r14w,1" to be correct [66 41 81 fe 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r14w" [ 1 ]))
      [ 102 65 129 254 1 0 ]
    ;
    "cmp r14d,0" = expect ''"cmp r14d,0" to be correct [41 81 fe 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r14d" [ 0 ]))
      [ 65 129 254 0 0 0 0 ]
    ;
    "cmp r14d,1" = expect ''"cmp r14d,1" to be correct [41 81 fe 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r14d" [ 1 ]))
      [ 65 129 254 1 0 0 0 ]
    ;
    "cmp r14,0" = expect ''"cmp r14,0" to be correct [49 81 fe 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r14" [ 0 ]))
      [ 73 129 254 0 0 0 0 ]
    ;
    "cmp r14,1" = expect ''"cmp r14,1" to be correct [49 81 fe 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r14" [ 1 ]))
      [ 73 129 254 1 0 0 0 ]
    ;
    "cmp r15b,0" = expect ''"cmp r15b,0" to be correct [41 80 ff 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r15b" [ 0 ]))
      [ 65 128 255 0 ]
    ;
    "cmp r15b,1" = expect ''"cmp r15b,1" to be correct [41 80 ff 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r15b" [ 1 ]))
      [ 65 128 255 1 ]
    ;
    "cmp r15w,0" = expect ''"cmp r15w,0" to be correct [66 41 81 ff 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r15w" [ 0 ]))
      [ 102 65 129 255 0 0 ]
    ;
    "cmp r15w,1" = expect ''"cmp r15w,1" to be correct [66 41 81 ff 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r15w" [ 1 ]))
      [ 102 65 129 255 1 0 ]
    ;
    "cmp r15d,0" = expect ''"cmp r15d,0" to be correct [41 81 ff 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r15d" [ 0 ]))
      [ 65 129 255 0 0 0 0 ]
    ;
    "cmp r15d,1" = expect ''"cmp r15d,1" to be correct [41 81 ff 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r15d" [ 1 ]))
      [ 65 129 255 1 0 0 0 ]
    ;
    "cmp r15,0" = expect ''"cmp r15,0" to be correct [49 81 ff 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r15" [ 0 ]))
      [ 73 129 255 0 0 0 0 ]
    ;
    "cmp r15,1" = expect ''"cmp r15,1" to be correct [49 81 ff 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.CMP_imm "r15" [ 1 ]))
      [ 73 129 255 1 0 0 0 ]
    ;
  };
  
  #
  # Test generation input:
  #     ["add","ADD_imm",["reg","imm"]]
  #
  "ADD_imm" = {
    "add al,0" = expect ''"add al,0" to be correct [4 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "al" [ 0 ]))
      [ 4 0 ]
    ;
    "add al,1" = expect ''"add al,1" to be correct [4 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "al" [ 1 ]))
      [ 4 1 ]
    ;
    "add cl,0" = expect ''"add cl,0" to be correct [80 c1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "cl" [ 0 ]))
      [ 128 193 0 ]
    ;
    "add cl,1" = expect ''"add cl,1" to be correct [80 c1 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "cl" [ 1 ]))
      [ 128 193 1 ]
    ;
    "add dl,0" = expect ''"add dl,0" to be correct [80 c2 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "dl" [ 0 ]))
      [ 128 194 0 ]
    ;
    "add dl,1" = expect ''"add dl,1" to be correct [80 c2 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "dl" [ 1 ]))
      [ 128 194 1 ]
    ;
    "add bl,0" = expect ''"add bl,0" to be correct [80 c3 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "bl" [ 0 ]))
      [ 128 195 0 ]
    ;
    "add bl,1" = expect ''"add bl,1" to be correct [80 c3 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "bl" [ 1 ]))
      [ 128 195 1 ]
    ;
    "add ah,0" = expect ''"add ah,0" to be correct [80 c4 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ah" [ 0 ]))
      [ 128 196 0 ]
    ;
    "add ah,1" = expect ''"add ah,1" to be correct [80 c4 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ah" [ 1 ]))
      [ 128 196 1 ]
    ;
    "add ch,0" = expect ''"add ch,0" to be correct [80 c5 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ch" [ 0 ]))
      [ 128 197 0 ]
    ;
    "add ch,1" = expect ''"add ch,1" to be correct [80 c5 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ch" [ 1 ]))
      [ 128 197 1 ]
    ;
    "add dh,0" = expect ''"add dh,0" to be correct [80 c6 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "dh" [ 0 ]))
      [ 128 198 0 ]
    ;
    "add dh,1" = expect ''"add dh,1" to be correct [80 c6 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "dh" [ 1 ]))
      [ 128 198 1 ]
    ;
    "add bh,0" = expect ''"add bh,0" to be correct [80 c7 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "bh" [ 0 ]))
      [ 128 199 0 ]
    ;
    "add bh,1" = expect ''"add bh,1" to be correct [80 c7 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "bh" [ 1 ]))
      [ 128 199 1 ]
    ;
    "add ax,0" = expect ''"add ax,0" to be correct [66 5 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ax" [ 0 ]))
      [ 102 5 0 0 ]
    ;
    "add ax,1" = expect ''"add ax,1" to be correct [66 5 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ax" [ 1 ]))
      [ 102 5 1 0 ]
    ;
    "add cx,0" = expect ''"add cx,0" to be correct [66 81 c1 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "cx" [ 0 ]))
      [ 102 129 193 0 0 ]
    ;
    "add cx,1" = expect ''"add cx,1" to be correct [66 81 c1 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "cx" [ 1 ]))
      [ 102 129 193 1 0 ]
    ;
    "add dx,0" = expect ''"add dx,0" to be correct [66 81 c2 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "dx" [ 0 ]))
      [ 102 129 194 0 0 ]
    ;
    "add dx,1" = expect ''"add dx,1" to be correct [66 81 c2 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "dx" [ 1 ]))
      [ 102 129 194 1 0 ]
    ;
    "add bx,0" = expect ''"add bx,0" to be correct [66 81 c3 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "bx" [ 0 ]))
      [ 102 129 195 0 0 ]
    ;
    "add bx,1" = expect ''"add bx,1" to be correct [66 81 c3 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "bx" [ 1 ]))
      [ 102 129 195 1 0 ]
    ;
    "add sp,0" = expect ''"add sp,0" to be correct [66 81 c4 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "sp" [ 0 ]))
      [ 102 129 196 0 0 ]
    ;
    "add sp,1" = expect ''"add sp,1" to be correct [66 81 c4 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "sp" [ 1 ]))
      [ 102 129 196 1 0 ]
    ;
    "add bp,0" = expect ''"add bp,0" to be correct [66 81 c5 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "bp" [ 0 ]))
      [ 102 129 197 0 0 ]
    ;
    "add bp,1" = expect ''"add bp,1" to be correct [66 81 c5 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "bp" [ 1 ]))
      [ 102 129 197 1 0 ]
    ;
    "add si,0" = expect ''"add si,0" to be correct [66 81 c6 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "si" [ 0 ]))
      [ 102 129 198 0 0 ]
    ;
    "add si,1" = expect ''"add si,1" to be correct [66 81 c6 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "si" [ 1 ]))
      [ 102 129 198 1 0 ]
    ;
    "add di,0" = expect ''"add di,0" to be correct [66 81 c7 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "di" [ 0 ]))
      [ 102 129 199 0 0 ]
    ;
    "add di,1" = expect ''"add di,1" to be correct [66 81 c7 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "di" [ 1 ]))
      [ 102 129 199 1 0 ]
    ;
    "add eax,0" = expect ''"add eax,0" to be correct [5 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "eax" [ 0 ]))
      [ 5 0 0 0 0 ]
    ;
    "add eax,1" = expect ''"add eax,1" to be correct [5 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "eax" [ 1 ]))
      [ 5 1 0 0 0 ]
    ;
    "add ecx,0" = expect ''"add ecx,0" to be correct [81 c1 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ecx" [ 0 ]))
      [ 129 193 0 0 0 0 ]
    ;
    "add ecx,1" = expect ''"add ecx,1" to be correct [81 c1 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ecx" [ 1 ]))
      [ 129 193 1 0 0 0 ]
    ;
    "add edx,0" = expect ''"add edx,0" to be correct [81 c2 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "edx" [ 0 ]))
      [ 129 194 0 0 0 0 ]
    ;
    "add edx,1" = expect ''"add edx,1" to be correct [81 c2 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "edx" [ 1 ]))
      [ 129 194 1 0 0 0 ]
    ;
    "add ebx,0" = expect ''"add ebx,0" to be correct [81 c3 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ebx" [ 0 ]))
      [ 129 195 0 0 0 0 ]
    ;
    "add ebx,1" = expect ''"add ebx,1" to be correct [81 c3 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ebx" [ 1 ]))
      [ 129 195 1 0 0 0 ]
    ;
    "add esp,0" = expect ''"add esp,0" to be correct [81 c4 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "esp" [ 0 ]))
      [ 129 196 0 0 0 0 ]
    ;
    "add esp,1" = expect ''"add esp,1" to be correct [81 c4 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "esp" [ 1 ]))
      [ 129 196 1 0 0 0 ]
    ;
    "add ebp,0" = expect ''"add ebp,0" to be correct [81 c5 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ebp" [ 0 ]))
      [ 129 197 0 0 0 0 ]
    ;
    "add ebp,1" = expect ''"add ebp,1" to be correct [81 c5 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "ebp" [ 1 ]))
      [ 129 197 1 0 0 0 ]
    ;
    "add esi,0" = expect ''"add esi,0" to be correct [81 c6 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "esi" [ 0 ]))
      [ 129 198 0 0 0 0 ]
    ;
    "add esi,1" = expect ''"add esi,1" to be correct [81 c6 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "esi" [ 1 ]))
      [ 129 198 1 0 0 0 ]
    ;
    "add edi,0" = expect ''"add edi,0" to be correct [81 c7 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "edi" [ 0 ]))
      [ 129 199 0 0 0 0 ]
    ;
    "add edi,1" = expect ''"add edi,1" to be correct [81 c7 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "edi" [ 1 ]))
      [ 129 199 1 0 0 0 ]
    ;
    "add rax,0" = expect ''"add rax,0" to be correct [48 5 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rax" [ 0 ]))
      [ 72 5 0 0 0 0 ]
    ;
    "add rax,1" = expect ''"add rax,1" to be correct [48 5 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rax" [ 1 ]))
      [ 72 5 1 0 0 0 ]
    ;
    "add rcx,0" = expect ''"add rcx,0" to be correct [48 81 c1 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rcx" [ 0 ]))
      [ 72 129 193 0 0 0 0 ]
    ;
    "add rcx,1" = expect ''"add rcx,1" to be correct [48 81 c1 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rcx" [ 1 ]))
      [ 72 129 193 1 0 0 0 ]
    ;
    "add rdx,0" = expect ''"add rdx,0" to be correct [48 81 c2 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rdx" [ 0 ]))
      [ 72 129 194 0 0 0 0 ]
    ;
    "add rdx,1" = expect ''"add rdx,1" to be correct [48 81 c2 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rdx" [ 1 ]))
      [ 72 129 194 1 0 0 0 ]
    ;
    "add rbx,0" = expect ''"add rbx,0" to be correct [48 81 c3 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rbx" [ 0 ]))
      [ 72 129 195 0 0 0 0 ]
    ;
    "add rbx,1" = expect ''"add rbx,1" to be correct [48 81 c3 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rbx" [ 1 ]))
      [ 72 129 195 1 0 0 0 ]
    ;
    "add rsp,0" = expect ''"add rsp,0" to be correct [48 81 c4 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rsp" [ 0 ]))
      [ 72 129 196 0 0 0 0 ]
    ;
    "add rsp,1" = expect ''"add rsp,1" to be correct [48 81 c4 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rsp" [ 1 ]))
      [ 72 129 196 1 0 0 0 ]
    ;
    "add rbp,0" = expect ''"add rbp,0" to be correct [48 81 c5 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rbp" [ 0 ]))
      [ 72 129 197 0 0 0 0 ]
    ;
    "add rbp,1" = expect ''"add rbp,1" to be correct [48 81 c5 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rbp" [ 1 ]))
      [ 72 129 197 1 0 0 0 ]
    ;
    "add rsi,0" = expect ''"add rsi,0" to be correct [48 81 c6 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rsi" [ 0 ]))
      [ 72 129 198 0 0 0 0 ]
    ;
    "add rsi,1" = expect ''"add rsi,1" to be correct [48 81 c6 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rsi" [ 1 ]))
      [ 72 129 198 1 0 0 0 ]
    ;
    "add rdi,0" = expect ''"add rdi,0" to be correct [48 81 c7 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rdi" [ 0 ]))
      [ 72 129 199 0 0 0 0 ]
    ;
    "add rdi,1" = expect ''"add rdi,1" to be correct [48 81 c7 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "rdi" [ 1 ]))
      [ 72 129 199 1 0 0 0 ]
    ;
    "add r8b,0" = expect ''"add r8b,0" to be correct [41 80 c0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r8b" [ 0 ]))
      [ 65 128 192 0 ]
    ;
    "add r8b,1" = expect ''"add r8b,1" to be correct [41 80 c0 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r8b" [ 1 ]))
      [ 65 128 192 1 ]
    ;
    "add r8w,0" = expect ''"add r8w,0" to be correct [66 41 81 c0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r8w" [ 0 ]))
      [ 102 65 129 192 0 0 ]
    ;
    "add r8w,1" = expect ''"add r8w,1" to be correct [66 41 81 c0 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r8w" [ 1 ]))
      [ 102 65 129 192 1 0 ]
    ;
    "add r8d,0" = expect ''"add r8d,0" to be correct [41 81 c0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r8d" [ 0 ]))
      [ 65 129 192 0 0 0 0 ]
    ;
    "add r8d,1" = expect ''"add r8d,1" to be correct [41 81 c0 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r8d" [ 1 ]))
      [ 65 129 192 1 0 0 0 ]
    ;
    "add r8,0" = expect ''"add r8,0" to be correct [49 81 c0 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r8" [ 0 ]))
      [ 73 129 192 0 0 0 0 ]
    ;
    "add r8,1" = expect ''"add r8,1" to be correct [49 81 c0 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r8" [ 1 ]))
      [ 73 129 192 1 0 0 0 ]
    ;
    "add r9b,0" = expect ''"add r9b,0" to be correct [41 80 c1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r9b" [ 0 ]))
      [ 65 128 193 0 ]
    ;
    "add r9b,1" = expect ''"add r9b,1" to be correct [41 80 c1 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r9b" [ 1 ]))
      [ 65 128 193 1 ]
    ;
    "add r9w,0" = expect ''"add r9w,0" to be correct [66 41 81 c1 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r9w" [ 0 ]))
      [ 102 65 129 193 0 0 ]
    ;
    "add r9w,1" = expect ''"add r9w,1" to be correct [66 41 81 c1 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r9w" [ 1 ]))
      [ 102 65 129 193 1 0 ]
    ;
    "add r9d,0" = expect ''"add r9d,0" to be correct [41 81 c1 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r9d" [ 0 ]))
      [ 65 129 193 0 0 0 0 ]
    ;
    "add r9d,1" = expect ''"add r9d,1" to be correct [41 81 c1 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r9d" [ 1 ]))
      [ 65 129 193 1 0 0 0 ]
    ;
    "add r9,0" = expect ''"add r9,0" to be correct [49 81 c1 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r9" [ 0 ]))
      [ 73 129 193 0 0 0 0 ]
    ;
    "add r9,1" = expect ''"add r9,1" to be correct [49 81 c1 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r9" [ 1 ]))
      [ 73 129 193 1 0 0 0 ]
    ;
    "add r10b,0" = expect ''"add r10b,0" to be correct [41 80 c2 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r10b" [ 0 ]))
      [ 65 128 194 0 ]
    ;
    "add r10b,1" = expect ''"add r10b,1" to be correct [41 80 c2 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r10b" [ 1 ]))
      [ 65 128 194 1 ]
    ;
    "add r10w,0" = expect ''"add r10w,0" to be correct [66 41 81 c2 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r10w" [ 0 ]))
      [ 102 65 129 194 0 0 ]
    ;
    "add r10w,1" = expect ''"add r10w,1" to be correct [66 41 81 c2 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r10w" [ 1 ]))
      [ 102 65 129 194 1 0 ]
    ;
    "add r10d,0" = expect ''"add r10d,0" to be correct [41 81 c2 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r10d" [ 0 ]))
      [ 65 129 194 0 0 0 0 ]
    ;
    "add r10d,1" = expect ''"add r10d,1" to be correct [41 81 c2 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r10d" [ 1 ]))
      [ 65 129 194 1 0 0 0 ]
    ;
    "add r10,0" = expect ''"add r10,0" to be correct [49 81 c2 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r10" [ 0 ]))
      [ 73 129 194 0 0 0 0 ]
    ;
    "add r10,1" = expect ''"add r10,1" to be correct [49 81 c2 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r10" [ 1 ]))
      [ 73 129 194 1 0 0 0 ]
    ;
    "add r11b,0" = expect ''"add r11b,0" to be correct [41 80 c3 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r11b" [ 0 ]))
      [ 65 128 195 0 ]
    ;
    "add r11b,1" = expect ''"add r11b,1" to be correct [41 80 c3 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r11b" [ 1 ]))
      [ 65 128 195 1 ]
    ;
    "add r11w,0" = expect ''"add r11w,0" to be correct [66 41 81 c3 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r11w" [ 0 ]))
      [ 102 65 129 195 0 0 ]
    ;
    "add r11w,1" = expect ''"add r11w,1" to be correct [66 41 81 c3 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r11w" [ 1 ]))
      [ 102 65 129 195 1 0 ]
    ;
    "add r11d,0" = expect ''"add r11d,0" to be correct [41 81 c3 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r11d" [ 0 ]))
      [ 65 129 195 0 0 0 0 ]
    ;
    "add r11d,1" = expect ''"add r11d,1" to be correct [41 81 c3 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r11d" [ 1 ]))
      [ 65 129 195 1 0 0 0 ]
    ;
    "add r11,0" = expect ''"add r11,0" to be correct [49 81 c3 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r11" [ 0 ]))
      [ 73 129 195 0 0 0 0 ]
    ;
    "add r11,1" = expect ''"add r11,1" to be correct [49 81 c3 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r11" [ 1 ]))
      [ 73 129 195 1 0 0 0 ]
    ;
    "add r12b,0" = expect ''"add r12b,0" to be correct [41 80 c4 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r12b" [ 0 ]))
      [ 65 128 196 0 ]
    ;
    "add r12b,1" = expect ''"add r12b,1" to be correct [41 80 c4 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r12b" [ 1 ]))
      [ 65 128 196 1 ]
    ;
    "add r12w,0" = expect ''"add r12w,0" to be correct [66 41 81 c4 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r12w" [ 0 ]))
      [ 102 65 129 196 0 0 ]
    ;
    "add r12w,1" = expect ''"add r12w,1" to be correct [66 41 81 c4 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r12w" [ 1 ]))
      [ 102 65 129 196 1 0 ]
    ;
    "add r12d,0" = expect ''"add r12d,0" to be correct [41 81 c4 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r12d" [ 0 ]))
      [ 65 129 196 0 0 0 0 ]
    ;
    "add r12d,1" = expect ''"add r12d,1" to be correct [41 81 c4 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r12d" [ 1 ]))
      [ 65 129 196 1 0 0 0 ]
    ;
    "add r12,0" = expect ''"add r12,0" to be correct [49 81 c4 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r12" [ 0 ]))
      [ 73 129 196 0 0 0 0 ]
    ;
    "add r12,1" = expect ''"add r12,1" to be correct [49 81 c4 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r12" [ 1 ]))
      [ 73 129 196 1 0 0 0 ]
    ;
    "add r13b,0" = expect ''"add r13b,0" to be correct [41 80 c5 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r13b" [ 0 ]))
      [ 65 128 197 0 ]
    ;
    "add r13b,1" = expect ''"add r13b,1" to be correct [41 80 c5 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r13b" [ 1 ]))
      [ 65 128 197 1 ]
    ;
    "add r13w,0" = expect ''"add r13w,0" to be correct [66 41 81 c5 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r13w" [ 0 ]))
      [ 102 65 129 197 0 0 ]
    ;
    "add r13w,1" = expect ''"add r13w,1" to be correct [66 41 81 c5 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r13w" [ 1 ]))
      [ 102 65 129 197 1 0 ]
    ;
    "add r13d,0" = expect ''"add r13d,0" to be correct [41 81 c5 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r13d" [ 0 ]))
      [ 65 129 197 0 0 0 0 ]
    ;
    "add r13d,1" = expect ''"add r13d,1" to be correct [41 81 c5 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r13d" [ 1 ]))
      [ 65 129 197 1 0 0 0 ]
    ;
    "add r13,0" = expect ''"add r13,0" to be correct [49 81 c5 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r13" [ 0 ]))
      [ 73 129 197 0 0 0 0 ]
    ;
    "add r13,1" = expect ''"add r13,1" to be correct [49 81 c5 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r13" [ 1 ]))
      [ 73 129 197 1 0 0 0 ]
    ;
    "add r14b,0" = expect ''"add r14b,0" to be correct [41 80 c6 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r14b" [ 0 ]))
      [ 65 128 198 0 ]
    ;
    "add r14b,1" = expect ''"add r14b,1" to be correct [41 80 c6 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r14b" [ 1 ]))
      [ 65 128 198 1 ]
    ;
    "add r14w,0" = expect ''"add r14w,0" to be correct [66 41 81 c6 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r14w" [ 0 ]))
      [ 102 65 129 198 0 0 ]
    ;
    "add r14w,1" = expect ''"add r14w,1" to be correct [66 41 81 c6 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r14w" [ 1 ]))
      [ 102 65 129 198 1 0 ]
    ;
    "add r14d,0" = expect ''"add r14d,0" to be correct [41 81 c6 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r14d" [ 0 ]))
      [ 65 129 198 0 0 0 0 ]
    ;
    "add r14d,1" = expect ''"add r14d,1" to be correct [41 81 c6 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r14d" [ 1 ]))
      [ 65 129 198 1 0 0 0 ]
    ;
    "add r14,0" = expect ''"add r14,0" to be correct [49 81 c6 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r14" [ 0 ]))
      [ 73 129 198 0 0 0 0 ]
    ;
    "add r14,1" = expect ''"add r14,1" to be correct [49 81 c6 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r14" [ 1 ]))
      [ 73 129 198 1 0 0 0 ]
    ;
    "add r15b,0" = expect ''"add r15b,0" to be correct [41 80 c7 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r15b" [ 0 ]))
      [ 65 128 199 0 ]
    ;
    "add r15b,1" = expect ''"add r15b,1" to be correct [41 80 c7 1]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r15b" [ 1 ]))
      [ 65 128 199 1 ]
    ;
    "add r15w,0" = expect ''"add r15w,0" to be correct [66 41 81 c7 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r15w" [ 0 ]))
      [ 102 65 129 199 0 0 ]
    ;
    "add r15w,1" = expect ''"add r15w,1" to be correct [66 41 81 c7 1 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r15w" [ 1 ]))
      [ 102 65 129 199 1 0 ]
    ;
    "add r15d,0" = expect ''"add r15d,0" to be correct [41 81 c7 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r15d" [ 0 ]))
      [ 65 129 199 0 0 0 0 ]
    ;
    "add r15d,1" = expect ''"add r15d,1" to be correct [41 81 c7 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r15d" [ 1 ]))
      [ 65 129 199 1 0 0 0 ]
    ;
    "add r15,0" = expect ''"add r15,0" to be correct [49 81 c7 0 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r15" [ 0 ]))
      [ 73 129 199 0 0 0 0 ]
    ;
    "add r15,1" = expect ''"add r15,1" to be correct [49 81 c7 1 0 0 0]''
      (lib.stripComments (lib.arch.x86_64.instructions.ADD_imm "r15" [ 1 ]))
      [ 73 129 199 1 0 0 0 ]
    ;
  };
  
}
