`timescale 1ns / 1ps

module packetizer #(
    parameter logic [31:0] PKT_HEADER = 32'h55AA55AA,
    parameter int          PKT_MAX_SAMPLES = 1024
)(
    input  logic        clk,
    input  logic        rst_n,

    input  logic [31:0] s_axis_tdata,
    input  logic        s_axis_tvalid,
    output logic        s_axis_tready,

    output logic [31:0] m_axis_tdata,
    output logic        m_axis_tvalid,
    output logic        m_axis_tlast,
    input  logic        m_axis_tready
);

    typedef enum logic [2:0] {
        ST_IDLE     = 3'd0,
        ST_HEADER   = 3'd1,
        ST_SEQ      = 3'd2,
        ST_PAYLOAD  = 3'd3,
        ST_CRC      = 3'd4
    } state_t;

    state_t curr_state, next_state;

    logic [31:0] seq_num;        
    logic [31:0] sample_cnt;     
    logic [31:0] checksum;       

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) 
            curr_state <= ST_IDLE;
        else 
            curr_state <= next_state;
    end

    always_comb begin
        next_state = curr_state;
        case (curr_state)
            ST_IDLE: begin
                if (s_axis_tvalid) 
                    next_state = ST_HEADER;
            end

            ST_HEADER: begin
                if (m_axis_tready) 
                    next_state = ST_SEQ;
            end

            ST_SEQ: begin
                if (m_axis_tready) 
                    next_state = ST_PAYLOAD;
            end

            ST_PAYLOAD: begin
                if (s_axis_tvalid && m_axis_tready && (sample_cnt == PKT_MAX_SAMPLES - 1))
                    next_state = ST_CRC;
            end

            ST_CRC: begin
                if (m_axis_tready)
                    next_state = ST_IDLE; 
            end

            default: next_state = ST_IDLE;
        endcase
    end

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
                        seq_num <= seq_num + 1; 
                end

                ST_PAYLOAD: begin
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

    always_comb begin
        m_axis_tdata  = 32'd0;
        m_axis_tvalid = 1'b0;
        m_axis_tlast  = 1'b0;
        s_axis_tready = 1'b0; 

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
                m_axis_tvalid = s_axis_tvalid; 
                s_axis_tready = m_axis_tready; 
            end

            ST_CRC: begin
                m_axis_tdata  = checksum;
                m_axis_tvalid = 1'b1;
                m_axis_tlast  = 1'b1;          
            end
        endcase
    end

endmodule