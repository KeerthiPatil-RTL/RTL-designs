module majority3 (
    input  A, B, C,
    output Y
);
    assign Y = (A & B) | (B & C) | (A & C);
endmodule

