module jkff_tb;
reg j,k,clk;
wire q;
jk_ff uut(.j(j), .k(k),.clk(clk),.q(q));
initial clk=0;
always #5 clk =~clk;
initial begin
$display("time = %0t | j = %b | k = %b| clk = %b | q = %b ", $time,j,k,clk,q);
j=0;k=0;
#10; j=0;k=0;
#10; j=0;k=1;
#10; j=1;k=0;  
#10; j=1;k=1;
#10;$finish;
end
endmodule
