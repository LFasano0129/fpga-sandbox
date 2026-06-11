`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Logan Fasano
// Create Date:   06/11/2026
// Module Name:   tb_led_blink
// Project Name:  led-blink
// Description:   Testbench for led_blink module, verifies counter and LED toggle
//////////////////////////////////////////////////////////////////////////////////

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
        rst = 1;        // assert reset
        #30;            // wait 30ns (3 cycles)
        rst = 0;        // release reset
        #100;           // wait 100ns to observe behavior
        $finish;        // end simulation
    end

endmodule