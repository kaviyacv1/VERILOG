module mux2to1(a,b,s,y);
input a,b,s;
  output y;
  assign y= s?b:a;
endmodule
module mux4to1(d,s,y);
input [3:0]d;
input [1:0]s;
output y;
  
wire y0, y1;

mux2to1 m1(.a(d[0]),.b(d[2]),.s(s[0]),.y(y0));

mux2to1 m2(.a(d[2]),.b(d[3]),.s(s[0]),.y(y1));
   
mux2to1 m3(.a(y0),.b(y1),.s(s[1]),.y(y));
   
endmodule
