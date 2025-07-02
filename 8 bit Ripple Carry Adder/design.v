module fa1bit(input a, b, cin, output sum, cout);
  
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (a & cin) | (b & cin);
  
endmodule

module fa8bit(input [7:0] a, b, input cin, output [7:0] sum, output cout);
  wire [6:0] carry;
  
fa1bit fa1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(carry[0]));
  fa1bit fa2(.a(a[1]),.b(b[1]),.cin(carry[0]),.sum(sum[1]),.cout(carry[1]));
  fa1bit fa3(.a(a[2]),.b(b[2]),.cin(carry[1]),.sum(sum[2]),.cout(carry[2]));
  fa1bit fa4(.a(a[3]),.b(b[3]),.cin(carry[2]),.sum(sum[3]),.cout(carry[3]));
  fa1bit fa5(.a(a[4]),.b(b[4]),.cin(carry[3]),.sum(sum[4]),.cout(carry[4]));
  fa1bit fa6(.a(a[5]),.b(b[5]),.cin(carry[4]),.sum(sum[5]),.cout(carry[5]));
  fa1bit fa7(.a(a[6]),.b(b[6]),.cin(carry[5]),.sum(sum[6]),.cout(carry[6]));
  fa1bit fa8(.a(a[7]),.b(b[7]),.cin(carry[6]),.sum(sum[7]),.cout(cout));
  
endmodule
