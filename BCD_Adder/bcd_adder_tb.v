module bcd_adder_tb;
    reg  [3:0] A, B;
    wire [3:0] SUM;
    bcd_adder DUT (.A(A), .B(B), .SUM(SUM));
    initial begin
        $monitor("time=%0t | A=%d B=%d | SUM=%d",
                  $time, A, B, SUM);
        A=4'd3; B=4'd4; #5;  
        A=4'd7; B=4'd5; #5;   
        A=4'd9; B=4'd6; #5;   
        A=4'd8; B=4'd2; #5;  
        $stop;
    end
endmodule
