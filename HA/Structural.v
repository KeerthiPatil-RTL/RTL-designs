module HASTRUCT(
    input a,
    input b,
    output sum,
    output carry
    );
  wire v1,v2;
  xor(sum,a,b);
  and(carry,a,b);
endmodule
