module D_FF(input d,clk,rst,output reg q);
  always@(posedge  clk ) begin
    if(rst) 
      q<=1'b0;
    else q<=d;
     end
      endmodule
