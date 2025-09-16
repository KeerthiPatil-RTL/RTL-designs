module decoder2to4_tb;
    reg [1:0] A;
    wire [3:0] Y;
    decoder2to4 DUT (.A(A), .Y(Y));
 initial begin
    $monitor("time=%0t | A=%b | Y=%b", $time, A, Y);
        A = 2'b00; #5;    
        A = 2'b01; #5;
        A = 2'b10; #5;
        A = 2'b11; #5;
        $stop;
    end
endmodule

