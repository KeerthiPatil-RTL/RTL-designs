module tb_mux4to1;
  reg [3:0] I;      
  reg [1:0] S;      
  wire Y;           
mux4to1 DUT(.I(I), .S(S), .Y(Y));
initial begin
$monitor("time=%0t | S=%b | I=%b | Y=%b", $time, S, I, Y);
    
    I = 4'b0000; S=2'b00; #5;
    I = 4'b0001; S=2'b00; #5;
    I = 4'b0010; S=2'b01; #5;
    I = 4'b0100; S=2'b10; #5;
    I = 4'b1000; S=2'b11; #5;     

    I = 4'b1010; S=2'b00; #5;
    S=2'b01; #5;
    S=2'b10; #5;
    S=2'b11; #5;

    I = 4'b1111; S=2'b00; #5;
    S=2'b01; #5;
    S=2'b10; #5;
    S=2'b11; #5;

    $finish;
  end
endmodule
