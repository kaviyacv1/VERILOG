module tb;
  reg a,b;
  wire d,bout;
  hs ins (a,b,d,bout);
  initial begin 
    a=1; b=0;
    #2
     a=1; b=1; 
    #2
        a=0; b=0; 
    #2
        a=0; b=1; 
       
    end
  initial begin
    $dumpfile("bitobcd.vcd");
    $dumpvars();
    $monitor("a=%0d,b=%0d,d=%0d,bout=%0d",a,b,d,bout);
    #50 $finish;
  end
endmodule
