# ==========================================
# Basys 3 板载 100MHz 晶振时钟
# ==========================================
set_property PACKAGE_PIN W5 [get_ports clk_100m]							
set_property IOSTANDARD LVCMOS33 [get_ports clk_100m]

# ==========================================
# VGA 显示器接口约束
# ==========================================
# 红色通道 (R0~R3)
set_property PACKAGE_PIN G19 [get_ports {vga_r[0]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]
set_property PACKAGE_PIN H19 [get_ports {vga_r[1]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]
set_property PACKAGE_PIN J19 [get_ports {vga_r[2]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]
set_property PACKAGE_PIN N19 [get_ports {vga_r[3]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]

# 绿色通道 (G0~G3)
set_property PACKAGE_PIN J17 [get_ports {vga_g[0]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]
set_property PACKAGE_PIN H17 [get_ports {vga_g[1]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]
set_property PACKAGE_PIN G17 [get_ports {vga_g[2]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]
set_property PACKAGE_PIN D17 [get_ports {vga_g[3]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]

# 蓝色通道 (B0~B3)
set_property PACKAGE_PIN N18 [get_ports {vga_b[0]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]
set_property PACKAGE_PIN L18 [get_ports {vga_b[1]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]
set_property PACKAGE_PIN K18 [get_ports {vga_b[2]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]
set_property PACKAGE_PIN J18 [get_ports {vga_b[3]}]				
set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]

# 同步信号 (HSYNC, VSYNC)
set_property PACKAGE_PIN P19 [get_ports vga_hsync]						
set_property IOSTANDARD LVCMOS33 [get_ports vga_hsync]
set_property PACKAGE_PIN R19 [get_ports vga_vsync]						
set_property IOSTANDARD LVCMOS33 [get_ports vga_vsync]