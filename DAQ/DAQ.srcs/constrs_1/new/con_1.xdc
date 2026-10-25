## 1. 时钟信号 (必须准确对应 W5)
set_property PACKAGE_PIN W5 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
## 创建一个 10ns (100MHz) 的主时钟约束
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clk]

## 2. 复位按键 (中间按钮 U18)
set_property PACKAGE_PIN U18 [get_ports btn_rst]
set_property IOSTANDARD LVCMOS33 [get_ports btn_rst]

## 3. 数据输出 (绑定到 LED0 - U16，为了防止逻辑被优化)
set_property PACKAGE_PIN U16 [get_ports tx_data]
set_property IOSTANDARD LVCMOS33 [get_ports tx_data]

## 4. (可选) 如果 Vivado 报错说 ILA 时钟未约束，可以加上这句，但通常 Clock Wizard 会自动处理
## set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
## set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
## set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
## connect_debug_port dbg_hub/clk [get_nets clk_200mhz]