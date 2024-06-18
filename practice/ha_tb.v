module ha_tb;
  reg a,b;
  wire s,cout;
  ha ha1(a,b.s,cout);
  initial begin
    $monitor("at time %t, a=%b, b=%b, s=%b, c=%b", $time, a,b,s,cout);
    a=0; b=0;
    #1
    a=0; b=1;
    #2
    a=1; b=0;
    #3
    a=1;b=1;
    #4
    $dumpfile("ha.vcd");
    $dumpvars();
  end
endmodule
