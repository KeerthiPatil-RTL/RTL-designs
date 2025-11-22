module moore_1010_tb;
reg clk,rst,in;
wire out;
moore_1010 uut(.clk(clk), .rst(rst),.in(in), .out(out));
initial clk=0;
always #5 clk= ~clk;
initial begin
$monitor ("%t || in=%b|| out = %b || ps = %d || ns = %d",$time, in, out, uut.ps, uut.ns);
#10 rst=1;
#10 rst=0;
#10 in=0;#10 in=1;#10 in=0;#10 in=0;
#10 in=0;#10 in=1;#10 in=0;#10 in=1;#10 in=0;#10 in=1;
#10 in=1;#10 in=0;#10 in=1;#10 in=0;#10 in=0;#10 in=1;
#100;$finish;
end
endmodule
