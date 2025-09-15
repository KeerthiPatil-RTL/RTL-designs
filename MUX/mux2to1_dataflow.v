module mux2to1(input I0,I1,S,output Y);
assign Y = ((~S) & I0) | (S & I1);
endmodule
