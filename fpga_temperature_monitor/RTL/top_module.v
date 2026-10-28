`timescale 1ns / 1ps
module Top(
    input clk,
    output uart_txd
);
    wire [15:0] xadc_data;
    wire drdy;
    reg den;
    
    reg [2:0] state = 0;
    wire uart_busy;
    reg [7:0] tx_data_buffer;
    reg tx_en_pulse;
    
    reg [26:0] timer;
    reg [11:0] temp_data_reg; 

    always @(posedge clk) begin
        if (timer < 100_000_000) begin
            timer <= timer + 1;
        end else begin
            timer <= 0;
        end
    end

    always @(posedge clk) begin
        case(state)
            0: begin
                tx_en_pulse <= 0;
                if (timer == 100_000_000) begin
                    den <= 1;        
                    state <= 1;
                end
            end
            
            1: begin
                den <= 0;
                if (drdy) begin      
                    temp_data_reg <= xadc_data[15:4]; 
                    state <= 2;
                end
            end
            
            2: begin 
                if (!uart_busy) begin
                    tx_data_buffer <= {4'b0, temp_data_reg[11:8]}; 
                    tx_en_pulse <= 1;
                    state <= 3;
                end
            end
            
            3: begin 
                tx_en_pulse <= 0;
                if (uart_busy) begin 
                    state <= 4;
                end
            end
            
            4: begin 
                if (!uart_busy) begin
                    state <= 5;
                end
            end
            
            5: begin 
                tx_data_buffer <= temp_data_reg[7:0];
                tx_en_pulse <= 1;
                state <= 6;
            end
            
            6: begin
                tx_en_pulse <= 0;
                if (uart_busy) begin 
                    state <= 7;
                end
            end

            7: begin
                if (!uart_busy) begin
                    state <= 0; 
                end
            end

            default: state <= 0;
        endcase
    end

    xadc_wiz_0 your_instance_name (
        .daddr_in(7'h00), .dclk_in(clk), .den_in(den),
        .di_in(16'h0), .dwe_in(1'b0), .drdy_out(drdy),
        .do_out(xadc_data), .reset_in(1'b0),
        .vp_in(1'b0), .vn_in(1'b0)
    );

    uart_tx my_uart (
        .clk(clk),
        .tx_data(tx_data_buffer),
        .tx_en(tx_en_pulse),
        .tx_pin(uart_txd),
        .busy(uart_busy)
    );

endmodule