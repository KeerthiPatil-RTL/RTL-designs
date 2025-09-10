```
module HA (input a,b,output s,c);
assign s= a ^ b;
assign c= a & b;
endmodule

module FA(input a,b,cin,output sum,cout);
wire s1,c1;
HA FA0(.a(a),.b(b),.s(s1),.c(c1));
HA FA1(.a(s1),.b(cin),.s(sum),.c(c2));
assign cout = c1| c2;
endmodule
```
module FATB;
    reg a, b, cin;
    wire sum, cout;
   FA dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
   initial begin
        $monitor("time=%0t | a=%b b=%b cin=%b | sum=%b cout=%b",
                 $time, a, b, cin, sum, cout);
       a=0; b=0; cin=0; #5;
        a=0; b=0; cin=1; #5;
        a=0; b=1; cin=0; #5;
        a=0; b=1; cin=1; #5;
        a=1; b=0; cin=0; #5;
        a=1; b=0; cin=1; #5;
        a=1; b=1; cin=0; #5;
        a=1; b=1; cin=1; #5;
        $finish;
    end
endmodule

