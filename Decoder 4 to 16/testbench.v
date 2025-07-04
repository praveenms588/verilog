module tb;
  reg [3:0]a;
  wire [15:0]y;
  
  integer i;
  decoder d1(.a(a),.y(y));
  initial begin
    for(i=0;i<20;i++)
      begin
        a=$urandom_range(0,15);
        #10;
        $display("A=%b\tOUT=%b",a,y);
        
      end
  end
endmodule
    	
