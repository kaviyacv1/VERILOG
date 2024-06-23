module top(output reg [2:0] x);
    reg [2:0] a, b;
  //  reg [2:0] x;

    initial begin
        a = 3'd5;
        b = 3'b111;
        x = a | b;
        $display("The value of x is: %d", x);
    end
endmodule
