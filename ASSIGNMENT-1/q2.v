module hs(a,b,d,bout);
    input a,b;
    output d,bout;    
    assign d = a ^ b;
    assign bout = ~a & b;
endmodule

module fs(a,b,bin,d,bout);
    input a,b,bin;
    output d,bout; 
    
    wire w1,w2,w3;

  hs hs1(.a(a),.b(b),.d(w1),.bout(w2));
  hs hs2(.a(w1),.b(bin),.d(d),.bout(w3));
  assign bout = w2 | w3;

endmodule

