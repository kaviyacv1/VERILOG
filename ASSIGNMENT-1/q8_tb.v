module tb_glitch_free_clock_mux;

    reg pclk_62_5mhz;
    reg pclk_250mhz;
    reg [1:0] rate;
    wire pclk;
    glitch_free_clock_mux uut (
        .pclk_62_5mhz(pclk_62_5mhz),
        .pclk_250mhz(pclk_250mhz),
        .rate(rate),
        .pclk(pclk)
    );

    
    initial begin
        pclk_62_5mhz = 0;
        forever #8 pclk_62_5mhz = ~pclk_62_5mhz; 
    end

    
    initial begin
        pclk_250mhz = 0;
      forever #2 pclk_250mhz = ~pclk_250mhz; end
    initial begin
       
        rate = 2'b00;
        #10;
        rate = 2'b10;
        #10;
        rate = 2'b01;
        #10;
        rate = 2'b00;
    end
      
     initial begin
    $dumpfile(" tb_glitch_free_clock_mux.vcd");
    $dumpvars();
       $monitor("a=%0d,b=%0d,rate=%0d,pclk=%0d",pclk_62_5mhz,pclk_250mhz,rate,pclk);
    #100 $finish;
  end

endmodule
