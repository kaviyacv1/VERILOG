module demux(in,s,y);
  input in;
  input [1:0]s;
  output  reg [3:0]y;
  always@(s,y)
    begin 
      case(s)
        2'b00 : begin y[0] = in; y[3:1] = 0;
        end
        
        2'b01 : begin y[1] = in; y[0] = 0;
        end
        2'b10 : begin y[2] = in; y[1:0] = 0;
        end
        2'b11 : begin y[3] = in; y[2:0] = 0;
        end
      endcase
    end
endmodule
