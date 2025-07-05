module tb;
  reg clk,sin,rst;
  wire sout;
  integer i;
  siso s1(.clk(clk),.rst(rst),.sin(sin),.sout(sout));
  
  always
    begin
      clk = 0;
  forever #5 clk = ~clk;
    end
  
 initial
begin
  $dumpfile("siso_tb.vcd");  
    $dumpvars(); 
rst=0; sin=1; #5
rst=1; sin=0; #10
rst=0; sin=1; #10
sin=1; #10
sin=1; #10
sin=0; #10
$finish;
end
endmodule
  
