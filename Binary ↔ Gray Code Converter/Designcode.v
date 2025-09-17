module bintogray(
    input  [3:0] B,
    output [3:0] G
);
  assign G[3] = B[3]; 
genvar i;
generate
    for (i = 1; i < 4; i = i+1) begin : gray_loop
        assign G[i-1] = B[i] ^ B[i-1];
    end
endgenerate
endmodule
