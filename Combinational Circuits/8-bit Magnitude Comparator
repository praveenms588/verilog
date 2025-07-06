module comparator(a,b,y1,y2,y3);
  input [7:0]a,b;
  output reg y1,y2,y3;
  
  always@(*) begin
    if(a==b)
      begin
      	y1=1'b0;y2=1'b1;y3=1'b0;
      end
    else if(a<b)
      begin
        y1=1'b1;y2=1'b0;y3=1'b0;
      end
    else
      begin
        y1=1'b0;y2=1'b0;y3=1'b1;
      end
  end
endmodule
