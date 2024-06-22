module tb;
  reg a,b,s;
  wire y;
  mux2to1 ins (a,b,s,y);
  initial begin 
   a = 0; b = 0; s= 0;

    forever begin
        #10 a = $random % 2;
            b = $random % 2;
            s = $random % 2;
    end
    end
  initial begin
    $dumpfile("2to1_mux.vcd");
    $dumpvars();
    $monitor("a=%0d,b=%0d,s=%0d,y=%0d",a,b,s,y);
    #100 $finish;
  end
endmodule
