`timescale 1ns / 1ps

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