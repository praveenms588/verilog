module tb;
  reg [7:0] bin;
  wire [7:0] gray;
  integer i;
  binary_to_gray b1(.bin(bin), .gray(gray));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  

    for (i = 0; i < 20; i++) 
      begin
        bin=$urandom_range(0,50);
      #5 $display("%b | %b", bin, gray);
    end

    $finish;
  end
endmodule
