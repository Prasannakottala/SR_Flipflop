// Code your testbench here
// or browse Examples
module tb();
  reg s,r,clk,rst;
  wire q,qbar;
  sr_ff x1(s,r,clk,rst,q,qbar);
  always #1 clk =~ clk;
  initial begin
    $monitor("s=%0b,r=%0b,clk=%0b,rst=%0b,q=%0d,qbar=%0d",s,r,clk,rst,q,qbar);
    #2 s=0;r=0;clk=0;rst=1;
    #2 rst=0;
    #2 rst=1;
    #2 s=1;r=0;
    #2 s=1;r=1;
    #2 s=0;r=0;
    #2 s=1;r=1;
    #2 s=1;r=0;
    #2 s=0;r=1;
   #120 $finish();
  end
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars();
  end
endmodule
