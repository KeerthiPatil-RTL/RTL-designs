module mux8to1(
    input  [7:0] I,   
    input  [2:0] S,  
    output Y
);
    assign Y = I[S];
endmodule
