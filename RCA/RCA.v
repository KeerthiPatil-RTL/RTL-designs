module FA(input a,b,cin,output sum,cout);
assign cout = ( a & b ) | ( b & cin ) | ( cin & a );
assign sum = a ^ b ^ cin;   
endmodule

module RCA(input [7:0]a,[7:0]b,cin, output [7:0]sum,cout);
wire [6:0]w;
FA fa0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(w[0]));
FA fa1(.a(a[1]),.b(b[1]),.cin(w[0]),.sum(sum[1]),.cout(w[1]));
FA fa2(.a(a[2]),.b(b[2]),.cin(w[1]),.sum(sum[2]),.cout(w[2]));
FA fa3(.a(a[3]),.b(b[3]),.cin(w[2]),.sum(sum[3]),.cout(w[3]));
FA fa4(.a(a[4]),.b(b[4]),.cin(w[3]),.sum(sum[4]),.cout(w[4]));
FA fa5(.a(a[5]),.b(b[5]),.cin(w[4]),.sum(sum[5]),.cout(w[5]));
FA fa6(.a(a[6]),.b(b[6]),.cin(w[5]),.sum(sum[6]),.cout(w[6]));
FA fa7(.a(a[7]),.b(b[7]),.cin(w[6]),.sum(sum[7]),.cout(cout));
endmodule   

