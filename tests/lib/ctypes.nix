{ lib
, expect
, expectThrow
, ... }:

{
  parseDecl = {
    LP64 = {
      pointerType = expect "pointer types to be parsed"
        ((lib.ctypes.parseDecl "LP64" "char * varname") // { convert = null; })
        {
          pointer = true;
          convert = null;
          name = "varname";
          type = "char";
        }
      ;
      pointerTypeSize = expect "pointer types to be equivalent to `uintptr_t`"
        ((lib.ctypes.parseDecl "LP64" "unsigned char * varname").convert 0)
        (lib.ctypes._data_model.LP64."uintptr_t" 0)
      ;
      usignedChar = expect "parseDecl to handle a type"
        ((lib.ctypes.parseDecl "LP64" "unsigned char boop").convert 255)
        [ 255 ]
      ;
      unrecognizedType = expectThrow "parseDecl to not work with an unrecognized type"
        ((lib.ctypes.parseDecl "LP64" "unrecognized type").convert 42)
      ;
      incompleteDecl = expectThrow "parseDecl to not work with incomplete type"
        ((lib.ctypes.parseDecl "LP64" "char").convert 42)
      ;
    };
  };
  mkInt = {
    bits_40 = expect "A 40 bits wide uint to work"
      ((lib.ctypes.mkInt 40) 4096)
      [ 0 16 0 0 0 ]
    ;
    bits_7 = expectThrow "A bit width non-divisible by eight to fail"
      (lib.ctypes.mkInt 7)
    ;
    bits_0 = expectThrow "A zero bit width to fail"
      (lib.ctypes.mkInt 0)
    ;
    # TODO: implement, then test negative numbers
    negativeFail = expectThrow "A negative value provided to fail"
      ((lib.ctypes.mkInt 8) (-1))
    ;
    overflow = {
      w_8_v_128 = expectThrow "A signed overflow (positive) to fail"
        ((lib.ctypes.mkInt 8) (128))
      ;
      w_8_v_-129 = expectThrow "A signed overflow (negative) to fail"
        ((lib.ctypes.mkInt 8) (-129))
      ;
    };
  };
  mkUint = {
    bits_40 = expect "A 40 bits wide uint to work"
      ((lib.ctypes.mkUint 40) 4096)
      [ 0 16 0 0 0 ]
    ;
    bits_7 = expectThrow "A bit width non-divisible by eight to fail"
      (lib.ctypes.mkUint 7)
    ;
    bits_0 = expectThrow "A zero bit width to fail"
      (lib.ctypes.mkUint 0)
    ;
    negativeFail = expectThrow "A negative value provided to fail"
      ((lib.ctypes.mkUint 8) (-1))
    ;
    overflow = {
      w_8_v_256 = expectThrow "An unsigned overflow to fail"
        ((lib.ctypes.mkInt 8) (256))
      ;
    };
  };
  _data_model = {
    LP64 = {
      pointer = expect "pointer type to be 64 bit wide"
        (lib.ctypes._data_model.LP64."uintptr_t" 0)
        [ 0 0 0 0 0 0 0 0 ]
      ;
      unsigned_char = expect "unsigned char to be 8 bit wide"
        (lib.ctypes._data_model.LP64."unsigned char" 0)
        [ 0 ]
      ;
    };
  };
}
