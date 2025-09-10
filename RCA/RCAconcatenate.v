module rcabeh(input [7:0]a,input [7:0]b,input cin ,output [7:0]sum,output cout);
assign {cout, sum} = a + b + cin; 
endmodule  
'''
module TB;
reg [7:0]a;
reg [7:0]b;
reg cin;
wire [7:0]sum; 
wire cout; 
rcabeh dut(.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$monitor("time=%0t | a=%b b=%b cin=%b| sum=%b cout=%b",$time,a,b,cin,sum,cout);
 #5 a = 8'o00; b = 8'o00; cin = 0;   // 0 + 0 = 0
        #5 a = 8'o07; b = 8'o01; cin = 0;   // 7 + 1 = 10
        #5 a = 8'o07; b = 8'o01; cin = 1;   // 7 + 1 + 1 = 11
        #5 a = 8'o55; b = 8'o43; cin = 0;   // 45 + 35 = 80
        #5 a = 8'o77; b = 8'o01; cin = 0;   // 63 + 1 = 64
        #5 a = 8'o77; b = 8'o01; cin = 1;   // 63 + 1 + 1 = 65
        #5 a = 8'o177; b = 8'o177; cin = 0; // 127 + 127 = 254
        #5 a = 8'o377; b = 8'o001; cin = 0; // 255 + 1 = 256 (overflow)
        #5 a = 8'o377; b = 8'o377; cin = 1; // 255 + 255 + 1 = 511 (overflow)
#5 $finish;
end
endmodule


