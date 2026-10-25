`timescale 1ns / 1ps

module vga_color_swap (
    input  logic       clk_100m, // Basys 3 板载 100MHz 时钟
    input  logic       rst_n,    // 复位按键 (可选)

    // VGA 物理输出引脚
    output logic       vga_hsync,
    output logic       vga_vsync,
    output logic [3:0] vga_r,
    output logic [3:0] vga_g,
    output logic [3:0] vga_b
);

    // =========================================================
    // 1. 时钟分频：100MHz -> 25MHz (用于 640x480@60Hz)
    // =========================================================
    // 工业界通常用 IP 核 (MMCM)，这里为了代码极简，我们用一个 2 位计数器
    logic [1:0] clk_div;
    logic       clk_25m;
    
    always_ff @(posedge clk_100m) begin
        clk_div <= clk_div + 1;
    end
    assign clk_25m = clk_div[1]; // 100M / 4 = 25MHz

    // =========================================================
    // 2. 扫描计数器 (定义屏幕的坐标)
    // =========================================================
    logic [9:0] x = 0; // 0 ~ 799
    logic [9:0] y = 0; // 0 ~ 524

    always_ff @(posedge clk_25m) begin
        if (x == 10'd799) begin
            x <= 0;
            if (y == 10'd524)
                y <= 0;
            else
                y <= y + 1;
        end else begin
            x <= x + 1;
        end
    end

    // =========================================================
    // 3. 生成同步信号 (极其死板的工业标准)
    // =========================================================
    // 640x480标准：X在 656~751 时拉低 HSYNC；Y在 490~491 时拉低 VSYNC
    assign vga_hsync = (x >= 656 && x < 752) ? 1'b0 : 1'b1;
    assign vga_vsync = (y >= 490 && y < 492) ? 1'b0 : 1'b1;

    // 判断当前是否在有效显示区域 (640 * 480)
    logic video_on;
    assign video_on = (x < 640) && (y < 480);

    // =========================================================
    // 4. 动画导演：1秒钟定时器 (数 60 帧)
    // =========================================================
    logic [5:0] frame_cnt = 0;     // 记录当前是第几帧 (0~59)
    logic       color_state = 1'b0; // 0表示[左红右蓝]，1表示[左蓝右红]

    // 什么时候算作“一帧结束”？当 x 和 y 都走到最后面的那个瞬间
    logic frame_end;
    assign frame_end = (x == 799 && y == 524);

    always_ff @(posedge clk_25m) begin
        if (frame_end) begin
            if (frame_cnt == 6'd59) begin
                frame_cnt   <= 0;              // 满 60 帧，清零
                color_state <= ~color_state;   // 状态翻转 (魔法发生的瞬间！)
            end else begin
                frame_cnt <= frame_cnt + 1;
            end
        end
    end

    // =========================================================
    // 5. 像素上色逻辑 (空间映射)
    // =========================================================
    always_ff @(posedge clk_25m) begin
        if (video_on) begin
            // 屏幕被分成了左右两半 (x=320 是分界线)
            if (x < 320) begin 
                // 左半边屏幕
                if (color_state == 1'b0) begin
                    vga_r <= 4'hF; vga_g <= 4'h0; vga_b <= 4'h0; // 状态0：纯红
                end else begin
                    vga_r <= 4'h0; vga_g <= 4'h0; vga_b <= 4'hF; // 状态1：纯蓝
                end
            end else begin
                // 右半边屏幕
                if (color_state == 1'b0) begin
                    vga_r <= 4'h0; vga_g <= 4'h0; vga_b <= 4'hF; // 状态0：纯蓝
                end else begin
                    vga_r <= 4'hF; vga_g <= 4'h0; vga_b <= 4'h0; // 状态1：纯红
                end
            end
        end else begin
            // 出了有效显示区，必须强制输出全黑，否则显示器会罢工
            vga_r <= 4'h0; vga_g <= 4'h0; vga_b <= 4'h0;
        end
    end

endmodule