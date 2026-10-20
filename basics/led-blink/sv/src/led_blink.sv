`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer:      Logan Fasano
// Create Date:   06/11/2026
// Module Name:   led_blink
// Project Name:  led-blink
// Target Devices: Arty A7-100T
// Description:   Simple LED blinker, divides 100MHz clock to blink LED at ~1Hz
//////////////////////////////////////////////////////////////////////////////////

module led_blink(
    input  logic clk,    // 100MHz onboard clock
    input  logic rst,    // active high reset
    output logic led     // LED output
    );
    
    // 100MHz clock, need 50,000,000 cycles for 0.5s toggle = 1Hz blink
    parameter COUNTER_MAX = 50_000_000 - 1;
    localparam COUNTER_WIDTH = $clog2(COUNTER_MAX + 1);
    
    logic [COUNTER_WIDTH-1:0] counter;
    
    always_ff @(posedge clk) begin
        if (rst) begin
            counter <= '0;
            led     <= 1'b0;
        end else begin
            if (counter == COUNTER_MAX) begin
                counter <= '0;
                led     <= ~led;
            end else begin
                counter <= counter + 1'b1;
            end
        end
    end
    
endmodule