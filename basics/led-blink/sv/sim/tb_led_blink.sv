`timescale 1ns / 1ps

module tb_led_blink(

    );
    
    logic clk;
    logic rst;
    logic led;
    
    led_blink #(.COUNTER_MAX(10)) dut (
        .clk (clk),
        .rst (rst),
        .led (led)
    );

    initial clk = 0; // initialize clock to 0
    always #5 clk = ~clk; // toggle every 5ns

    initial begin 
        rst = 1;
        #35;
        rst = 0;
        #500;        // extend this much further
        $finish;
    end

endmodule