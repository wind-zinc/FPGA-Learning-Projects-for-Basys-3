`timescale 1ns / 1ps

module dds_test (
    input wire sys_clk,  // 100M
    output wire [7:0] led 
);

    wire [7:0] sine_wave; 
    wire        data_valid;
    
    dds_compiler_0 u_dds (
        .aclk(sys_clk),                              
        .m_axis_data_tvalid(data_valid),             
        .m_axis_data_tdata(sine_wave)                
    );

    assign led = sine_wave; 

    ila_0 u_ila (
        .clk(sys_clk),
        .probe0(sine_wave) 
    );

endmodule