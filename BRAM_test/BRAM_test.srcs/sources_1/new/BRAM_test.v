`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/02/15 11:13:51
// Design Name: 
// Module Name: BRAM_test
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


module bram_test (
    input wire sys_clk,  // 100M
    output wire [15:0] led // 假装输出
);

    // ==========================================
    // 1. 地址计数器 (Address Counter)
    // ==========================================
    reg [9:0] addr_ptr = 0; // 10位宽 (2^10 = 1024)

    always @(posedge sys_clk) begin
        addr_ptr <= addr_ptr + 1; // 自动溢出回零: 1023 -> 0
    end

    // ==========================================
    // 2. 实例化 BRAM (ROM模式)
    // ==========================================
    wire [15:0] rom_data;

    blk_mem_gen_0 u_rom (
        .clka(sys_clk),    // 时钟
        .addra(addr_ptr),  // 地址 (输入) -> 告诉它读哪一行
        .douta(rom_data)   // 数据 (输出) -> 那一行的内容
    );

    // ==========================================
    // 3. ILA 观察
    // ==========================================
    ila_0 u_ila (
        .clk(sys_clk),
        .probe0(rom_data), // 观察读出来的数据
        .probe1(addr_ptr)  // 观察地址 (看看是不是锯齿波)
    );
    
    assign led = rom_data; // 防止优化

endmodule