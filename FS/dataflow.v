module subdf(input a,b,c,output d,B);
assign d = (~a) & b | b & c | (~a) & c;  
assign B = a ^ b ^ c;
endmodule
