module encoder( x0,x1,x2,x3,y1,y0);
  input x0,x1,x2,x3;
  output y1,y0;
  or o1( y0,x1,x3);
  or o2( y1,x2,x3);
endmodule
