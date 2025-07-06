module tb;
  reg rst,clk,updown;
  wire [3:0]count;
  
  
  counter c1(.rst(rst),.clk(clk),.count(count),.updown(updown));
   always
    begin
      clk = 0;
  forever #5 clk = ~clk;
    end
  
 initial
begin
  $dumpfile("dump.vcd");  
    $dumpvars(); 
rst=0;#10
  updown=1;#5
rst=1;#10
rst=0;#10
updown=1;#5
rst=0;#10
rst=0;#10
rst=0;#10
  updown=0;
  rst=0;#10
rst=0;#10
rst=0;#10

$finish;
end
endmodule
  
