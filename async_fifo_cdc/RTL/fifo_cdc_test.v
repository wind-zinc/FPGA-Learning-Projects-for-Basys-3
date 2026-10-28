`timescale 1ns / 1ps

module fifo_cdc_test (
    input wire sys_clk,      // W5 (100MHz)
    input wire btn_rst,      
    output wire [7:0] led    
);

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

    wire rst = ~locked | btn_rst;

    reg [7:0] wr_data = 0;
    wire      full;
    wire      wr_en;

    assign wr_en = ~full; 

    always @(posedge clk_wr_65m or posedge rst) begin
        if (rst) begin
            wr_data <= 0;
        end else if (wr_en) begin
            wr_data <= wr_data + 1; 
        end
    end

    wire [7:0] rd_data;
    wire       empty;
    wire       rd_en;
    
    assign rd_en = ~empty;

    fifo_generator_0 u_fifo (
        .wr_clk(clk_wr_65m),
        .din(wr_data),
        .wr_en(wr_en),
        .full(full),

        .rd_clk(clk_rd_100m),
        .dout(rd_data),
        .rd_en(rd_en),
        .empty(empty),
        
        .rst(rst) 
    );

    assign led = rd_data; 

    ila_0 u_ila (
        .clk(clk_rd_100m), 
        .probe0(rd_data), 
        .probe1(empty),   
        .probe2(full),    
        .probe3(wr_data), // Probes from another clock domain are not timing-aligned.
        .probe4(rd_en)    
    );

endmodule