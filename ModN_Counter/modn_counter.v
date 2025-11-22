
module modNcounter #(parameter N=10)(input clk,rst,output reg [$clog2(N)-1:0]count);
always@(posedge clk)begin
if(rst)
count<=4'b0000;
else if (count == N-1) 
count<= 4'b000;
else 
count<=count+1;
end
endmodule 
