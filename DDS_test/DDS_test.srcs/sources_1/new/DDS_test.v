`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/02/14 12:44:29
// Design Name: 
// Module Name: DDS_test
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


module dds_test (
    input wire sys_clk,  // 100M
    output wire [7:0] led // 看不到正弦波，只能看个响
);

    // ==========================================
    // 1. 实例化 DDS 核
    // ==========================================
    wire [7:0] sine_wave; // 假设你生成的 DDS 输出是 16 位的
    wire        data_valid;
    
    // 这里的接口名字可能很长，去 .veo 文件里复制最稳妥
    dds_compiler_0 u_dds (
        .aclk(sys_clk),                              // 时钟 100M
        .m_axis_data_tvalid(data_valid),             // 数据有效标志
        .m_axis_data_tdata(sine_wave)                // 【重点】这里面就是正弦波！
        // .s_axis_phase_tdata(...)                  // 如果你想动态调频，就驱动这个端口
    );

    assign led = sine_wave; //把高8位接LED瞎闪一下

    // ==========================================
    // 2. 实例化 ILA (观察模拟波形)
    // ==========================================
    ila_0 u_ila (
        .clk(sys_clk),
        .probe0(sine_wave) // 把 16 位的正弦波数据接进去
    );

endmodule