# Basys 3 FPGA Practice

A collection of Verilog and SystemVerilog projects for the Digilent Basys 3 FPGA board, developed with Xilinx Vivado 2022.2. The examples cover RTL basics, Xilinx IP, clock-domain crossing, UART, and VGA.

## Projects

| Project | Description |
| --- | --- |
| `BRAM_test` | Reads a BRAM-based ROM with an address counter; displays data on LEDs and probes it with ILA. |
| `CORDIC_test` | DDS-based I/Q down-conversion, CIC decimation, and CORDIC magnitude/phase output. |
| `DAQ` | PRBS-7 sequence generator with a 200 MHz clock and ILA capture. |
| `DDS_test` | DDS sine-wave output displayed on LEDs and captured by ILA. |
| `fast_pipeline_based_on_AXI_stream` | DDS data crosses from 100 MHz to 200 MHz through an asynchronous FIFO, then an AXI4-Stream packetizer adds a header, sequence number, 1,024 samples, and checksum. Includes simulation testbenches. |
| `FIFO_test` | Asynchronous FIFO transfers counter data between 65 MHz and 100 MHz clock domains; ILA probes the read side. |
| `fpga_games` | VGA output with a button-controlled white square on a black background. |
| `led` | 100 MHz clock divider drives a blinking LED. |
| `project_2` | Analog-input-triggered LED controller with a three-second hold timer. |
| `stm32_basys3` | Receives 115,200-baud UART data from an STM32 and displays each byte on the LEDs. |
| `switch2` | `case`-based mode selection between AND and OR logic. |
| `temp_readout` | Reads the FPGA's internal temperature sensor and sends each sample over UART; includes Python monitor and plot scripts. |
| `vga_color_swap` | 640×480 VGA output with red and blue screen halves that swap once per second. |

## Open a Project

Open the desired `.xpr` file in Vivado. Vivado IP Catalog blocks may need their output products regenerated.

## Hardware and Tools

- **Vivado:** 2022.2
- **FPGA board:** Digilent Basys 3 (Artix-7 XC7A35T)
- **STM32 MCU:** STM32F103C8T6, communicating over UART at 115,200 baud.