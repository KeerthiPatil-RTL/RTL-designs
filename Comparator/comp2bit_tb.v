module comp2bit_tb;
reg A, B;
wire G,E,L;
comp2bit DUT(.A(A), .B(B), .G(G), .E(E), .L(L));
initial begin  
$monitor("time=%0t, A=%B, B=%B, G=%B, E=%B, L=%B ",$time,A,B,G,E,L);
#5 A=0;B=0;
#5 A=0;B=1;
#5 A=1;B=0;
#5 A=1;B=1;
#5
$finish;
end
endmodule
