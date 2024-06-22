module tb_demux;
    reg din;
    reg [1:0] s;
    wire out0, out1, out2, out3;

    demux_1to4 ins (
        .din(din),
        .s(s),
        .out0(out0),
        .out1(out1),
        .out2(out2),
        .out3(out3)
    );

    initial begin
        $dumpfile("demux_tb.vcd");
        $dumpvars(0, tb_demux);
      $monitor("din=%0d,s=%0d,out0=%0d,out1=%0d,out2=%0d,out3=%0d",din,s,out0, out1, out2, out3);

      repeat (15) begin
            din = $random;
            s = $random;
            #10;
        end

        $finish;
    end
endmodule
