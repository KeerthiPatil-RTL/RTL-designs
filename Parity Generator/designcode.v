module parity_gen_det (
    input  A,B,C,     
    input  P, 
    output       Peven, 
    output       Podd,  
    output Check_even, 
     output Check_odd  
);
    assign Peven= A ^ B ^ C;
    assign Podd = ~(A ^ B ^ C);
    assign Check_even = ~((A ^ B ^ C) ^ P);  
    assign Check_odd  =  ((A ^ B ^ C) ^ P);  
endmodule
