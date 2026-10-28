## =========================================================
## Basys3 BRAM Test Project Constraints
## =========================================================

## 1. 系统时钟 (System Clock) - W5 (100MHz)
## ---------------------------------------------------------
set_property PACKAGE_PIN W5 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
## 创建时钟约束 (10ns 周期 = 100MHz)
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clk]


## 2. LED 输出 (16位宽，对应 rom_data[15:0])
## ---------------------------------------------------------
## 从右到左 (LED0 -> LED15) 对应数据的低位到高位

## LED 0 (LSB) -> U16
set_property PACKAGE_PIN U16 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

## LED 1 -> E19
set_property PACKAGE_PIN E19 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

## LED 2 -> U19
set_property PACKAGE_PIN U19 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

## LED 3 -> V19
set_property PACKAGE_PIN V19 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

## LED 4 -> W18
set_property PACKAGE_PIN W18 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

## LED 5 -> U15
set_property PACKAGE_PIN U15 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]

## LED 6 -> U14
set_property PACKAGE_PIN U14 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

## LED 7 -> V14
set_property PACKAGE_PIN V14 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]

## LED 8 -> V13
set_property PACKAGE_PIN V13 [get_ports {led[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]

## LED 9 -> V3
set_property PACKAGE_PIN V3 [get_ports {led[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]

## LED 10 -> W3
set_property PACKAGE_PIN W3 [get_ports {led[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]

## LED 11 -> U3
set_property PACKAGE_PIN U3 [get_ports {led[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]

## LED 12 -> P3
set_property PACKAGE_PIN P3 [get_ports {led[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[12]}]

## LED 13 -> N3
set_property PACKAGE_PIN N3 [get_ports {led[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[13]}]

## LED 14 -> P1
set_property PACKAGE_PIN P1 [get_ports {led[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[14]}]

## LED 15 (MSB) -> L1
set_property PACKAGE_PIN L1 [get_ports {led[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[15]}]


## =========================================================
## 3. 配置电压 (消除警告)
## ---------------------------------------------------------
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]