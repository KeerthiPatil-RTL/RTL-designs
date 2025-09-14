module FS_Stru(input a,b,c,output D,B);
wire w1,w2,w3,w4;
xor(D,a,b,c);
not(w1,a);
and(w2,w1,b);
and(w3,w1,c);
and(w4,b,c);
or(B,w2,w3,w4);
endmodule
