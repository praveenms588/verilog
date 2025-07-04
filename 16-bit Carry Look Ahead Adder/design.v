module cla (
  input  [15:0] a, b,
  input        cin,
  output [15:0] sum,
  output       cout
);
  wire [15:0] g, p;
  wire [16:0] c;

  assign g = a & b;         
  assign p = a ^ b;         
  assign c[0] = cin;  
  
  genvar i;
generate
  for (i = 0; i < 16; i = i + 1) 
    begin 
    assign c[i+1] = g[i] | (p[i] & c[i]);
  end
endgenerate


  assign sum = p ^ c[15:0];
  assign cout = c[16];
endmodule
