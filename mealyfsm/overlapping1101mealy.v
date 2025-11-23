module mealy_1101(input clk, rst, in, output reg out);

parameter s0 = 2'b00,
          s1 = 2'b01,
          s2 = 2'b10,
          s3 = 2'b11;

reg [1:0] ps, ns;

always @(posedge clk) begin
    if(rst) begin
        ps  <= s0;
        out <= 0;
    end
    else begin
        ps <= ns;
    end
end

always @(*) begin
    out = 0;

    case(ps)

        s0: begin
            ns = in ? s1 : s0;
        end

        s1: begin
            ns = in ? s2 : s0;
        end

        s2: begin
            if(in)
                ns = s2;
            else
                ns = s3;
        end

        s3: begin
            if(in) begin
                ns  = s1;
                out = 1;
            end
            else begin
                ns = s0;
            end
        end

        default: begin
            ns = s0;
            out = 0;
        end

    endcase
end

endmodule

