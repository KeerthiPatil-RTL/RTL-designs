module encoder4to2_tb;
    reg [3:0] I;
    wire [1:0] Y;
    encoder4to2 DUT (.I(I), .Y(Y));
    initial begin
        $monitor("time=%0t | I=%b | Y=%b", $time, I, Y);
        I = 4'b0001; #5;  
        I = 4'b0010; #5;  
        I = 4'b0100; #5;  
        I = 4'b1000; #5;  
        I = 4'b0000; #5;  
        $stop;
    end
endmodule

