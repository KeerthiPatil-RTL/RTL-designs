module FA_STRU(input a,b,cin,output sum,carry);
wire w1,w2,w3;
xor(sum,a,b,cin);
and(w1,a,b);
and(w2,b,cin);
and(w3,cin,a);
or(carry,w1,w2,w3);
endmodule
