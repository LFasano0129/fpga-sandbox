# LED Blink

## Description
Simple LED blink design targeting the Arty A7-100T. Blinks onboard LED0 at 1Hz by dividing the 100MHz system clock using a counter.

## How It Works
A 26-bit counter increments on every rising clock edge. When the counter reaches 50,000,000 (0.5 seconds at 100MHz) it resets to zero and toggles the LED, producing a 1Hz blink rate. Reset is active high and mapped to BTN0.

## Target Hardware
- Digilent Arty A7-100T (XC7A100TCSG324-1)

## Files
- `src/led_blink.sv` — Top level LED blink module
- `sim/tb_led_blink.sv` — Testbench with parameterized counter override for simulation
- `constraints/led_blink.xdc` — Pin constraints for clock, reset, and LED

## Simulation
1. Open project in Vivado
2. Click Run Simulation → Run Behavioral Simulation
3. Testbench overrides COUNTER_MAX to 10 for fast simulation

## Programming
1. Plug in Arty A7 via Micro USB
2. Open Hardware Manager in Vivado
3. Click Open Target → Auto Connect
4. Click Program Device