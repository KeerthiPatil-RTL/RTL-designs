module Fabeh(input a,b,cin,output reg sum,carry);
always @(*) begin
case ({a,b,cin})
3'b000: begin sum=0;carry=0;end
3'b001: begin sum=1;carry=0;end
3'b010: begin sum=1;carry=0;end
3'b011: begin sum=0;carry=1;end
3'b100: begin sum=1;carry=0;end
3'b101: begin sum=0;carry=1;end
3'b110: begin sum=0;carry=1;end
3'b111: begin sum=1;carry=1;end
default: begin sum=0; carry=0; end
endcase
end
endmodule
