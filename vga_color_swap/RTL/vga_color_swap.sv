`timescale 1ns / 1ps

module vga_color_swap (
    input  logic       clk_100m, 
    input  logic       rst_n,    

    output logic       vga_hsync,
    output logic       vga_vsync,
    output logic [3:0] vga_r,
    output logic [3:0] vga_g,
    output logic [3:0] vga_b
);

    logic [1:0] clk_div;
    logic       clk_25m;
    
    always_ff @(posedge clk_100m) begin
        clk_div <= clk_div + 1;
    end
    assign clk_25m = clk_div[1]; // 100M / 4 = 25MHz

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

    assign vga_hsync = (x >= 656 && x < 752) ? 1'b0 : 1'b1;
    assign vga_vsync = (y >= 490 && y < 492) ? 1'b0 : 1'b1;

    logic video_on;
    assign video_on = (x < 640) && (y < 480);

    logic [5:0] frame_cnt = 0;     
    logic       color_state = 1'b0; 

    logic frame_end;
    assign frame_end = (x == 799 && y == 524);

    always_ff @(posedge clk_25m) begin
        if (frame_end) begin
            if (frame_cnt == 6'd59) begin
                frame_cnt   <= 0;              
                color_state <= ~color_state;   
            end else begin
                frame_cnt <= frame_cnt + 1;
            end
        end
    end

    always_ff @(posedge clk_25m) begin
        if (video_on) begin
            if (x < 320) begin 
                if (color_state == 1'b0) begin
                    vga_r <= 4'hF; vga_g <= 4'h0; vga_b <= 4'h0; 
                end else begin
                    vga_r <= 4'h0; vga_g <= 4'h0; vga_b <= 4'hF; 
                end
            end else begin
                if (color_state == 1'b0) begin
                    vga_r <= 4'h0; vga_g <= 4'h0; vga_b <= 4'hF; 
                end else begin
                    vga_r <= 4'hF; vga_g <= 4'h0; vga_b <= 4'h0; 
                end
            end
        end else begin
            vga_r <= 4'h0; vga_g <= 4'h0; vga_b <= 4'h0;
        end
    end

endmodule