module bintogray_tb;
    reg [3:0] B;
    wire [3:0] G;
bintogray DUT(.B(B), .G(G));
initial begin
$monitor("time= %0t, B= %b, G=%b",$time,B,G);
B=4'b0010; #5;
B=4'b1101;#5;
B=4'b1010;#5;
$finish;
end
endmodule
