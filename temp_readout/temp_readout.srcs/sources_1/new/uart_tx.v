`timescale 1ns / 1ps
module uart_tx(
    input clk,          // 100MHz 晶振
    input [7:0] tx_data, // 要发送的 8 位数据
    input tx_en,        // 发送使能信号
    output reg tx_pin,  // 物理引脚 A18
    output reg busy     // 告诉 Top 模块：正忙发送
);

    // 9600 波特率计算: 100MHz / 9600 = 10416 个时钟周期发一位
    parameter CLK_PER_BIT = 10416;

    parameter IDLE  = 2'b00;
    parameter START = 2'b01;
    parameter DATA  = 2'b10;
    parameter STOP  = 2'b11;

    reg [1:0]  state = IDLE;
    reg [13:0] clk_cnt = 0;
    reg [2:0]  bit_idx = 0;
    reg [7:0]  tx_data_reg;

    always @(posedge clk) begin
        case (state)
            IDLE: begin
                tx_pin <= 1'b1; // 空闲状态串口线拉高
                busy   <= 1'b0;
                clk_cnt <= 0;
                if (tx_en) begin
                    tx_data_reg <= tx_data; // 锁存数据，防止发送中途变化
                    state <= START;
                    busy  <= 1'b1;
                end
            end

            START: begin
                tx_pin <= 1'b0; // 起始位拉低
                if (clk_cnt < CLK_PER_BIT - 1) begin
                    clk_cnt <= clk_cnt + 1'b1;
                end else begin
                    clk_cnt <= 0;
                    state   <= DATA;
                end
            end

            DATA: begin
                tx_pin <= tx_data_reg[bit_idx]; // 串行发送每一位
                if (clk_cnt < CLK_PER_BIT - 1) begin
                    clk_cnt <= clk_cnt + 1'b1;
                end else begin
                    clk_cnt <= 0;
                    if (bit_idx < 7) begin
                        bit_idx <= bit_idx + 1'b1;
                    end else begin
                        bit_idx <= 0;
                        state   <= STOP;
                    end
                end
            end

            STOP: begin
                tx_pin <= 1'b1; // 停止位拉高
                if (clk_cnt < CLK_PER_BIT - 1) begin
                    clk_cnt <= clk_cnt + 1'b1;
                end else begin
                    clk_cnt <= 0;
                    state   <= IDLE;
                    busy    <= 1'b0;
                end
            end
        endcase
    end
endmodule