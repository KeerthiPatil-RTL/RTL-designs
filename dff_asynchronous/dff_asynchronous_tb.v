module dff_tb;
reg d;
  reg clk;
  reg rst;
  wire q;
  D_FF uut(.d(d), .clk(clk),.rst(rst),.q(q));
  
initial clk=0;
  always #5 clk= ~clk;
  
  initial begin
    $dumpfile("dff_tb.vcd");
    $dumpvars(0,dff_tb);
    $monitor("%0t | rst= %b | d=%b| clk=%b| q=%b" ,$time,rst,d,clk,q);
    
    rst=1;d=0;#10;
 rst=0;d=1;#10;
    d=0; #10;
    d=1; #10;
    d=0;#10;
    rst =1 ;d=1; #10;
    
    rst=0; #10;
    $display("Testbench completed at time %0t",$time);
    
    $finish;
  end
endmodule
