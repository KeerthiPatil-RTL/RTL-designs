module FA_TB;
wire sum,carry;
reg a,b,cin;
FA_DF uut(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
initial begin
$monitor (" time =%0t |a=%b b=%b cin=%b | sum = %b carry=%b\n" ,$time,a,b,cin,sum,carry);  
#2 a=0;b=0;cin=0;
#2 a=0;b=0;cin=1;
#2 a=0;b=1;cin=0;
#2 a=0;b=1;cin=1;
#2 a=1;b=0;cin=0;
#2 a=1;b=0;cin=1;
#2 a=1;b=1;cin=0;    
#2 a=1;b=1;cin=1;
#2
$finish;
end
endmodule
