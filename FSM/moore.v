module sd1101_moore(input  clk,
                   input  reset,
                    input [3:0] din,
                   output logic dout);

  typedef enum logic [2:0] {S0, S1, S2, S3, S4} state_t;
  state_t state;

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      dout <= 0;
      state <= S0;
    end
    else begin
      case(state)
        S0: begin
          dout <= 0;
          if(din)
            state <= S1;
        end
        S1: begin
          dout <= 0;
          if(din)  
            state <= S2;
          else
            state <= S0;
        end
        S2: begin
          dout <= 0;
          if(~din)
            state <= S3;
        end
        S3: begin
          dout <= 0;
          if(din)
            state <= S4;
          else
            state <= S0;
        end
        S4: begin
          dout <= 1;
          if(din)
            state <= S1;
          else
            state <= S0;
        end
      endcase
    end
  end


endmodule


