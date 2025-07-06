module tb;
  reg [15:0]a;
  reg [3:0]sel;
  wire res;
  
  integer i;
  mux m1(.a(a),.sel(sel),.res(res));
  
  initial begin
    for(i=0;i<20;i++)
      begin
        a=$urandom_range(0,2000);
        sel=$urandom_range(0,15);
        #10;
        $display("A=%b\tSel=%b\tOUT=%b",a,sel,res);
      end
  end
endmodule
