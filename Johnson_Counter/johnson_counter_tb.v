module tb_ring_counter;
reg clk,rst;
wire [3:0]count;
ringcounter uut(.clk(clk), .rst(rst),.count(count));
initial clk=0;
always #2 clk=~clk;
initial begin   
rst=1;
$display("time=%0t, clk=%b,rst=%b",$time,clk,rst,count);
#10; rst=0;
#100; $finish; 
end            
endmodule

