module tb;
  reg a,b,bin;
  wire d,bout;
  fs fs1(a,b,bin,d,bout);
  initial begin
    $monitor("time %0t, a=%b, b=%b, bin=%b, d=%b, bout=%b", $time,a,b,bin,d,bout);
    
    #1 a=0; b=0; bin=0;
    #1 a=0; b=0; bin=1;
    #1  a=0; b=1; bin=0;
    #1  a=0; b=1; bin=1;
    #1  a=1; b=0; bin=0;
    #1  a=1; b=0; bin=1;
    #1  a=1; b=1; bin=0;
    #1  a=1; b=1; bin=1;
    
    $dumpfile("fs.vcd");
    $dumpvars();
    #20 $finish;
  end
    endmodule
