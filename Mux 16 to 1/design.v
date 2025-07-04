module mux (
  input  [15:0] a,
  input  [3:0] sel,
  output res
);
  assign res = a[sel];
endmodule
