module tb_clock_divider;

reg clk, rst;
wire clk_out;

clock_divider #(.DIVIDE_BY(10)) uut (
    .clk(clk), .rst(rst), .clk_out(clk_out)
);

initial clk = 0;
always #1 clk = ~clk;   

initial begin
    rst = 1;
    #10 rst = 0;
    #200 $finish;
end

endmodule
