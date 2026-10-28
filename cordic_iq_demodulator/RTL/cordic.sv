`timescale 1ns / 1ps
module top_bpm_system (
    input  logic        clk,       // 100MHz
    input  logic        rst_n
);

    logic signed [31:0] ddc_i_out_32; 
    logic signed [31:0] ddc_q_out_32; 
    logic       			  ddc_valid;  
    logic signed [15:0] cordic_i_in;
    logic signed [15:0] cordic_q_in;
    logic signed [31:0] imul;
    logic signed [31:0] qmul;
    logic 			 [15:0] mag_res;      
    logic 			 [15:0] phase_res;    
    logic               cordic_valid; 
    logic signed [15:0] adc_data;
    logic signed [15:0] lo_high;
    logic signed [15:0] lo_low;
		logic signed [31:0] temp_i;
		logic signed [31:0] temp_q;


    top_ddc u_ddc_inst (
        .clk(clk),
        .rst_n(rst_n),
        .i_out(ddc_i_out_32), 
        .q_out(ddc_q_out_32), 
        .out_valid(ddc_valid), 
        .lo_cos(lo_high),
        .lo_sin(lo_low),
        .adc_data(adc_data),
        .mix_i(imul),
        .mix_q(qmul)
    );



    assign temp_i = ddc_i_out_32>>>2;
    assign temp_q = ddc_q_out_32>>>2;
    assign cordic_i_in = temp_i[31:16]; 
    assign cordic_q_in = temp_q[31:16];

    
    logic [31:0] s_axis_tdata;
    assign s_axis_tdata = {cordic_q_in, cordic_i_in};
    logic [31:0] m_axis_tdata; 


    cordic_0 u_cordic (
        .aclk(clk),
        .s_axis_cartesian_tvalid(ddc_valid), 
        .s_axis_cartesian_tdata(s_axis_tdata),
        .m_axis_dout_tvalid(cordic_valid), 
        .m_axis_dout_tdata(m_axis_tdata)
    );


    assign mag_res   = m_axis_tdata[15:0]; 
    assign phase_res = m_axis_tdata[31:16];

    ila_1 u_ila_final (
        .clk(clk),
        .probe0(mag_res), 
        .probe1(phase_res),
        .probe2(ddc_i_out_32),
        .probe3(ddc_q_out_32),
        .probe4(lo_high),
        .probe5(lo_low),
        .probe6(cordic_i_in),
        .probe7(cordic_q_in),
        .probe8(adc_data),
        .probe9(imul),
        .probe10(qmul),
        .probe11(temp_i),
        .probe12(temp_q)
    );

		
		
endmodule