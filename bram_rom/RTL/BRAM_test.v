`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/02/15 11:13:51
// Design Name: 
// Module Name: BRAM_test
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


module bram_test (
    input wire sys_clk,  // 100M
    output wire [15:0] led 
);

    reg [9:0] addr_ptr = 0; 

    always @(posedge sys_clk) begin
        addr_ptr <= addr_ptr + 1; 
    end

    wire [15:0] rom_data;

    blk_mem_gen_0 u_rom (
        .clka(sys_clk),    
        .addra(addr_ptr),  
        .douta(rom_data)   
    );

    ila_0 u_ila (
        .clk(sys_clk),
        .probe0(rom_data), 
        .probe1(addr_ptr)  
    );
    
    assign led = rom_data; 

endmodule