{ lib }:

let
  #
  #  - Sign of return value is sign of the first operand.
  #  - Negative magnitude (second operand) invert the shift operation.
  #
  _bitShift =
    op: value: magnitudes:
    let
      invOp =
        if op == "mul"
        then builtins.div
        else builtins.mul
      ;
      op' =
        if magnitudes < 0
        then invOp
        else builtins.${op}
      ;
      absRet =
        builtins.foldl'
        (curr: _: op' curr 2)
        (lib.abs value)
        (builtins.genList (_: 2) (lib.abs magnitudes))
      ;
      sign =
        if value < 0
        then -1
        else 1
      ;
    in
      absRet * sign
  ;
in
{
  abs =
    num:
    if num < 0
    then (num * -1)
    else num
  ;

  #
  # Notes about negative values
  # ---------------------------
  #
  # The sign of the *divisor* will be used in the return value.
  #
  mod =
    dividend: divisor:
    if divisor == 0
    then (builtins.throw "mod called with zero divisor (mod ${toString dividend} ${toString divisor})")
    else
    let
      quotient  = dividend / divisor;
      remainder = dividend - (quotient * divisor);
      sign = if divisor < 0 then -1 else 1;
    in
      (lib.abs remainder) * sign
  ;

  bitShiftLeft  = _bitShift "mul";
  bitShiftRight = _bitShift "div";

  toInt =
    str:
    if !builtins.isString str then (throw "toInt can only operate on strings.") else
    if builtins.isNull (builtins.match "[0-9]+" str) then (throw "toInt can only convert strings containing decimal digits") else
    builtins.fromJSON str
  ;
}
