module seq_counter (
  input clk,
  input reset,
  input data,
  output reg  [1:0]count
);

  reg [1:0] state;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      state <= 2'b00;
      count <= 2'b00 ;
    end
    else begin
      case(state)
        2'b00: begin 
          if (data == 1) begin
            state <= 2'b01;
            count <= 2'b01; end
          else begin
            state <= 2'b00;
            count <= 2'b00 ; end
        end
        
        2'b01: begin 
          if (data == 1) begin
            state <= 2'b10;
            count <= 2'b10; end
          else begin
            state <= 2'b00;
           count <= 2'b00 ; end
        end
        
        2'b10: begin 
          if (data == 1) begin
            state <= 2'b11;
            count <= 2'b00 ; end
          else begin
            state <= 2'b00;
            count <=2'b00; end
        end
        2'b11: begin 
          if (data == 1) begin
            state <= 2'b00;
            count <= 2'b11; 
          end
          else begin
            state <= 2'b00;
            count <= 2'b00; 
          end
        end
      endcase
    end
  end

endmodule
