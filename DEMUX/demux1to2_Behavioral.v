module demux1to2_beh (
    input I,
    input S,
    output reg [1:0] Y
);
    always @(*) begin
        case (S)
            1'b0: Y = {1'b0, I};  
            1'b1: Y = {I, 1'b0}; 
            default: Y = 2'b00;
        endcase
    end
endmodule

