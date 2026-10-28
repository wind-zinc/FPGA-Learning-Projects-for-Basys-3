# FPGA Learning Projects for Basys 3

Verilog and SystemVerilog projects developed with Vivado 2022.2 for the Digilent Basys 3. The STM32 UART example uses an STM32F103C8T6.

## Projects

- **bram_rom** — Reads a sine-wave table from block RAM and observes the output with LEDs and ILA.
- **cordic_iq_demodulator** — Demonstrates DDS-based I/Q down-conversion, CIC decimation, and CORDIC magnitude and phase output.
- **prbs_data_acquisition** — Generates a PRBS-7 sequence with ILA monitoring.
- **dds_sine_wave** — Generates a DDS sine wave for LED display and ILA capture.
- **axi_stream_packetizer** — Moves DDS AXI4-Stream data across clock domains and packetizes samples.
- **async_fifo_cdc** — Transfers counter data between 65 MHz and 100 MHz clock domains using an asynchronous FIFO.
- **vga_box_game** — Displays a button-controlled white square over VGA.
- **led_blinker** — Blinks an LED using the 100 MHz board clock.
- **analog_triggered_led** — Controls an LED with an analog-input-triggered timed state machine.
- **stm32_uart_receiver** — Receives 115,200-baud UART data from an STM32F103C8T6 and displays it on LEDs.
- **switch_controlled_logic** — Selects AND or OR logic with a switch-controlled case statement.
- **fpga_temperature_monitor** — Sends internal FPGA temperature samples over UART with Python serial-monitoring tools.
- **vga_color_swap** — Alternates red and blue regions in a 640×480 VGA display.

