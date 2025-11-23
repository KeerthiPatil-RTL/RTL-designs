module mux_tb;
  reg [4:0]in0, in1;
  reg sel;
  wire [4:0] mux_out;
  mux #(5) uut (.in0(in0), .in1(in1), .sel(sel) , .mux_out(mux_out));
  initial begin
    $dumpfile("mux_tb.vcd");
    $dumpvars(0,mux_tb);
  end
  initial begin
    in0=0;in1=0;sel=0;
      $monitor("time=%0t sel=%b in0=%b in1=%b mux_out=%b",
              $time, sel, in0, in1, mux_out);
     sel=0; in0=5'b10101; in1=5'b11111; #10;
    sel=1; in0=5'b10101; in1=5'b01100; #10;
    sel=0; in0=5'b11001; in1=5'b10010; #10;
    sel=1; in0=5'b01010; in1=5'b11100; #10;

    $finsih;
  end
endmodule
