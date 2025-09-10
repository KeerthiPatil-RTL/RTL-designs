module HS_BEH(input a,b,output reg B,D);
always@(*) begin
case ({a,b})
 2'b00 : begin D=0;B=0; end 
 2'b01 : begin D=1;B=1; end
 2'b10 : begin D=1;B=0; end
 2'b11 : begin D=0;B=0; end
 default: begin D=0; B=0; end
endcase    
end
endmodule
