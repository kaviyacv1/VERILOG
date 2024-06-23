/*module eg(output reg [2:0]x);
reg [2:0]a;
//reg [2:0]x;
initial
begin
x = ^a;
a = 3'd4;
  $display("x=%0d",x);
end
endmodule */ //HERE OUTPUT IS X BWECAUSE a IS UNDECLARED


module eg(output reg [2:0]x);
reg [2:0]a;
//reg [2:0]x;
initial
begin
a = 3'd4;
  x = ^a;
  $display("x=%0d",x);
end
endmodule
