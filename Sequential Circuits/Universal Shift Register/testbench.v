module tb;

  reg clk, rst;
  reg [1:0] sel;
  reg [3:0] d_in;
  reg s_in_left, s_in_right;
  wire [3:0] q;

  usr uut (
    .clk(clk),
    .rst(rst),
    .sel(sel),
    .d_in(d_in),
    .s_in_left(s_in_left),
    .s_in_right(s_in_right),
    .q(q)
  );

  
  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars();

    
    clk = 0;
    rst = 1;
    sel = 2'b00;
    d_in = 4'b0000;
    s_in_left = 0;
    s_in_right = 0;

    #10 rst = 0;

    
    sel = 2'b11;
    d_in = 4'b1101;
    #10;

    sel = 2'b10;
    s_in_left = 1;
    #10;

    sel = 2'b01;
    s_in_right = 0;
    #10;

    sel = 2'b00;
    #10;

    sel = 2'b10;
    s_in_left = 0;
    #10;

    sel = 2'b01;
    s_in_right = 1;
    #10;

    $finish;
  end

endmodule
