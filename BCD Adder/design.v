module bcd_adder(
  input [3:0] a, b,
  input cin,
  output [3:0] sum,
  output cout
);
  wire [4:0] b_sum;
  wire [4:0] cor_sum;
  wire error;

  assign b_sum = a + b + cin;
  assign error = (b_sum > 9);
  assign cor_sum = error ? (b_sum + 6) : b_sum;

  assign sum = cor_sum[3:0];
  assign cout = cor_sum[4];

endmodule
