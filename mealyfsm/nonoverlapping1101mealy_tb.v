
module mealy_1101_nonoverlap_tb;

reg clk, rst, in;
wire out;

mealy_1101_nonoverlap dut(clk, rst, in, out);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    in  = 0;
    #12 rst = 0;
end

initial begin
    $monitor("%0t | in=%b | out=%b | ps=%d | ns=%d",
              $time, in, out, dut.ps, dut.ns);

    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;

    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;

    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;

    #30 $finish;
end

endmodule


