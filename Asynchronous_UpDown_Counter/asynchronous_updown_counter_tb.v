module tb_counter;
reg clk,rst;
wire [3:0]count;
counter uut(.clk(clk), .rst(rst), .count(count));
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;
$display("time=%0t, clk=%b,rst=%b,count=%d",$time,clk,rst,count);
#20; rst=0;
#160 ; rst=1;
#190;
$finish;
end
endmodule

