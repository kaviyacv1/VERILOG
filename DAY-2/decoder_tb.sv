module decoder_tb;
  reg a,b;
   
  wire y0,y1,y2,y3;
  decoder ins(a,b,y0,y1,y2,y3);
  initial begin 
  a = 1'b0; b = 1'b0;  
  #4 
    a = 1'b0; b = 1'b1;  
  #4 
    a = 1'b1; b = 1'b0;  
  #4 
    a = 1'b1; b = 1'b1;  
  end
  initial begin
    $dumpfile("decoder.vcd");
    $dumpvars();
    $monitor("a=%0d,b=%0d,yo=%0d,y1=%0d,y2=%0d,y3=%0d",a,b,y0,y1,y2,y3);
    #50 $finish;
  end
endmodule
