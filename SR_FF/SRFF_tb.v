module srff_tb;
 reg s,r,clk;
 wire q ;
 srff uut(.s(s),.r(r),.clk(clk),.q(q));
initial clk =0 ;
 always #5 clk= ~clk;
  initial begin
$display("time = %0t | s = %b | r = %b |clk = %b | q = %q", $time,s,r,clk,q);
#10 s=0;r=0;
#10 s=0;r=1;
#10 s=1;r=0;
#10  s=0;r=1;
 end
endmodule

