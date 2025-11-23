module mux #(parameter width = 5)
  (input [width-1:0] in0,in1,input sel , output wire [width-1:0] mux_out);  
  assign mux_out = sel ? in1 : in0; //sel=0 in=0 or sel=1 in1
endmodule
