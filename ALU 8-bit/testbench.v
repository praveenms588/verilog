module tb;
  reg [7:0]a,b;
  reg [2:0]sel;
  wire [7:0]res;
  wire c;
  integer i;
  ALU_8bit a1(.a(a),.b(b),.res(res),.sel(sel),.c(c));
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      for(i=0;i<100;i++)
        begin
          a=$urandom_range(1,255);
          b=$urandom_range(1,255);
      sel=$urandom_range(0,7);
      #10;
          $display("| A=%d | B=%d | Sel=%d | Res=%d | c=%d |",a,b,sel,res,c);
    end
    end
endmodule
