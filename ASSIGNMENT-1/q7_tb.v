module tb_encoder_2_to_4;
    reg [1:0] in;
    wire [3:0] out;
    
    encoder_2_to_4 ins (
        .in(in), 
        .out(out)
    );
    
    initial begin
        
        in = 2'b00;
      forever begin
        #2 in = $random % 4;
      end     
    end

  initial begin
    $dumpfile("encoder_2_to_4.vcd");
    $dumpvars();    
      $monitor("Time=%0d, Input=%b, Output=%b", $time, in, out);
       #30 $finish;
    end
      
endmodule
