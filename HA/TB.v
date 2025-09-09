module HA_TB;
reg a,b;
wire sum,carry;
HABEH uut(.a(a), .b(b), .sum(sum), .carry(carry));
initial begin
$monitor("time=%0t | a=%b b=%b | sum=%b carry=%b", $time, a, b, sum, carry);
#5 a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;    
#5 a=1;b=1;
#5
$finish;
end
endmodule
   
