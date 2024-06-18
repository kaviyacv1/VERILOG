module sd1101_moore_tbw;
  reg clk,reset,din;
  wire out;
  
  sd1101_moore ins(clk,reset,din,dout);
  
  initial begin
    $dumpfile("sd1101_moore.vcd"); $dumpvars();
  end
  
  initial begin
  clk=0;
    #100 $finish;
     end
   always #5 clk=~clk;
 
  
  initial begin
	reset=1;
    #10 reset=0;
    #150;
  end
  initial begin
    din=1;
    #15 din=1;
    #15 din=0;
    #15 din=1;
  end
  initial begin $monitor("clk= %0d,reset= %0d,din= %0d,dout=%0d", clk,reset,din,dout);
    #50 $finish;
  end

    
    
endmodule
