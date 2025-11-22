module tff(input t,clk,output reg q);
initial q=0;
always@(posedge clk) begin
if (t==1)
q<=~q;
else 
q<= q;
end
endmodule
