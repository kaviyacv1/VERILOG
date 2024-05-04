module demux_tb;
  reg in;
  reg [1:0]s;
  wire [3:0]y;
  demux ins(in,s,y);
  initial begin 
    in=1;
  
    s= 2'b00;
    #4
     s= 2'b01;
    #4
     s= 2'b10;
    #4
     s= 2'b11;   
     
  end
  initial begin
    $dumpfile("demux.vcd");
    $dumpvars();
    $monitor("in=%0d,s=%0d,y=%0d",in,s,y);
    #50 $finish;
  end
endmodule
