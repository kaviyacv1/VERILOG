module tb;
  reg [4:0]d;
  reg [1:0]s;
  wire y;
  mux4to1 ins (d,s,y);
  initial begin 
   d = 0; s= 0;

    forever begin
        #10 d = $random % 2;
            s = $random % 2;
    end
    end
  initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars();
    $monitor("d=%0d,s=%0d,y=%0d",d,s,y);
    #100 $finish;
  end
endmodule
