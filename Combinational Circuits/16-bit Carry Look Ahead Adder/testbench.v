module tb;
  reg [15:0]a,b;
  reg cin;
  wire [15:0]sum;
  wire cout;
  
  integer i;
  
  cla cla1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      
      for(i=0;i<20;i++)
        begin
          a=$urandom_range(0,255);
          b=$urandom_range(0,255);
          cin=$urandom_range(0,1);
          #10;
          $display("%d %d %d - %d %d",a,b,cin,sum,cout);
          
         
        end
    end
endmodule

  
