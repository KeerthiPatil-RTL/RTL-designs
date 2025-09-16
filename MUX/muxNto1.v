module mux_nto1 #(parameter N = 8)(
    input  [N-1:0] I,            
    input  [$clog2(N)-1:0] S,   
    output Y
);
    assign Y = I[S];
endmodule
