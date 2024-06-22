module tb;
  reg a,b,bin;
  wire d,bout;
  fs ins (a,b,bin,d,bout);
  initial begin 
    a = 0; b = 0; bin = 0;
    
    forever begin
        #10 a = $random % 2;
            b = $random % 2;
            bin = $random % 2;        
    end
  end
    
  initial begin
    $dumpfile("fs.vcd");
    $dumpvars();
    $monitor("a=%0d,b=%0d,bin=%0d,d=%0d,bout=%0d",a,b,bin,d,bout);
    #100 $finish;
  end
endmodule
