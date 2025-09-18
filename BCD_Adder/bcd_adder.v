module bcd_adder (
    input  [3:0] A,    
    input  [3:0] B,    
    output reg [3:0] SUM  
);
    reg [4:0] temp;
    always @(*) begin
        temp = A + B;
        if (temp > 9)
            SUM = temp + 6;  
        else
            SUM = temp[3:0];  
    end
endmodule

