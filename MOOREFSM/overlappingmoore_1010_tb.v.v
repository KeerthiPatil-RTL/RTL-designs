module moore_1010(input clk,rst,in, output reg out);
parameter s0=0,s1=1,s2=2,s3=3,s4=4;
reg [2:0] ps,ns;

always@(posedge clk)begin
if(rst) begin
out<=0;
ps <= s0;
end
else begin
ps<=ns;
end
end

always @(*) begin
case(ps)
s0: begin
out=0;
ns = in ? s1:s0;
end

s1: begin
out=0;
ns = in ? s1:s2;
end

s2: begin
out=0;
ns = in ? s3:s0;
end

s3: begin
out=0;
ns = in ? s1:s4;  
end

s4: begin
out=1;
ns = in ? s3:s0;
end

default: begin
out=0;
ns = s0;
end

endcase
end
endmodule







