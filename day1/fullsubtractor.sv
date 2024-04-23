// Code your design here
module halfsub( a,b,di,bo);
  input a,b;
  output di,bo;
  assign di= a^b;
  assign bo= ~a&b;
endmodule

module fs(intf inf);
wire d0,b0,b1;
  halfsub s1(inf.a,inf.b,d0,b0);
  halfsub s2(d0,inf.bi,inf.d,b1);
  assign inf.bout= b0|b1;
endmodule

interface intf;
  logic a,b,bi;
  logic d,bout;
endinterface
  
