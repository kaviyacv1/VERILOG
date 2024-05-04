module mux_tb;
  reg a,b,c,d;
  reg [1:0]s;
  wire y;
  mux ins(a,b,c,d,s,y);
  initial begin 
  a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b0; 
   
    s= 2'b00;
    #4
     s= 2'b01;
    #4
     s= 2'b10;
    #4
     s= 2'b11;
      end
  initial begin
    $dumpfile("mux.vcd");
    $dumpvars();
    $monitor("a=%0d,b=%0d,c=%0d,d=%0d,s=%0d,y=%0d",a,b,c,d,s,y);
    #50 $finish;
  end
endmodule
