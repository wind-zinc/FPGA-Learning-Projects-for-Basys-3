`timescale 1ns / 1ps

module vga_box_move (
    input  logic       clk_100m,  // Basys 3 100MHz 时钟
    // 五个方向按键 (Basys 3 物理按键为高电平有效)
    input  logic       btn_up,    // T18
    input  logic       btn_left,  // W19
    input  logic       btn_right, // T17
    input  logic       btn_down,  // U17
    input  logic       btn_rst,   // U18 (中心复位)
    // VGA 物理输出
    output logic       vga_hsync,
    output logic       vga_vsync,
    output logic [3:0] vga_r,
    output logic [3:0] vga_g,
    output logic [3:0] vga_b
);

    // =========================================================
    // 1. 时钟分频：100MHz 降至 25MHz 像素时钟 [1]
    // =========================================================
    logic [1:0] clk_div;
    logic clk_25m;
    always_ff @(posedge clk_100m) begin
        clk_div <= clk_div + 1;
    end
    assign clk_25m = clk_div[1]; // 使用 2位计数器的 q[1] 得到 25MHz [1]

    // =========================================================
    // 2. VGA 时序参数 (640x480 @ 60Hz) [1]
    // =========================================================
    localparam H_PIXELS = 640;
    localparam H_TOTAL  = 800;
    localparam H_SYNC_START = 640 + 16;
    localparam H_SYNC_END   = 640 + 16 + 96;

    localparam V_LINES = 480;
    localparam V_TOTAL  = 525;
    localparam V_SYNC_START = 480 + 10;
    localparam V_SYNC_END   = 480 + 10 + 2;

    logic [9:0] h_cnt = 0; // 横向计数器 (0~799) [1]
    logic [9:0] v_cnt = 0; // 纵向计数器 (0~524) [1]
    logic active_video;    // 屏幕有效显示区域标志位 [1]

    always_ff @(posedge clk_25m) begin
        if (h_cnt == H_TOTAL - 1) begin
            h_cnt <= 0;
            if (v_cnt == V_TOTAL - 1)
                v_cnt <= 0;
            else
                v_cnt <= v_cnt + 1;
        end else begin
            h_cnt <= h_cnt + 1;
        end
    end

    // 生成同步信号 (负极性)
    assign vga_hsync = ~(h_cnt >= H_SYNC_START && h_cnt < H_SYNC_END);
    assign vga_vsync = ~(v_cnt >= V_SYNC_START && v_cnt < V_SYNC_END);
    assign active_video = (h_cnt < H_PIXELS) && (v_cnt < V_LINES);

    // =========================================================
    // 3. 动画逻辑：方块的位置与移动控制
    // =========================================================
    localparam BOX_SIZE   = 50;  // 方块的长宽为 50 像素
    localparam MOVE_SPEED = 4;   // 每次移动的步长 (数值越大，方块跑得越快)
    
    // 计算屏幕中心坐标
    localparam CENTER_X = (H_PIXELS - BOX_SIZE) / 2;
    localparam CENTER_Y = (V_LINES - BOX_SIZE) / 2;

    logic [9:0] box_x = CENTER_X;
    logic [9:0] box_y = CENTER_Y;

    // "帧滴答" 信号：仅当一帧画面刚刚扫描结束时触发一次，用于控制动画速度
    logic frame_tick;
    assign frame_tick = (h_cnt == 0 && v_cnt == 0);

    always_ff @(posedge clk_25m) begin
        if (btn_rst) begin  // 按下 U18，复位到屏幕中央
            box_x <= CENTER_X;
            box_y <= CENTER_Y;
        end 
        else if (frame_tick) begin // 每秒执行 60 次
            // 向上移动 (防越界)
            if (btn_up && (box_y >= MOVE_SPEED)) 
                box_y <= box_y - MOVE_SPEED;
            // 向下移动 (防越界)
            if (btn_down && (box_y + BOX_SIZE + MOVE_SPEED <= V_LINES)) 
                box_y <= box_y + MOVE_SPEED;
            // 向左移动 (防越界)
            if (btn_left && (box_x >= MOVE_SPEED)) 
                box_x <= box_x - MOVE_SPEED;
            // 向右移动 (防越界)
            if (btn_right && (box_x + BOX_SIZE + MOVE_SPEED <= H_PIXELS)) 
                box_x <= box_x + MOVE_SPEED;
        end
    end

    // =========================================================
    // 4. 渲染逻辑：给像素上色
    // =========================================================
    logic is_box;
    // 数学边界判断：当前扫描坐标是否落在了我们的方块内部？
    assign is_box = (h_cnt >= box_x) && (h_cnt < box_x + BOX_SIZE) &&
                    (v_cnt >= box_y) && (v_cnt < box_y + BOX_SIZE);

    always_comb begin
        if (active_video) begin // 只有在可视区域 [1] 才输出颜色
            if (is_box) begin
                vga_r = 4'hF;   // 方块内部：全白
                vga_g = 4'hF;
                vga_b = 4'hF;
            end else begin
                vga_r = 4'h0;   // 方块外部：全黑
                vga_g = 4'h0;
                vga_b = 4'h0;
            end
        end else begin          // 在消隐区强制输出黑屏 (VGA 规范要求)
            vga_r = 4'h0;
            vga_g = 4'h0;
            vga_b = 4'h0;
        end
    end

endmodule