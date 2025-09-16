module comp4bit_eqn_tb;
    reg  [3:0] A, B;
    wire G, E, L;
    comp4bit_eqn DUT(.A(A), .B(B), .G(G), .E(E), .L(L));
    initial begin
        $monitor("time=%0t | A=%b B=%b | G=%b E=%b L=%b",
                  $time, A, B, G, E, L);
        #5  A = 4'b0000; B = 4'b0000;   
        #5  A = 4'b0101; B = 4'b0011;   
        #5  A = 4'b0010; B = 4'b1000;   
        #5  A = 4'b1111; B = 4'b1111;   
        #5  A = 4'b1010; B = 4'b1011;  
        #5  A = 4'b1100; B = 4'b0110;   
        #5  A = 4'b1110; B = 4'b1101;  
        #5  A = 4'b0001; B = 4'b0010;   
        #5  $finish;
    end
endmodule

