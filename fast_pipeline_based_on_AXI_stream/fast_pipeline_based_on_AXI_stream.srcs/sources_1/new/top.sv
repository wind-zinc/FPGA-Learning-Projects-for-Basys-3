`timescale 1ns / 1ps

module top (
    input  logic sys_clk,      // Basys3 外部晶振 (引脚 W5, 100MHz)
    input  logic sys_rst_n,    // 外部复位按键 (注意: Basys3 默认是高有效还是低有效, 这里假设低有效)
    output logic [31:0] m_packet_tdata,
    output logic        m_packet_tvalid,
    output logic        m_packet_tlast,
    input  logic        m_packet_tready
);

    //--------------------------------------------------------------------------
    // 1. 内部信号定义
    //--------------------------------------------------------------------------
    logic clk_100;           // 采样时钟域
    logic clk_200;           // 处理时钟域
    logic mmcm_locked;       // 时钟稳定标志
    logic global_aresetn;    // 全局复位信号 (低有效)

    // 复位逻辑：只有当时钟稳定且按键释放时，才撤销复位
    assign global_aresetn = sys_rst_n && mmcm_locked;

    // DDS 到 FIFO 的连线 (100MHz 域)
    logic [31:0] dds_to_fifo_tdata;
    logic        dds_to_fifo_tvalid;
    logic        dds_to_fifo_tready;

    // FIFO 到 Packetizer 的连线 (200MHz 域)
    logic [31:0] fifo_to_pkt_tdata;
    logic        fifo_to_pkt_tvalid;
    logic        fifo_to_pkt_tready;
    logic        fifo_to_pkt_tlast; // FIFO 输出的 TLAST (即便不用也建议接上)

    //--------------------------------------------------------------------------
    // 2. 时钟向导 (Clocking Wizard)
    //--------------------------------------------------------------------------
    // 输入 100MHz，输出 100MHz 和 200MHz
    clk_wiz_0 u_clk_gen (
        .clk_in1  (sys_clk),
        .clk_out1 (clk_100),
        .clk_out2 (clk_200),
        .reset    (!sys_rst_n),    // Clocking Wizard 默认高电平复位
        .locked   (mmcm_locked)
    );

    //--------------------------------------------------------------------------
    // 3. DDS 数据源 (采样域: 100MHz)
    //--------------------------------------------------------------------------
    // 产生模拟的 Va, Vb 信号并封装成 AXI-Stream
    dds_axi_wrapper u_dds_src (
        .clk           (clk_100),
        .rst_n         (global_aresetn),
        .m_axis_tdata  (dds_to_fifo_tdata),
        .m_axis_tvalid (dds_to_fifo_tvalid),
        .m_axis_tready (dds_to_fifo_tready)
    );

    //--------------------------------------------------------------------------
    // 4. 异步 AXI-Stream FIFO (跨时钟域: 100M -> 200M)
    //--------------------------------------------------------------------------
    // 注意：在 IP 配置中必须选择 "Independent Clocks"
    fifo_generator_0 u_async_fifo (
        .s_aresetn     (global_aresetn),
        
        // 写端口 (Slave Interface) - 100MHz
        .s_aclk   (clk_100),
        .s_axis_tdata  (dds_to_fifo_tdata),
        .s_axis_tvalid (dds_to_fifo_tvalid),
        .s_axis_tready (dds_to_fifo_tready),
        .s_axis_tlast  (1'b0), // 输入端暂时不产生 TLAST
        
        // 读端口 (Master Interface) - 200MHz
        .m_aclk   (clk_200),
        .m_axis_tdata  (fifo_to_pkt_tdata),
        .m_axis_tvalid (fifo_to_pkt_tvalid),
        .m_axis_tready (fifo_to_pkt_tready),
        .m_axis_tlast  (fifo_to_pkt_tlast)
    );

    //--------------------------------------------------------------------------
    // 5. 数据包组包器 (处理域: 200MHz)
    //--------------------------------------------------------------------------
    // 负责加入包头、序列号、计算校验和
    packetizer u_packetizer_inst (
        .clk           (clk_200),
        .rst_n         (global_aresetn),
        
        // 输入端 (来自 FIFO)
        .s_axis_tdata  (fifo_to_pkt_tdata),
        .s_axis_tvalid (fifo_to_pkt_tvalid),
        .s_axis_tready (fifo_to_pkt_tready),
        
        // 输出端 (最终封装好的包)
        .m_axis_tdata   (m_packet_tdata),
        .m_axis_tvalid  (m_packet_tvalid),
        .m_axis_tlast   (m_packet_tlast),
        .m_axis_tready  (m_packet_tready) // 接受后端反压
    );

endmodule