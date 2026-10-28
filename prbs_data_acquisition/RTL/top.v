`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/02/12 23:46:35
// Design Name: 
// Module Name: top
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


module top (
    input wire sys_clk,    // W5: 100MHz
    input wire btn_rst,    
    output wire tx_data    // U16: LED0
);

    wire clk_200mhz;       
    wire locked;           
    wire rst_n;            

    assign rst_n = locked & (~btn_rst); 

    clk_wiz_0 u_clk_wiz (
        .clk_out1(clk_200mhz),     
        .reset(btn_rst),           
        .locked(locked),           
        .clk_in1(sys_clk)          
    );

    prbs_gen u_prbs_gen (
        .clk(clk_200mhz),          
        .rst_n(rst_n),             
        .prbs_out(tx_data)         
    );

    ila_0 u_ila (
        .clk(clk_200mhz), 
        .probe0(tx_data)  
    );

endmodule
