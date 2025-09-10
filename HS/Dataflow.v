module HS_DF(input a,b,output B,D);
assign B=(~a) & b;
assign D=a ^ b;
endmodule

