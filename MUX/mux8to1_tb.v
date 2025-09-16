module mux8to1_tb;
    reg [7:0] I;
    reg [2:0] S;
    wire Y;
    mux8to1 DUT (.I(I), .S(S), .Y(Y));
  initial begin
 $monitor("time=%0t | S=%b | I=%b | Y=%b", $time, S, I, Y);
        I = 8'b1010_1101;  
        S = 3'b000; #5;
        S = 3'b001; #5;
        S = 3'b010; #5;
        S = 3'b011; #5;
        S = 3'b100; #5;
        S = 3'b101; #5;
        S = 3'b110; #5;
        S = 3'b111; #5;
        $finish;
    end
endmodule
