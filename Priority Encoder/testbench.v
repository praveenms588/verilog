module tb;
  reg [3:0]D;
  wire [1:0]Y;
  wire V;
  
  integer i;
  priority_encoder p1(.D(D),.Y(Y),.V(V));
  initial begin
    for(i=0;i<20;i++)
      begin
        D=$urandom_range(0,15);
        #5;
        $display("D=%b Y=%b V=%b",D,Y,V);
      end
    $finish;
  end
endmodule
