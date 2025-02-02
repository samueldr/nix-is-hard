{ lib
, expect
, expectThrow
, ... }:

{
  basicLatinToBytes = {
    basic = expect "basicLatinToBytes to produce a list of bytes"
      (lib.basicLatinToBytes "Hello")
      [ 72 101 108 108 111 ]
    ;
  };
  bytesUnsignedToNumber = {
    i_0 = expect "bytesUnsignedToNumber to produce 0 for [ 0 ]"
      (lib.bytesUnsignedToNumber [ 0 ])
      0
    ;
    i_255 = expect "bytesUnsignedToNumber to produce 255 for [ 255 ]"
      (lib.bytesUnsignedToNumber [ 255 ])
      255
    ;
    i_256 = expect "bytesUnsignedToNumber to produce 256 for [ 0 1 ]"
      (lib.bytesUnsignedToNumber [ 0 1 ])
      256
    ;
    i_65535 = expect "bytesUnsignedToNumber to produce 65535 for [ 255 255 ]"
      (lib.bytesUnsignedToNumber [ 255 255 ])
      65535
    ;
  };
  numberToBytes = {
    singleByte = {
      i_0 = expect "numberToBytes to produce a single byte for (0)" (lib.numberToBytes 0) [ 0 ];
      i_1 = expect "numberToBytes to produce a single byte for (1)" (lib.numberToBytes 1) [ 1 ];
      i_255 = expect "numberToBytes to produce a single byte for (255)" (lib.numberToBytes 255) [ 255 ];
    };
    twoBytes = {
      # Confirms output is LSB.
      i_256 = expect "numberToBytes to produce two bytes for (256)" (lib.numberToBytes 256) [ 0 1 ];
      i_65535 = expect "numberToBytes to produce two bytes for (65535)" (lib.numberToBytes 65535) [ 255 255 ];
    };
  };
  padBytesLeft = {
    noop = {
      for_1 = expect "padBytesLeft to be a no-op with the same size input (1 byte)"
        (lib.padBytesLeft 1 [ 1 ])
        [ 1 ]
      ;
      for_8 = expect "padBytesLeft to be a no-op with the same size input (8 bytes)"
        (lib.padBytesLeft 8 [ 1 2 3 4 5 6 7 8 ])
        [ 1 2 3 4 5 6 7 8 ]
      ;
    };
    toPad = {
      with_0 = expect "padBytesLeft to pad fully when given an empty list"
        (lib.padBytesLeft 3 [])
        [ 0 0 0 ]
      ;
      with_1 = expect "padBytesLeft to pad fully when given an empty list"
        (lib.padBytesLeft 6 [ 8 ])
        [ 0 0 0 0 0 8 ]
      ;
    };
    toError = expectThrow "padBytesLeft to throw on overflow"
      (lib.padBytesLeft 4 [ 1 2 3 4 5 ])
    ;
  };
  padBytesRight = {
    noop = {
      for_1 = expect "padBytesRight to be a no-op with the same size input (1 byte)"
        (lib.padBytesRight 1 [ 1 ])
        [ 1 ]
      ;
      for_8 = expect "padBytesRight to be a no-op with the same size input (8 bytes)"
        (lib.padBytesRight 8 [ 1 2 3 4 5 6 7 8 ])
        [ 1 2 3 4 5 6 7 8 ]
      ;
    };
    toPad = {
      with_0 = expect "padBytesRight to pad fully when given an empty list"
        (lib.padBytesRight 3 [])
        [ 0 0 0 ]
      ;
      with_1 = expect "padBytesRight to pad fully when given an empty list"
        (lib.padBytesRight 6 [ 8 ])
        [ 8 0 0 0 0 0 ]
      ;
    };
    toError = expectThrow "padBytesRight to throw on overflow"
      (lib.padBytesRight 4 [ 1 2 3 4 5 ])
    ;
  };
  twosComplement = {
    # Tested through `ctypes.mkInt`
  };
}
