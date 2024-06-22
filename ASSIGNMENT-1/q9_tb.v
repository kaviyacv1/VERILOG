module tb;

    reg clk;    
    reg rst;  
    reg d;      
    wire q;     

    dff ins (
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk; 
    end

    initial begin
      
        rst = 1;  
        d = 0;
#10;
       
        rst = 0;
        #20;        
        rst = 1; 

        
        #10 d = 1;  // Set data to 1 before falling edge
        #10 d = 0;  // Set data to 0 at the falling edge
        #10 d = 1;  // Set data to 1 at the falling edge
        #10 d = 0;  // Set data to 0 at the falling edge

        
        rst = 0;
        #20;
        rst = 1;

    end
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars();
    $monitor("time=%t,clk=%0d,rst=%0d,d=%0d,q=%0d",$time,clk,rst,d,q);
    #100 $finish;
  end

endmodule
