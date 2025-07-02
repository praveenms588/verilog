module bcd_adder_tb;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] sum;
  wire cout;
  integer i;
  bcd_adder b1(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

  initial begin
    $dumpfile("bcd_adder.vcd");
    $dumpvars();
    
    for(i=0;i<10;i++)
      begin
   
        a =$urandom_range(0,9); b = $urandom_range(0,9); cin=$urandom_range(0,1); #10;
        $display("%d + %d +  %b  =   %d   %d", a, b, cin,sum, cout);
      end
    $finish;
  end
endmodule
