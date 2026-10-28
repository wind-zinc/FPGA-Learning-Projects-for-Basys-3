`timescale 1ns / 1ps

module vga_box_move (
    input  logic       clk_100m,  
    input  logic       btn_up,    // T18
    input  logic       btn_left,  // W19
    input  logic       btn_right, // T17
    input  logic       btn_down,  // U17
    input  logic       btn_rst,   
    output logic       vga_hsync,
    output logic       vga_vsync,
    output logic [3:0] vga_r,
    output logic [3:0] vga_g,
    output logic [3:0] vga_b
);

    logic [1:0] clk_div;
    logic clk_25m;
    always_ff @(posedge clk_100m) begin
        clk_div <= clk_div + 1;
    end
    assign clk_25m = clk_div[1]; 

    localparam H_PIXELS = 640;
    localparam H_TOTAL  = 800;
    localparam H_SYNC_START = 640 + 16;
    localparam H_SYNC_END   = 640 + 16 + 96;

    localparam V_LINES = 480;
    localparam V_TOTAL  = 525;
    localparam V_SYNC_START = 480 + 10;
    localparam V_SYNC_END   = 480 + 10 + 2;

    logic [9:0] h_cnt = 0; 
    logic [9:0] v_cnt = 0; 
    logic active_video;    

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

    assign vga_hsync = ~(h_cnt >= H_SYNC_START && h_cnt < H_SYNC_END);
    assign vga_vsync = ~(v_cnt >= V_SYNC_START && v_cnt < V_SYNC_END);
    assign active_video = (h_cnt < H_PIXELS) && (v_cnt < V_LINES);

    localparam BOX_SIZE   = 50;  
    localparam MOVE_SPEED = 4;   
    
    localparam CENTER_X = (H_PIXELS - BOX_SIZE) / 2;
    localparam CENTER_Y = (V_LINES - BOX_SIZE) / 2;

    logic [9:0] box_x = CENTER_X;
    logic [9:0] box_y = CENTER_Y;

    logic frame_tick;
    assign frame_tick = (h_cnt == 0 && v_cnt == 0);

    always_ff @(posedge clk_25m) begin
        if (btn_rst) begin  
            box_x <= CENTER_X;
            box_y <= CENTER_Y;
        end 
        else if (frame_tick) begin 
            if (btn_up && (box_y >= MOVE_SPEED)) 
                box_y <= box_y - MOVE_SPEED;
            if (btn_down && (box_y + BOX_SIZE + MOVE_SPEED <= V_LINES)) 
                box_y <= box_y + MOVE_SPEED;
            if (btn_left && (box_x >= MOVE_SPEED)) 
                box_x <= box_x - MOVE_SPEED;
            if (btn_right && (box_x + BOX_SIZE + MOVE_SPEED <= H_PIXELS)) 
                box_x <= box_x + MOVE_SPEED;
        end
    end

    logic is_box;
    assign is_box = (h_cnt >= box_x) && (h_cnt < box_x + BOX_SIZE) &&
                    (v_cnt >= box_y) && (v_cnt < box_y + BOX_SIZE);

    always_comb begin
        if (active_video) begin 
            if (is_box) begin
                vga_r = 4'hF;   
                vga_g = 4'hF;
                vga_b = 4'hF;
            end else begin
                vga_r = 4'h0;   
                vga_g = 4'h0;
                vga_b = 4'h0;
            end
        end else begin          
            vga_r = 4'h0;
            vga_g = 4'h0;
            vga_b = 4'h0;
        end
    end

endmodule