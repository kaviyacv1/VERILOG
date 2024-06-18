module seq_counter_tb;

  reg clk;
  reg reset;
  reg data;
  wire[1:0]count;
  
  initial begin
    clk = 0;
    reset = 0;
    data = 0;
    
    #10 reset = 1;
    #10 reset = 0;
    
    #10 data = 1;
    #10 data = 1;
    #10 data = 1;
    #10 data = 0;
    #10 data = 1;
    #10 data = 1;
    #10 data = 0;
    #10 data = 1;
    #10 data = 1;
    #10 data = 1;
    #10 data = 1;
    #10 data = 0;
    #10 data = 0;
    #10 data = 0;
    #10 data = 0;
    
    #10 $finish;
  end

  always #5 clk = ~clk;

  // Instantiate the DUT
  seq_counter counter (
    .clk(clk),
    .reset(reset),
    .data(data),
    .count(count)
  );
 
  // Display output
  initial begin
    $monitor("clk=%0d,reset=%0d,in_data=%0d,out_count=%0d", clk,reset,data,count);
  end

endmodule
