
module subbeh(input a,b,c,output reg d,B);
always @(*)  begin
case({a,b,c}) 
3'b000 : begin d=0 ; B=0 ;end 
3'b001 : begin d=1 ; B=1 ;end
3'b010 : begin d=1 ; B=1 ;end
3'b011 : begin d=0 ; B=1 ;end
3'b100 : begin d=1 ; B=0 ;end
3'b101 : begin d=0 ; B=0 ;end
3'b110 : begin d=0 ; B=0 ;end    
3'b111 : begin d=1 ; B=1 ;end
default : begin d=0 ; B=0 ;end    
endcase
end
endmodule

