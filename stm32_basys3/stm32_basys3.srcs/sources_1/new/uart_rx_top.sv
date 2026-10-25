`timescale 1ns / 1ps

module uart_rx_top (
    input  logic       clk,      // Basys3 100MHz 晶振时钟
    input  logic       uart_rx,  // 连到 STM32 PA9 的接收引脚
    output logic [7:0] led       // Basys3 上的 8 个 LED 灯
);

    
    // 波特率计算 (100MHz / 115200 ≈ 868 个时钟周期)
    
    localparam BAUD_DIV = 100_000_000 / 115200; 
    
    logic [9:0] baud_cnt = 0; // 波特率计数器
    logic [3:0] bit_cnt = 0;  // 接收到了第几个数据位
    logic [7:0] rx_data = 0;  // 正在拼装的数据
    
    // 状态机定义
    typedef enum logic [1:0] {IDLE, START, DATA, STOP} state_t;
    state_t state = IDLE;

    // 寄存接收到的最终数据
    logic [7:0] final_data = 0;
    
    
    // UART 接收核心状态机 (在波特率中间点采样，最稳定！)
    
    always_ff @(posedge clk) begin
        case (state)
            IDLE: begin
                baud_cnt <= 0;
                bit_cnt  <= 0;
                // 检测到下降沿 (起始位)
                if (uart_rx == 1'b0) begin 
                    state <= START;
                end
            end
            
            START: begin
                // 等待半个波特率周期，走到起始位的正中间去采样
                if (baud_cnt == BAUD_DIV / 2) begin
                    baud_cnt <= 0;
                    if (uart_rx == 1'b0) // 再次确认确实是低电平，不是毛刺噪声
                        state <= DATA;
                    else
                        state <= IDLE;
                end else begin
                    baud_cnt <= baud_cnt + 1;
                end
            end
            
            DATA: begin
                if (baud_cnt == BAUD_DIV - 1) begin
                    baud_cnt <= 0;
                    // 把采到的线上位，塞进寄存器的最高位，原来的往下移 (右移串并转换)
                    rx_data <= {uart_rx, rx_data[7:1]}; 
                    bit_cnt <= bit_cnt + 1;
                    
                    if (bit_cnt == 7) // 8位收齐了
                        state <= STOP;
                end else begin
                    baud_cnt <= baud_cnt + 1;
                end
            end
            
            STOP: begin
                if (baud_cnt == BAUD_DIV - 1) begin
                    baud_cnt <= 0;
                    final_data <= rx_data; // 把拼好的字节锁存输出！
                    state <= IDLE;
                end else begin
                    baud_cnt <= baud_cnt + 1;
                end
            end
        endcase
    end

    // 将收到的最终数据，直接连到板子上的 8 个 LED 灯上
    assign led = final_data;

endmodule