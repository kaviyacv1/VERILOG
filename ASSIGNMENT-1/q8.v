module glitch_free_clock_mux (
    input wire pclk_62_5mhz,
    input wire pclk_250mhz,
    input wire [1:0] rate,
    output reg pclk
);

    
    reg clk_62_5mhz_latch;
    reg clk_250mhz_latch;

   
    always @(*) begin
        case (rate)
            2'b00: pclk = clk_62_5mhz_latch;
            2'b10: pclk = clk_250mhz_latch;
            default: pclk = 1'b0; 
        endcase
    end

   
    always @(posedge pclk_62_5mhz or posedge pclk_250mhz) begin
        if (rate == 2'b00) begin
            clk_62_5mhz_latch <= pclk_62_5mhz;
        end
        if (rate == 2'b10) begin
            clk_250mhz_latch <= pclk_250mhz;
        end
    end
endmodule


