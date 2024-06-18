module tb;
  reg [3:0] b; 
  wire [3:0] g;
  binary2gray ins(b,g);
  
  initial begin
    $monitor("Binary to Gray = %b", b,g);
    b = 4'b1111; #10;
    b = 4'b0011; #10;
    b = 4'b0001; #10;
    b = 4'b1100; #10;
    b = 4'b1110; #10
    $finish;
  end
endmodule
