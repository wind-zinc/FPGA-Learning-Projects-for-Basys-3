`timescale 1ns / 1ps  // 时间单位 1ns，精度 1ps

module tb_dds_axi_wrapper();

    // 1. 信号定义
    logic        clk;
    logic        rst_n;
    logic [31:0] m_axis_tdata;
    logic        m_axis_tvalid;
    logic        m_axis_tready;

    // 为了方便观察，把 Va 和 Vb 拆出来放在仿真窗口里
    logic signed [15:0] wave_va;
    logic signed [15:0] wave_vb;

    assign wave_va = $signed(m_axis_tdata[31:16]);
    assign wave_vb = $signed(m_axis_tdata[15:0]);

    // 2. 实例化被测设计 (DUT)
    dds_axi_wrapper dut (
        .clk           (clk),
        .rst_n         (rst_n),
        .m_axis_tdata  (m_axis_tdata),
        .m_axis_tvalid (m_axis_tvalid),
        .m_axis_tready (m_axis_tready)
    );

    // 3. 时钟产生 (200MHz -> 周期为 5ns)
    initial begin
        clk = 0;
        forever #2.5 clk = ~clk; // 每 2.5ns 翻转一次
    end

    // 4. 激励逻辑 (Stimulus)
    initial begin
        // --- 初始化信号 ---
        rst_n = 0;
        m_axis_tready = 0;

        // --- 复位序列 ---
        #100;           // 等待 100ns

        rst_n = 1;      // 撤销复位
        
        #5;
        @(posedge clk)
        m_axis_tready = 1; 
        
        #100; // 让正弦波跑一段时间
				@(posedge clk)
        m_axis_tready = 0;
        
        #25; // 观察 DDS 是否卡住不动
				@(posedge clk)
        m_axis_tready = 1;

        #200; // 再跑一段时间看波形衔接情况

        $finish;
        
    end

endmodule
