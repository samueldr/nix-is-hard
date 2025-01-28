{ lib
, expect
, expectThrow
, ... 
}:

{
  abs = {
    zero = expect "absolute 0 to be 0" (lib.abs 0) 0;
    positive = expect "positive values to be positive" (lib.abs 5) 5;
    negative = expect "negative values to be positive" (lib.abs (- 5)) 5;
  };
  mod = {
    zeroDivisor = {
      i_0 = expectThrow "0 % 0 == <error>" (lib.mod 0 0);
      i_1 = expectThrow "1 % 0 == <error>" (lib.mod 1 0);
      i_2 = expectThrow "2 % 0 == <error>" (lib.mod 2 0);
    };
    oneDivisor = {
      i_0 = expect "0 % 1 == 0" (lib.mod 0 1) 0;
      i_1 = expect "1 % 1 == 0" (lib.mod 1 1) 0;
      i_2 = expect "2 % 1 == 0" (lib.mod 2 1) 0;
    };
    twoDivisor = {
      i_0 = expect "0 % 2 == 0" (lib.mod 0 2) 0;
      i_1 = expect "1 % 2 == 1" (lib.mod 1 2) 1;
      i_2 = expect "2 % 2 == 0" (lib.mod 2 2) 0;
      i_3 = expect "3 % 2 == 0" (lib.mod 3 2) 1;
    };
    threeDivisor = {
      i_0 = expect "0 % 3 == 0" (lib.mod 0 3) 0;
      i_1 = expect "1 % 3 == 1" (lib.mod 1 3) 1;
      i_2 = expect "2 % 3 == 2" (lib.mod 2 3) 2;
      i_3 = expect "3 % 3 == 0" (lib.mod 3 3) 0;
      i_4 = expect "4 % 3 == 1" (lib.mod 4 3) 1;
      i_5 = expect "5 % 3 == 2" (lib.mod 5 3) 2;
    };
    negativeDividend = {
      i_-1_mod_2 = expect "-1 % 2 == 1" (lib.mod (-1) 2) 1;
      i_-2_mod_2 = expect "-2 % 2 == 0" (lib.mod (-2) 2) 0;
    };
    negativeDivisor = {
      i_0_mod_-2 = expect "0 % -2 == 0" (lib.mod 0 (-2)) (0);

      i_1_mod_-2 = expect "1 % -2 == -1" (lib.mod 1 (-2)) (-1);
      i_2_mod_-2 = expect "2 % -2 == 0" (lib.mod 2 (-2)) (0);

      i_-1_mod_-2 = expect "-1 % -2 == -1" (lib.mod (-1) (-2)) (-1);
      i_-2_mod_-2 = expect "-2 % -2 == 0" (lib.mod (-2) (-2)) (0);
    };
  };
  bitShiftLeft  = {
    i_0_sl_1 = expect "0 << 1 == 0" (lib.bitShiftLeft 0 1) 0;
    i_1_sl_0 = expect "1 << 0 == 1" (lib.bitShiftLeft 1 0) 1;

    i_2_sl_1 = expect "2 << 1 == 4" (lib.bitShiftLeft 2 1) 4;
    i_1_sl_8 = expect "1 << 8 == 256" (lib.bitShiftLeft 1 8) 256;
    i_3_sl_7 = expect "3 << 7 == 384" (lib.bitShiftLeft 3 7) 384;
    i_1_sl_62 = expect "1 << 62 == 4611686018427387904" (lib.bitShiftLeft 1 62) 4611686018427387904;
    # Negative values
    i_-1_sl_2 = expect "-1 << 2 == -4" (lib.bitShiftLeft (-1) 2) (-4);
    # Negative magnitudes
    i_16_sl_-2 = expect "16 << -2 == 4" (lib.bitShiftLeft 16 (-2)) 4;

    max = expect "0b01111111_11111111_11111111_11111111_11111111_11111111_11111111_11111111 to be representable"
      (builtins.foldl' builtins.add 0 (builtins.genList (i: lib.bitShiftLeft 1 i) 63))
      9223372036854775807
    ;
  };
  bitShiftRight = {
    i_0_sr_1 = expect "0 >> 1 == 0" (lib.bitShiftRight 0 1) 0;
    i_1_sr_0 = expect "1 >> 0 == 1" (lib.bitShiftRight 1 0) 1;

    i_2_sr_1 = expect "2 >> 1 == 1" (lib.bitShiftRight 2 1) 1;
    i_2_sr_3 = expect "2 >> 3 == 0" (lib.bitShiftRight 2 3) 0;
    i_1_sr_8 = expect "1 >> 8 == 0" (lib.bitShiftRight 1 8) 0;

    i_big_sr_62 = expect "4611686018427387904 >> 62 == 1" (lib.bitShiftRight 4611686018427387904 62) 1;

    # Negative values
    i_-64_sr_1 = expect "-64 >> 1 == -32" (lib.bitShiftRight (-64) 1) (-32);
    i_-2_sr_3 = expect "-2 >> 3 == -1" (lib.bitShiftRight (-2) 1) (-1);

    # Negative magnitudes
    i_16_sr_-2 = expect "16 >> -2 == 64" (lib.bitShiftRight 16 (-2)) 64;
  };
}
