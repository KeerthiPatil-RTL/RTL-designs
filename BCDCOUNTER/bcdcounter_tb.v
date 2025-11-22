module tb_bcd_counter;

reg clk, rst;
wire [3:0] count;

bcd_counter uut(.clk(clk), .rst(rst), .count(count));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    rst = 1;
    #10 rst = 0;
    #200 $finish;
end

endmodule
