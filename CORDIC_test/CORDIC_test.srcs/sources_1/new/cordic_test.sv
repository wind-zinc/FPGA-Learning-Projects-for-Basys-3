`timescale 1ns / 1ps

module top_ddc (
    input  logic        clk,       
    input  logic        rst_n,
    output logic        out_valid,  
    output logic signed [31:0] i_out,      
    output logic signed [31:0] q_out,
    output logic signed [15:0] lo_cos,
    output logic signed [15:0] lo_sin,
    output logic signed [15:0] adc_data,
    output logic signed [31:0] mix_i,
    output logic signed [31:0] mix_q   
);

    // 1. 数据生成 (Fake ADC)

    logic [15:0] adc_data; 
    logic        adc_valid;

    // DDS 1: 产生信号源 (Signal Source)
    dds_compiler_0 u_dds_adc (
        .aclk(clk),
        .m_axis_data_tvalid(adc_valid),
        .m_axis_data_tdata(adc_data)    // 16位正弦波
    );

    // 2. 本振生成 (Local Oscillator)

    logic [31:0] lo_data;   
    logic        lo_valid;

    // DDS 2: 产生本振 (LO)
  
    dds_compiler_1 u_dds_lo (
        .aclk(clk),
        .m_axis_data_tvalid(lo_valid),
        .m_axis_data_tdata(lo_data)    
    );
    assign lo_cos = lo_data[15:0];
    assign lo_sin = lo_data[31:16];

    // 3. 混频器 (Mixer) - 乘法
    // 乘法会使位宽翻倍: 16bit * 16bit = 32bit
    logic signed [31:0] mix_i;
    logic signed [31:0] mix_q;
    logic               mix_valid;

    always_ff @(posedge clk) begin
        if (rst_n) begin
            mix_i <= '0;
            mix_q <= '0;
            mix_valid <= 1'b0;
        end else begin
            if (adc_valid && lo_valid) begin
                mix_i <= $signed(adc_data) * lo_cos;// I = Signal * Cos
                mix_q <= $signed(adc_data) * (-lo_sin);// Q = Signal * (-Sin) 
                mix_valid <= 1'b1;
            end else begin
                mix_valid <= 1'b0;
            end
        end
    end

    // 4. CIC 滤波与抽取 (Decimation)
    // CIC I 路
    cic_compiler_0 u_cic_i (
        .aclk(clk),
        .s_axis_data_tdata(mix_i),     
        .s_axis_data_tvalid(mix_valid),
        .m_axis_data_tdata(i_out),     
        .m_axis_data_tvalid(out_valid) 
    );

    // CIC Q 路
    cic_compiler_0 u_cic_q (
        .aclk(clk),
        .s_axis_data_tdata(mix_q),
        .s_axis_data_tvalid(mix_valid),
        .m_axis_data_tdata(q_out),
        .m_axis_data_tvalid()          // 两个 CIC 是同步的，用一个 valid 就行
    );

endmodule