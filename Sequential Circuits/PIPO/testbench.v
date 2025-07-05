module tb;
  reg clk,rst;
  reg [3:0]d;
  wire [3:0]q;
  integer i;
  pipo s1(.clk(clk),.rst(rst),.d(d),.q(q));
  
  always
    begin
      clk = 0;
  forever #5 clk = ~clk;
    end
  
 initial
begin
  $dumpfile("dump.vcd");  
    $dumpvars(); 
rst=0; d=1; #5
rst=1; d=0; #10
rst=0; d=1; #10
d=1; #10
d=1; #10
d=0; #10
$finish;
end
endmodule
  
