module tb;
  reg [7:0]a,b;
  wire y1,y2,y3;
  
  integer i;
  comparator c1(.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3));
  
  initial begin
  $display("A\tB\tA<B\tA=B\tA>B");
  for(i=0;i<20;i++)
    begin
      a=$urandom_range(0,255);
      b=$urandom_range(0,255);
      #10;
      $display("%d\t%d\t%d\t%d\t%d",a,b,y1,y2,y3);
    end
  end
endmodule
