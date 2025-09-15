module mux2to1(input I0,I1,S,output Y);
wire w1,w2,w3;
not(w1,S);
and(w2,W1,I0);
and(w3,S,I1);
or(Y,w2,w3);
endmodule  
  
