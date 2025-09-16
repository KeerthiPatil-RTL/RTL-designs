module cla_4bit_tb;
    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;
    cla_4bit DUT(.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    initial begin
        $monitor("time=%0t | A=%b B=%b Cin=%b | Sum=%b Cout=%b",
                  $time, A, B, Cin, Sum, Cout);
        #5  A=4'b0000; B=4'b0000; Cin=0;
        #5  A=4'b0101; B=4'b0011; Cin=0;  
        #5  A=4'b0101; B=4'b0011; Cin=1;  
        #5  A=4'b1111; B=4'b0001; Cin=0;  
        #5  A=4'b1010; B=4'b0101; Cin=1;  
        #5  $finish;
    end
endmodule

