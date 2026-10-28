`timescale 1ns / 1ps

module top (
    input  logic sys_clk,      
    input  logic sys_rst_n,    
    output logic [31:0] m_packet_tdata,
    output logic        m_packet_tvalid,
    output logic        m_packet_tlast,
    input  logic        m_packet_tready
);

    logic clk_100;           
    logic clk_200;           
    logic mmcm_locked;       
    logic global_aresetn;    

    assign global_aresetn = sys_rst_n && mmcm_locked;

    logic [31:0] dds_to_fifo_tdata;
    logic        dds_to_fifo_tvalid;
    logic        dds_to_fifo_tready;

    logic [31:0] fifo_to_pkt_tdata;
    logic        fifo_to_pkt_tvalid;
    logic        fifo_to_pkt_tready;
    logic        fifo_to_pkt_tlast; 

    clk_wiz_0 u_clk_gen (
        .clk_in1  (sys_clk),
        .clk_out1 (clk_100),
        .clk_out2 (clk_200),
        .reset    (!sys_rst_n),    
        .locked   (mmcm_locked)
    );

    dds_axi_wrapper u_dds_src (
        .clk           (clk_100),
        .rst_n         (global_aresetn),
        .m_axis_tdata  (dds_to_fifo_tdata),
        .m_axis_tvalid (dds_to_fifo_tvalid),
        .m_axis_tready (dds_to_fifo_tready)
    );

    // Configure the FIFO IP for independent clocks.
    fifo_generator_0 u_async_fifo (
        .s_aresetn     (global_aresetn),
        
        .s_aclk   (clk_100),
        .s_axis_tdata  (dds_to_fifo_tdata),
        .s_axis_tvalid (dds_to_fifo_tvalid),
        .s_axis_tready (dds_to_fifo_tready),
        .s_axis_tlast  (1'b0), 
        
        .m_aclk   (clk_200),
        .m_axis_tdata  (fifo_to_pkt_tdata),
        .m_axis_tvalid (fifo_to_pkt_tvalid),
        .m_axis_tready (fifo_to_pkt_tready),
        .m_axis_tlast  (fifo_to_pkt_tlast)
    );

    packetizer u_packetizer_inst (
        .clk           (clk_200),
        .rst_n         (global_aresetn),
        
        .s_axis_tdata  (fifo_to_pkt_tdata),
        .s_axis_tvalid (fifo_to_pkt_tvalid),
        .s_axis_tready (fifo_to_pkt_tready),
        
        .m_axis_tdata   (m_packet_tdata),
        .m_axis_tvalid  (m_packet_tvalid),
        .m_axis_tlast   (m_packet_tlast),
        .m_axis_tready  (m_packet_tready) 
    );

endmodule