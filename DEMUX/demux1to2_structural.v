module demux1to2_struct (
    input I,    
    input S,    
    output Y0, Y1
);
    wire nS;
    not (nS, S);        
    and (Y0, I, nS);    
    and (Y1, I, S);     
endmodule

