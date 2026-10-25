`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/02/13 13:16:35
// Design Name: 
// Module Name: fifo_cdc_test
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


module fifo_cdc_test (
    input wire sys_clk,      // W5 (100MHz)
    input wire btn_rst,      // U18 (复位)
    output wire [7:0] led    // 把读出来的数据低8位显示在LED上
);

    // ==========================================
    // 1. 时钟生成 (65M 写, 100M 读)
    // ==========================================
    wire clk_wr_65m;
    wire clk_rd_100m;
    wire locked;
    
    clk_wiz_0 u_clk_wiz (
        .clk_out1(clk_wr_65m),  // 65MHz
        .clk_out2(clk_rd_100m), // 100MHz
        .reset(btn_rst),
        .locked(locked),
        .clk_in1(sys_clk)
    );

    // 复位逻辑：FIFO 的复位通常要求高电平有效，且要保持几个周期
    // 这里简单处理：锁定前复位
    wire rst = ~locked | btn_rst;

    // ==========================================
    // 2. 写逻辑 (在 65MHz 时域)
    // ==========================================
    reg [7:0] wr_data = 0;
    wire      full;
    wire      wr_en;

    // 只要 FIFO 没满，我们就一直写
    assign wr_en = ~full; 

    always @(posedge clk_wr_65m or posedge rst) begin
        if (rst) begin
            wr_data <= 0;
        end else if (wr_en) begin
            wr_data <= wr_data + 1; // 产生递增数据 0,1,2...
        end
    end

    // ==========================================
    // 3. FIFO 实例化 (跨时钟域核心)
    // ==========================================
    wire [7:0] rd_data;
    wire       empty;
    wire       rd_en;
    
    // 只有 FIFO 不空，我们就读
    assign rd_en = ~empty;

    fifo_generator_0 u_fifo (
        // 写端口 (Write Port) -> 用 65M 时钟
        .wr_clk(clk_wr_65m),
        .din(wr_data),
        .wr_en(wr_en),
        .full(full),

        // 读端口 (Read Port) -> 用 100M 时钟
        .rd_clk(clk_rd_100m),
        .dout(rd_data),
        .rd_en(rd_en),
        .empty(empty),
        
        .rst(rst) // 复位 (通常 FIFO 复位比较讲究，这里先简化)
    );

    // ==========================================
    // 4. 结果观察
    // ==========================================
    assign led = rd_data; // 让LED闪烁(虽然看不清)

    // ==========================================
    // 5. ILA 抓波 (必须抓两个时钟域！)
    // ==========================================
    // 注意：ILA 最好用“读时钟”来抓，因为我们关心的是读出来的数据对不对
    ila_0 u_ila (
        .clk(clk_rd_100m), 
        .probe0(rd_data), // 观察读出的数据 [7:0]
        .probe1(empty),   // 观察空标志
        .probe2(full),    // 观察满标志
        .probe3(wr_data), // 【注意】跨时钟域抓信号是不准的！但为了对比可以看看
        .probe4(rd_en)    // 读使能
    );

endmodule