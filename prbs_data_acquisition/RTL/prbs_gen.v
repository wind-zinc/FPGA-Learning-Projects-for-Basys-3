`timescale 1ns / 1ps

module prbs_gen (
    input wire clk,      
    input wire rst_n,    
    output wire prbs_out 
);

    reg [6:0] lfsr_reg;

    wire feedback;
    assign feedback = lfsr_reg[6] ^ lfsr_reg[5]; 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // A nonzero seed is required; an all-zero LFSR state cannot recover.
            lfsr_reg <= 7'b111_1111; 
        end else begin
            lfsr_reg <= {lfsr_reg[5:0], feedback};
        end
    end

    assign prbs_out = lfsr_reg[6];

endmodule
