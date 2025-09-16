module demux1to2_tb;
    reg I;  
    reg S;  
    wire [1:0] Y;
    demux1to2 DUT (.I(I), .S(S), .Y(Y));
    initial begin
        $monitor("time=%0t | I=%b | S=%b | Y=%b", $time, I, S, Y);
     I = 1;
        S = 0; #5;
        S = 1; #5;
        $finish;
    end
endmodule

