module demux_1toN_tb;
    reg I;
    reg [2:0] S;   
    wire [7:0] Y;
    demux_1toN #(.N(8)) DUT (.I(I), .S(S), .Y(Y));
    initial begin
        $monitor("time=%0t | I=%b | S=%b | Y=%b", $time, I, S, Y);
        I = 1;
        S = 3'b000; #5;
        S = 3'b001; #5;
        S = 3'b010; #5;
        S = 3'b011; #5;
        S = 3'b100; #5;
        S = 3'b101; #5;
        S = 3'b110; #5;
        S = 3'b111; #5;
        I = 0;   
        S = 3'b011; #5;
        $stop;
    end
endmodule

