module parity_gen_det_tb;
    reg A, B, C;   
    reg P;         
    wire Peven, Podd, Check_even, Check_odd;
    parity_gen_det DUT (
        .A(A), .B(B), .C(C), .P(P),
        .Peven(Peven), .Podd(Podd),
        .Check_even(Check_even), .Check_odd(Check_odd)
    );
    initial begin
        $monitor("time=%0t | A=%b B=%b C=%b | P=%b | Peven=%b Podd=%b | Check_even=%b Check_odd=%b",
                  $time, A, B, C, P, Peven, Podd, Check_even, Check_odd);
        A=0; B=0; C=0; P=0; #5;  
        A=0; B=0; C=0; P=1; #5;  

        A=0; B=1; C=1; P=0; #5;  
        A=0; B=1; C=1; P=1; #5;  

        A=1; B=0; C=1; P=0; #5;  
        A=1; B=0; C=1; P=1; #5;  

        A=1; B=1; C=1; P=1; #5; 
        A=1; B=1; C=1; P=0; #5;  
        $stop;
    end
endmodule

