// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Feb 18 14:27:53 2026
// Host        : ranranzine running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/zine/Desktop/Verilog/CORDIC_test/CORDIC_test.gen/sources_1/ip/ila_1/ila_1_stub.v
// Design      : ila_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2022.2" *)
module ila_1(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[15:0],probe1[15:0],probe2[31:0],probe3[31:0],probe4[15:0],probe5[15:0],probe6[15:0],probe7[15:0],probe8[15:0],probe9[31:0],probe10[31:0],probe11[31:0],probe12[31:0]" */;
  input clk;
  input [15:0]probe0;
  input [15:0]probe1;
  input [31:0]probe2;
  input [31:0]probe3;
  input [15:0]probe4;
  input [15:0]probe5;
  input [15:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [31:0]probe9;
  input [31:0]probe10;
  input [31:0]probe11;
  input [31:0]probe12;
endmodule
