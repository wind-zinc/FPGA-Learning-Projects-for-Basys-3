`timescale 1ns / 1ps

module uart_rx_top (
    input  logic       clk,      
    input  logic       uart_rx,  
    output logic [7:0] led       
);

    
    
    localparam BAUD_DIV = 100_000_000 / 115200; 
    
    logic [9:0] baud_cnt = 0; 
    logic [3:0] bit_cnt = 0;  
    logic [7:0] rx_data = 0;  
    
    typedef enum logic [1:0] {IDLE, START, DATA, STOP} state_t;
    state_t state = IDLE;

    logic [7:0] final_data = 0;
    
    
    
    always_ff @(posedge clk) begin
        case (state)
            IDLE: begin
                baud_cnt <= 0;
                bit_cnt  <= 0;
                if (uart_rx == 1'b0) begin 
                    state <= START;
                end
            end
            
            START: begin
                if (baud_cnt == BAUD_DIV / 2) begin
                    baud_cnt <= 0;
                    if (uart_rx == 1'b0) 
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
                    rx_data <= {uart_rx, rx_data[7:1]}; 
                    bit_cnt <= bit_cnt + 1;
                    
                    if (bit_cnt == 7) 
                        state <= STOP;
                end else begin
                    baud_cnt <= baud_cnt + 1;
                end
            end
            
            STOP: begin
                if (baud_cnt == BAUD_DIV - 1) begin
                    baud_cnt <= 0;
                    final_data <= rx_data; 
                    state <= IDLE;
                end else begin
                    baud_cnt <= baud_cnt + 1;
                end
            end
        endcase
    end

    assign led = final_data;

endmodule