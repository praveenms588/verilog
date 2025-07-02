module ALU_8bit (a,b,sel,res,c);
  
  input  [7:0] a, b;
  input  [2:0] sel;    
  output reg [7:0] res;
  output reg c;
  
  always@(a,b!=0)
    begin
      case(sel)
        
          3'b000: {c,res}=a+b;
          3'b001: {c,res}=a-b;
          3'b010: {c,res}=a<<1;
          3'b011: {c,res}=a>>1;
          3'b100: res=a&b;
          3'b101: res=a|b;
          3'b110: res=a^b;
          3'b111: res=~a;
          default: res=0;
        
      endcase
    end
endmodule
          
