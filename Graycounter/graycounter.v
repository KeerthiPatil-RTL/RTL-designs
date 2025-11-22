module graycounter(input clk,rst,output reg [3:0]gray,reg [3:0] bin);
always @(posedge clk)begin
if(rst) begin
bin <= 0;
gray <= 0;
end  
else begin
bin <= bin+1;
gray <= bin ^ (bin >> 1);  
end
end
endmodule
