module tb;
  
    reg a,b,c;
  wire sum,carry;
  
  full_adder ins(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
   
  initial begin
    
    a=1'b0; b=1'b1; c=1'b0;
   #4
    a=1'b0; b=1'b1; c=1'b1;
    #4 
     a=1'b1; b=1'b1; c=1'b0;
   #4 
    a=1'b1; b=1'b0; c=1'b0;
   #4   
    a=1'b0; b=1'b0; c=1'b0;
  end
initial begin 
  $dumpfile("full_adder.vcd");
  $dumpvars();  $monitor("a=%0d,b=%0d,c=%0d,sum=%0d,carry=%0d",a,b,c,sum,carry);
 #100 $finish;   
  end
  
endmodule
