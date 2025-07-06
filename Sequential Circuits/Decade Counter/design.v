module counter(rst,clk,count,updown);
  input rst,clk,updown;
  output reg [3:0]count;
  
  always @(posedge clk)
    begin
      if(rst)
        begin
          count<=4'b0000;
        end
      else if(updown && count < 4'd9)
        begin
          count <= count + 1'b1;
        end
      else if(!updown && count > 4'd0)
        count <= count - 1'b1; 
    end
endmodule
  
  
