module majority3_tb;
    reg A, B, C;    
    wire Y;         
    majority3 DUT (.A(A), .B(B), .C(C), .Y(Y));
    initial begin
        $monitor("time=%0t | A=%b B=%b C=%b | Majority=%b", 
                 $time, A, B, C, Y);
        A=0; B=0; C=0; #5;
        A=0; B=0; C=1; #5;
        A=0; B=1; C=0; #5;
        A=0; B=1; C=1; #5;
        A=1; B=0; C=0; #5;
        A=1; B=0; C=1; #5;  
        A=1; B=1; C=0; #5;
        A=1; B=1; C=1; #5;

        $stop;
    end
endmodule
