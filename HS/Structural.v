module HS_STRU(input a,b,output B,D);
not(w1,a);
and(B,w1,b);
xor(D,a,b);
endmodule

