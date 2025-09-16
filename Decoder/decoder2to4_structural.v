
module decoder2to4_struct (
    input  [1:0] A, 
    output [3:0] Y    
);
    wire w1, w2, w3, w4;  
    wire nA0, nA1;       
    not (nA0, A[0]);
    not (nA1, A[1]);
    and (w1, nA1, nA0);  
    and (w2, nA1, A[0]); 
    and (w3, A[1], nA0); 
    and (w4, A[1], A[0]); 
    assign Y = {w4, w3, w2, w1};
endmodule
