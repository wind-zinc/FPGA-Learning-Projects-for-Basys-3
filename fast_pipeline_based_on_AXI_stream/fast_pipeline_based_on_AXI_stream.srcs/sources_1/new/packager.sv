`timescale 1ns / 1ps

module packetizer #(
    parameter logic [31:0] PKT_HEADER = 32'h55AA55AA,
    parameter int          PKT_MAX_SAMPLES = 1024
)(
    input  logic        clk,
    input  logic        rst_n,

    // Slave Interface (来自 FIFO)
    input  logic [31:0] s_axis_tdata,
    input  logic        s_axis_tvalid,
    output logic        s_axis_tready,

    // Master Interface (输出封装包)
    output logic [31:0] m_axis_tdata,
    output logic        m_axis_tvalid,
    output logic        m_axis_tlast,
    input  logic        m_axis_tready
);

    // 1. 定义状态机状态 (使用 typedef enum)
    typedef enum logic [2:0] {
        ST_IDLE     = 3'd0,
        ST_HEADER   = 3'd1,
        ST_SEQ      = 3'd2,
        ST_PAYLOAD  = 3'd3,
        ST_CRC      = 3'd4
    } state_t;

    state_t curr_state, next_state;

    // 2. 内部寄存器
    logic [31:0] seq_num;        // 包序列号
    logic [31:0] sample_cnt;     // 样本计数器 (0-1023)
    logic [31:0] checksum;       // 简单的累加校验和

    // 3. 状态转移逻辑 (同步时序)
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) 
            curr_state <= ST_IDLE;
        else 
            curr_state <= next_state;
    end

    // 4. 状态切换组合逻辑
    always_comb begin
        next_state = curr_state;
        case (curr_state)
            ST_IDLE: begin
                // 当 FIFO 有数据且后端准备好时，开始组包
                if (s_axis_tvalid) 
                    next_state = ST_HEADER;
            end

            ST_HEADER: begin
                // 握手成功后进入下一状态
                if (m_axis_tready) 
                    next_state = ST_SEQ;
            end

            ST_SEQ: begin
                if (m_axis_tready) 
                    next_state = ST_PAYLOAD;
            end

            ST_PAYLOAD: begin
                // 只有当有效采样点达到 1024 且最后一个握手成功时
                if (s_axis_tvalid && m_axis_tready && (sample_cnt == PKT_MAX_SAMPLES - 1))
                    next_state = ST_CRC;
            end

            ST_CRC: begin
                if (m_axis_tready)
                    next_state = ST_IDLE; // 发完回到空闲
            end

            default: next_state = ST_IDLE;
        endcase
    end

    // 5. 序列号、计数器与校验和逻辑
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            seq_num    <= 32'd0;
            sample_cnt <= 32'd0;
            checksum   <= 32'd0;
        end else begin
            case (curr_state)
                ST_IDLE: begin
                    sample_cnt <= 32'd0;
                    checksum   <= 32'd0;
                end

                ST_SEQ: begin
                    if (m_axis_tready)
                        seq_num <= seq_num + 1; // 成功进入包体前，序列号+1
                end

                ST_PAYLOAD: begin
                    // 发生一次有效数据传输
                    if (s_axis_tvalid && m_axis_tready) begin
                        sample_cnt <= sample_cnt + 1;
                        checksum   <= checksum + s_axis_tdata;
                    end
                end
                
                ST_CRC: begin
                    if (m_axis_tready) begin
                        sample_cnt <= 32'd0;
                    end
                end
            endcase
        end
    end

    // 6. AXI-Stream 输出信号逻辑
    always_comb begin
        // 默认值
        m_axis_tdata  = 32'd0;
        m_axis_tvalid = 1'b0;
        m_axis_tlast  = 1'b0;
        s_axis_tready = 1'b0; // 默认不接收 FIFO 数据

        case (curr_state)
            ST_HEADER: begin
                m_axis_tdata  = PKT_HEADER;
                m_axis_tvalid = 1'b1;
            end

            ST_SEQ: begin
                m_axis_tdata  = seq_num;
                m_axis_tvalid = 1'b1;
            end

            ST_PAYLOAD: begin
                m_axis_tdata  = s_axis_tdata;
                m_axis_tvalid = s_axis_tvalid; // 只有 FIFO 有数据才有效
                s_axis_tready = m_axis_tready; // 闸门打开，允许 FIFO 数据流过
            end

            ST_CRC: begin
                m_axis_tdata  = checksum;
                m_axis_tvalid = 1'b1;
                m_axis_tlast  = 1'b1;          // 标记这是本包最后一条数据
            end
        endcase
    end

endmodule