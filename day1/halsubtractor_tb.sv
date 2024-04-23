module halfsub_tb;
  reg a,b;
  wire d,br;
  halfsub ins (a,b,d,br);
  initial begin
    a=1'b0;  b=1'b0;
    #4
    $monitor("a=%0d,b=%0d,d=%0d,br=%0d", a,b,d,br);
     a=1'b0;  b=1'b1;
    #4
    $monitor("a=%0d,b=%0d,d=%0d,br=%0d",a,b,d,br);
     a=1'b1;  b=1'b0;
    #4
    $monitor("a=%0d,b=%0d,d=%0d,br=%0d", a,b,d,br);
     a=1'b1;  b=1'b1;
    #4
    $monitor("a=%0d,b=%0d,d=%0d,br=%0d", a,b,d,br);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
