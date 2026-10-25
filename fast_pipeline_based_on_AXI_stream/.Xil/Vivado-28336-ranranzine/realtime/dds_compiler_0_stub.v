// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dds_compiler_v6_0_22,Vivado 2022.2" *)
module dds_compiler_0(aclk, aresetn, m_axis_data_tvalid, 
  m_axis_data_tready, m_axis_data_tdata);
  input aclk;
  input aresetn;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [31:0]m_axis_data_tdata;
endmodule
