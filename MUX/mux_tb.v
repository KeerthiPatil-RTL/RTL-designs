module TB;
wire Y;
reg I0,I1,S;
mux2to1 DUT(.S(S), .I0(I0), .I1(I1),.Y(Y));
initial begin
$monitor("time = %0t, S=%b, I0=%b , I1=%b , Y=%b", $time, S,I0,I1,Y);
#5 I0=0;I1=1;S=0;
#5 I0=0;I1=1;S=1;
#5 I0=0;I1=1;S=0;
#5 I0=0;I1=1;S=1;
#5;
$finish;
end
endmodule

