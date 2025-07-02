module gray_to_binary_tb;
  reg [7:0] g;
  wire [7:0] b;
  integer i;
  gray_to_binary g1(.g(g), .b(b));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, gray_to_binary_tb);
    
    for(i=0;i<20;i++)
      begin
       

        g = $urandom_range(0,50); #10;
    $display("%b | %b", g, b);
      end
    $finish;
  end
endmodule
