module rem3_tb();
  reg clk, reset, x;
  wire [1:0] out;

  rem3 uut(.clk(clk), .reset(reset), .x(x), .out(out));

  always begin
    clk = 1'b1;
    forever #5 clk = ~clk;
  end

  initial begin

    $dumfile("dump.vcd");
    $dumpvars();
    
    reset = 1'b1;
    #10 reset = 1'b0;

    x = 1; #10;
    x = 0; #10;
    x = 1; #10;
    x = 1; #10;
    x = 0; #10;
    x = 0; #10;
    x = 1; #10;
    x = 1; #10;
    x = 0; #10;

    #20 $finish;
  end

 
endmodule
