module demux1to2 (
    input  I,      
    input  S,      
    output [1:0] Y 
);
    assign Y[0] = (~S) & I;  
    assign Y[1] = ( S) & I;  
endmodule

