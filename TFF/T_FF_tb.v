module tff_tb;
reg t,clk;
wire q;
tff uut(.t(t), .clk(clk),.q(q));
initial clk=0;
always #5 clk=~clk;
initial begin
$display("time = %0t | t=%b | clk= %b | q=%b", $time,t,clk,q);
#10;t=0;
#10;t=1;
#10; t=0;
#50;$finish;
end
endmodule
