module demux_1to4 (
    input wire din,
    input wire [1:0] s,
    output wire out0,
    output wire out1,
    output wire out2,
    output wire out3
);

assign out0 = (s == 2'b00) ? din : 1'b0;
  assign out1 = (s == 2'b01) ? din : 1'b0;
  assign out2 = (s == 2'b10) ? din : 1'b0;
  assign out3 = (s== 2'b11) ? din : 1'b0;

endmodule
