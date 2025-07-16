module seq_det_tb();
  reg clk, reset, x;
  wire out;

  // Instantiate the sequence detector
  seq_det uut (
    .clk(clk),
    .reset(reset),
    .x(x),
    .out(out)
  );

  always begin
    clk = 1'b1;
    forever #5 clk = ~clk;
  end

  initial begin
    x = 1'b0;
    reset = 1'b0; 
  end

 

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    #10 reset = 1'b1;             
    #10 reset = 1'b1; #15 x = 1'b1;
    #10 x = 1'b0;
    #10 x = 1'b1;
    #10 x = 1'b0;
    #10 x = 1'b1;
    #10 x = 1'b0;
    #10 x = 1'b0;
    #100 $finish;
  end
endmodule
