module TB;
wire [7:0]sum;
wire cout;
reg [7:0]a;
reg [7:0]b;
reg cin;
RCA uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$monitor("time = %0t | a=%b b=%b cin=%b | sum=%b cout=%b\n" ,$time,a,b,cin,sum,cout);
#2 a=8'b00000000;b=8'b00000010;cin=0;
#2 a=8'b00001111;b=8'b00001110;cin=1;
#2 a=8'b10000111;b=8'b01010111;cin=1;  
#2   
$finish;
end
endmodule

