module srff_tb;
 reg s,r,clk;
 wire q ;
 srff uut(.s(s),.r(r),.clk(clk),.q(q));
 
initial clk =0 ;
 always #5 clk= ~clk;
  initial begin
  $monitor("time = %0t | s = %b | r = %b |clk = %b | q = %b", $time,s,r,clk,q);
s=0;r=1;
#20 s=0;r=0;
#20 s=0;r=1;
#20 s=1;r=0;
#20  s=1;r=1;  
#50; $finish;
 end
endmodule

