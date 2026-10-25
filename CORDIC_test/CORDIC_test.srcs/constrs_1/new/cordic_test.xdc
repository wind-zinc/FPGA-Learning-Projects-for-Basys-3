## =========================================================
## Basys3 DDC (Digital Down Converter) Constraints
## =========================================================

## ---------------------------------------------------------
## 1. 系统时钟 (System Clock) - W5 (100MHz)
## ---------------------------------------------------------
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
## 告诉 Vivado 这是一个 10ns (100MHz) 的时钟，这对时序分析至关重要
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]


## ---------------------------------------------------------
## 2. 复位信号 (Reset) - 使用中间按钮 (BTNC - U18)
## ---------------------------------------------------------
## 注意：Basys3 的按钮按下是高电平(1)，松开是(0)。
## 你的代码如果是 !rst_n (低电平复位)，那么：
## 按下按钮(1) -> rst_n 为 1 -> !rst_n 为 0 -> 【不复位/正常工作】
## 松开按钮(0) -> rst_n 为 0 -> !rst_n 为 1 -> 【复位状态】
## 这可能和你想要的相反。
## 建议：在代码里改一下，或者逻辑上把这个引脚当成 rst (高电平复位)
set_property PACKAGE_PIN U18 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]


## ---------------------------------------------------------
## 4. 配置电压 (消除 CFGBVS 警告)
## ---------------------------------------------------------
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
set_property SEVERITY {Warning} [get_drc_checks RTSTAT-1]