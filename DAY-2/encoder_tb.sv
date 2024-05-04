module encoder_tb;
  reg x0,x1,x2,x3;
  wire y0,y1;
  encoder ins(x0,x1,x2,x3,y0,y1);
  initial  begin
   x0 = 0 ;  x1 = 0 ; x2 = 0 ; x3 = 1 ;
#4
    x0 = 0 ;  x1 = 0 ; x2 = 1 ; x3 = 0 ;
#4 
    x0 = 0 ;  x1 = 1 ; x2 = 0 ; x3 = 0 ;
#4
    x0 = 1 ;  x1 = 0 ; x2 = 0 ; x3 = 0 ;
   end
  initial begin
    $dumpfile("encoder.vcd");
    $dumpvars();
    $monitor("x0=%0d,x1=%0d,x2=%0d,x3=%0d,y0=%0d,y1=%0d",x0,x1,x2,x3,y0,y1);
    #50 $finish;
  end
endmodule 
