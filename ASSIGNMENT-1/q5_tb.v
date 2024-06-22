module tb;
  reg [1:0]a;
  wire [3:0]y;
  dec2to4 ins (a,y);
  initial begin 
   a = 0;

    forever begin
        #10 a = $random % 2;            
    end
    
    end
  initial begin
    $dumpfile("dec2to4.vcd");
    $dumpvars();
    $monitor("a=%0d ,y=%0d",a,y);
    #200 $finish;
  end
endmodule
