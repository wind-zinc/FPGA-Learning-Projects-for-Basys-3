`timescale 1ns / 1ps

module tb_top();

    // 信号定义
    logic sys_clk;
    logic sys_rst_n;
    
    logic [31:0] m_packet_tdata;
    logic        m_packet_tvalid;
    logic        m_packet_tlast;
    logic        m_packet_tready;

    // 1. 实例化顶层模块
    top dut (
        .sys_clk         (sys_clk),
        .sys_rst_n       (sys_rst_n),
        .m_packet_tdata  (m_packet_tdata),
        .m_packet_tvalid (m_packet_tvalid),
        .m_packet_tlast  (m_packet_tlast),
        .m_packet_tready (m_packet_tready)
    );

    // 2. 产生 100MHz 系统时钟 (Basys3 晶振)
    initial begin
        sys_clk = 0;
        forever #5 sys_clk = ~sys_clk; // 每 5ns 翻转，周期 10ns
    end

    // 3. 激励过程
    initial begin
        // 初始化信号
        sys_rst_n = 0;
        m_packet_tready = 1; // 模拟后端（如上位机）始终准备好接收

        // 复位 100ns
        #100;
        sys_rst_n = 1;
        
        $display("Simulation Started. Waiting for the first packet...");

        // 持续观察一段时间
        // 我们需要至少 150us 来观察多个完整的数据包
        #150000; 

        $display("Simulation Finished.");
        $finish;
    end

    // 4. (可选) 自动打印包头信息，方便调试
    always @(posedge dut.clk_200) begin
        if (m_packet_tvalid && m_packet_tready) begin
            if (m_packet_tdata == 32'h55AA55AA)
                $display("Time: %t | [Detected Header] 0x55AA55AA", $time);
            if (m_packet_tlast)
                $display("Time: %t | [Detected TLAST] Checksum = %h", $time, m_packet_tdata);
        end
    end

endmodule