module tb_johnson_counter;
reg clk,rst;
wire [3:0]count;
johnsoncounter uut(.clk(clk), .rst(rst),.count(count));
initial clk=0;  
always #2 clk=~clk;
initial begin   
rst=1;
$display("time=%0t, clk=%b,rst=%b,count =%b",$time,clk,rst,count);
#10; rst=0;   
#100 $finish; 
end              
endmodule
