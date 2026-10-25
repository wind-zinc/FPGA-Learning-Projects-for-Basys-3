`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/02/12 23:27:58
// Design Name: 
// Module Name: prbs_gen
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
module prbs_gen (
    input wire clk,      // 高速时钟输入
    input wire rst_n,    //由于Basys3按键默认是高电平有效，这里为了通用习惯写成低电平复位
    output wire prbs_out // 输出的伪随机序列
);

    // 定义一个7位的寄存器（Linear Feedback Shift Register, LFSR）
    reg [6:0] lfsr_reg;

    // PRBS-7 的反馈逻辑：多项式 x^7 + x^6 + 1
    // 也就是取寄存器的最高位(bit 7)和次高位(bit 6)进行异或
    wire feedback;
    assign feedback = lfsr_reg[6] ^ lfsr_reg[5]; 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // 【关键点】LFSR 不能复位为全0，否则它永远都是0。
            // 这里我们把它复位为全1（或者任何非0数）
            lfsr_reg <= 7'b111_1111; 
        end else begin
            // 移位操作：
            // {lfsr_reg[5:0], feedback} 的意思是：
            // 把原来的低6位左移变成了高6位，最低位用刚才算出来的 feedback 补上
            lfsr_reg <= {lfsr_reg[5:0], feedback};
        end
    end

    // 输出最高位作为串行数据流
    assign prbs_out = lfsr_reg[6];

endmodule
