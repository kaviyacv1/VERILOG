module xorgate(input a,b, output y);
  assign y= a^b;
endmodule

module andgate(input a,b, output z);
  assign z= ~a&b;
endmodule

module hs(input a,b, output d, bout);
  xorgate x1( a,b,d);
  andgate x2( a,b,bout);
endmodule 

module fs(input a,b,bin, output d, bout);
  wire s,w0,w1;
  hs su1(a,b,s,w0);
  hs su2(s,bin,d,w1);
  
  assign bout= w1 | w0;
endmodule
