module tb_counter;
reg clk,rst,updown;
wire [3:0]count;
counter uut(.clk(clk), .rst(rst),.updown(updown),.count(count));
initial clk=0;
always #2 clk=~clk;
initial begin
rst=1;updown=1;
$display("time=%0t, clk=%b,rst=%b,updown=%d",$time,clk,rst,count,updown);
#100; rst=0;updown=1'b0;
#15 ; rst=1;updown=1'b1;
#10; rst=0;updown=1'b1;
#100; $finish; end
endmodule



