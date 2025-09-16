module demux_1toN #(parameter N = 8)(
    input I,                       
    input [$clog2(N)-1:0] S,         
    output reg [N-1:0] Y            
);
    always @(*) begin
        Y = {N{1'b0}};   
        Y[S] = I;          
    end  
endmodule

