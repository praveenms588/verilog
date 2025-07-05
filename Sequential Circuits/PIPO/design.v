module pipo(clk, rst, d, q);
  input clk, rst;
  input [3:0] d;        
  output reg [3:0] q;    

  always @(posedge clk) begin
    if (rst)
      q <= 4'b0000;      
    else
      q <= d;           
  end
endmodule
