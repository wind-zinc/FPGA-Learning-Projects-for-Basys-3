## =========================================================
## Basys3 DDS 项目约束文件
## =========================================================

## 1. 系统时钟 (System Clock) - 必须对应板上的 W5 引脚 (100MHz)
## ---------------------------------------------------------
set_property PACKAGE_PIN W5 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
## 创建时钟约束 (告诉 Vivado 这是个 10ns 周期即 100MHz 的时钟)
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clk]


## 2. LED 输出 (用于观察 DDS 输出的高 8 位)
## ---------------------------------------------------------
## 虽然肉眼看不清 5MHz 的闪烁，但能看到亮度变化
## 对应板子右下角的 LED0 ~ LED7

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

## LED 7 (MSB) -> V14
set_property PACKAGE_PIN V14 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]


## =========================================================
## 3. 配置电压 (Configuration Bank Voltage)
## ---------------------------------------------------------
## 这两行是消除 "CFGBVS" 警告的，Basys3 固定是 3.3V
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]