module comp2bit(input A,B, output G,E,L);
assign G = A & (~B);
  assign L= (~A) & B;
assign E = ~(A^B);
endmodule


