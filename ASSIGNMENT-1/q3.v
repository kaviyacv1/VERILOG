module mux2to1(a,b,s,y);
input a,b,s;
  output y;
  wire w1,w2,w3;
  not x1(w1, s);       
  and x2(w2, a, w1);
  and x3(w3,b,s);        
  or x4(y, w2,w3);
endmodule
