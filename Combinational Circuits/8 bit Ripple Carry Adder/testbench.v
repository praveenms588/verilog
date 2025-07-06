module fa_tb;
  reg [7:0] a, b;
  reg cin;
  wire [7:0] sum;
  wire cout;
  integer i;

  fa8bit f1(.a(a),. b(b),. cin(cin),. sum(sum),. cout(cout)); 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    for (i = 0; i < 256; i = i + 1) begin
      a = $urandom_range(0, 255);
      b = $urandom_range(0, 255);
      cin = $urandom_range(0, 1);
      #20;
      $display("a=%d b=%d cin=%d | sum=%d cout=%d", a, b, cin, sum, cout);
    end
    $finish;
  end
endmodule
