module clock_divider #(
    parameter DIVIDE_BY = 10
)(
    input clk,
    input rst,
    output reg clk_out
);

reg [$clog2(DIVIDE_BY)-1:0] count;

always @(posedge clk) begin
    if (rst) begin
        count   <= 0;
        clk_out <= 0;
    end else begin
        if (count == DIVIDE_BY-1) begin
            count   <= 0;
            clk_out <= ~clk_out;     
        end else begin
            count <= count + 1;
        end
    end
end

endmodule

