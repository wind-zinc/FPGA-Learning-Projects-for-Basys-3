`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/02/12 23:46:35
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top (
    input wire sys_clk,    // W5: 100MHz
    input wire btn_rst,    // U18: 复位按键
    output wire tx_data    // U16: LED0
);

    // ==========================================
    // 1. 内部信号定义
    // ==========================================
    wire clk_200mhz;       // 给 PRBS 和 ILA 用的高速时钟
    wire locked;           // PLL 锁定信号
    wire rst_n;            // 内部低电平复位

    // 复位逻辑：只有当时钟稳定(locked=1) 且 按钮没按下(~btn_rst) 时，复位才释放(变高)
    assign rst_n = locked & (~btn_rst); 

    // ==========================================
    // 2. 实例化 Clock Wizard (生成 200MHz)
    // ==========================================
    clk_wiz_0 u_clk_wiz (
        .clk_out1(clk_200mhz),     // 输出 200MHz
        .reset(btn_rst),           // 复位脚
        .locked(locked),           // 锁定信号
        .clk_in1(sys_clk)          // 输入 100MHz
    );

    // ==========================================
    // 3. 实例化 PRBS 生成器 (你的核心逻辑)
    // ==========================================
    prbs_gen u_prbs_gen (
        .clk(clk_200mhz),          // 必须用 200MHz
        .rst_n(rst_n),             
        .prbs_out(tx_data)         // 输出连到 LED
    );

    // ==========================================
    // 4. 实例化 ILA (在线逻辑分析仪)
    // ==========================================
    // 这里的名字 ila_0 必须和你刚才在 IP Catalog 里生成的名字一致
    ila_0 u_ila (
        .clk(clk_200mhz), // 【重要】ILA 的时钟必须与被测信号的时钟域一致！
        .probe0(tx_data)  // 我们要观察的信号
    );

endmodule
