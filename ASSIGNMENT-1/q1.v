module hs(a,b,d,bout);
  input a,b;
  output d,bout;
  assign d = a^b;
  assign bout = ~a&b;
endmodule
