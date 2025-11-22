module tb_graycounter;
reg clk,rst;
wire [3:0]gray;
wire [3:0]bin;
graycounter uut(.clk(clk), .rst(rst),.gray(gray),.bin(bin));
initial clk=0;  
always #2 clk=~clk;  
initial begin   
rst=1;
$display("time=%0t, clk=%b,rst=%b,gray =%b, bin = %b",$time,clk,rst,gray,bin);
#10; rst=0;   
#90 $finish; 
end              
endmodule 
