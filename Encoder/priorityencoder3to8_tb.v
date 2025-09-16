module priority_encoder8to3_tb;
    reg [7:0] I;
    wire [2:0] Y;
    wire valid;
    priority_encoder8to3_beh DUT (.I(I), .Y(Y), .valid(valid));
    initial begin
        $monitor("time=%0t | I=%b | Y=%b | valid=%b", 
                 $time, I, Y, valid);
        I = 8'b00000001; #5;  
        I = 8'b00000110; #5;  
        I = 8'b01010100; #5;  
        I = 8'b10000000; #5; 
        I = 8'b00000000; #5;  
        $stop; 
    end
endmodule

