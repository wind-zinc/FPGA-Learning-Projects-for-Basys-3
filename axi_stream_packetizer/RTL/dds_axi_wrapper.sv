`timescale 1ns / 1ps
module dds_axi_wrapper (
    input  logic        clk,
    input  logic        rst_n,
    output logic [31:0] m_axis_tdata,
    output logic        m_axis_tvalid,
    input  logic        m_axis_tready
);
    logic [31:0] dds_raw_data;
    logic        dds_raw_valid;

    dds_compiler_0 dds_inst (
        .aclk               (clk),
        .aresetn            (rst_n),
        .m_axis_data_tvalid (dds_raw_valid),
        .m_axis_data_tready (m_axis_tready), 
        .m_axis_data_tdata  (dds_raw_data)
    );

    assign m_axis_tdata  = dds_raw_data; 
    assign m_axis_tvalid = dds_raw_valid && rst_n;

endmodule