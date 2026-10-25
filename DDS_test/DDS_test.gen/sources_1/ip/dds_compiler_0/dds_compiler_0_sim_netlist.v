// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb 14 12:39:49 2026
// Host        : ranranzine running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/zine/Desktop/Verilog/DDS_test/DDS_test.gen/sources_1/ip/dds_compiler_0/dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_22,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_22,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module dds_compiler_0
   (aclk,
    s_axis_config_tvalid,
    s_axis_config_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_CONFIG, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_config_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TDATA" *) input [31:0]s_axis_config_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [7:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [31:0]m_axis_phase_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [31:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire [31:0]s_axis_config_tdata;
  wire s_axis_config_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [27:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "28" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "1" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "32" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "1" *) 
  (* C_PHASE_INCREMENT_VALUE = "110011001100110011001100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "32" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dds_compiler_0_dds_compiler_v6_0_22 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[27:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[27:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[27:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata({1'b0,1'b0,1'b0,1'b0,s_axis_config_tdata[27:0]}),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(s_axis_config_tvalid),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
E0mKV8+4AwkG8PxgwOk06sOd1lgwwT/wuuJnsrBnRyZsEYzESncn+AWRZHrM3HbdMh2Ay69OvQSm
uLJpGZDVy2si5uQqrd9EObp4tQdGmaheu88J4G/vG2ZJxSn89vYiPAMSQMI8Wd6q3QuJrS3zYUgR
U/tULCh9JkYets2YrMc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZQF9fxyD4CPn0epP7R8+WI5LY7PK1Ny21+MQp5N0uAhjkCNklAIzHkyhhXH2KH/tppNUTbCkCBtZ
c5JFcsEjBgTtopBu3g/YaPxna0Txk/BsweypcQYxh1Eu1wFH4lKpMfHYffyTfBi4IPapqpxbwyVb
FyJRBeDBIs3NkD7uQDD5VhMf8yuoDwkDbLDowFx9JMGsRiQLgyJLgOZ5f3Nb7qFyEzTn9Wk9vx0k
wwuudQjokzVekL7IYnnymJ75FPrlnte8YCTv5KicatC/jNxRqf+e00cynNjdDHwORo5n1ej6qsIk
7xKD+mV+USkWrLTSMbc/LjziyE85jK+Ig+AgPQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
c2KaUpcXThoyvGFNYADwNb0T80L74yHBeixE++I+6xR8+xCUAAceomhOefRqCVzw2m3q34eYqg7j
2Ntr0n+QiPtvmCcgcQencE5NsIYqtSTbPPqKffMEzRlO45YPxUOP12iX/hs/VRontFTj8GNBFciC
Xzz27CmZk5slxkm4DbE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T8QZ5823+u6EngS61Kh5LzTttBaa3P7GY/VW8znbiSN3UkkUmILRXQWMiecTQn4PCn617jwO/7/+
CsqcOEhVcSn7cs6Yd1id7LMKpMjaixYSUouDRONRk78ZM3ukQb8g2RGixrKAK2X+iHjwoZ0MHqCT
Af0iECw72oJFrxo1f3kVtmLJyDQOxGCy4CChaFGLa/RdJwq1WjxG4DlJ//W3DIp2gwRNyaSMwNMe
kkeqnNfROoAzVe9rXOtNLUmohlQh+nVK4uU0n9sHZhCmYxWRpaMISZJaFJD25xz53XXIDP8uP/vr
I1dnn26GTTAP53ZM8+fxeT86qfiO1nHcbVJQmA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JMi9bTmvkswngGxCaERhN7W8yi7S+Z02ZBANta/UJ8kiJdOSv8h27mnNDH93SV0wiK1j2Hr2OQyr
JHLSN4RDVrY6X/q0n61Gj2L/39xlChjNkZgSd9zkDa4mgh8bNFsJWM5Rmad5P8iU4npXcY2K+UTs
TnliORQ+XRL49lHQRg1ZLNw04/9QDpFfOUylEnmCW54RfRNhFFl9r2R/YEWK1t40tTFQ/iiMsy8e
vKLvNrU1hqOxds3MwZzNZlkpWjMEjnjvBVs2I6+yf2PXES0JeQRRTLmvCl8UZ2QuTw2yQlhEHi3b
wSkdAUqVhRNqKkUW9nJH0YXtllL6jUfxbYQw7w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uxhd35eMMx91Ryz4Aj6PUOEfF12qAY6LwFMjtu32VTHJhFSpyxCbPKoyR6jRysfh/6hxCsoDhLHZ
7fCLkSvnc3ooFfQG8piSxbOHElN2NZNFk9mdF/wP8RoWbMVxA35S9CcDa6709I5WJXTK6n1sndqz
G3pHqb1zFqwBZgFJujjYCWEYMlWSzIkBPs7qb08CuITuri2CAz5xRniSrfid8IUHfuwRsfUIK7rY
Xx6P0bibP5u7ErRSPfXg630bpswvuzoEbpJOmtDrCLTjSNk1653OaimIJdUyZcueHYqaZ0isQp9I
7PmJht6Y99GCfbtUxjfgDm6XXzpPkvpVmYW+kA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B1DXkeBqMRY9QikTVQKbHAkR43QVgCsditObUZV1LWJbgziNul7GJ9nhZ7rWDTFTCuprG2AXf58E
rykPHxjmLhhk12ou+0ZbOd/Fpc5QRcDD1Yf37C+XDlFdUESo8oTN3xDwuZP5A8U3wsf9psajVDCh
t1ByYRNKFVt/yi5V9V3eQ6oC5pamjkF2U16S545c3hV6IfAxOaJgSygXOenFpzYnIHk923tyIyW+
BYQ8oI2CmOod2uG/VpXSR4mwzFN9YxBU1FUZsA51iEJnvADWlUmKJKvahdCb6GzJdBWlJYR4rFq8
GBNi5O37jJ0epTNFbTcecFaq2ndWIW8agkI4wA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
R+2tY/hDqEjZcPsjMtX+UgS9tYTHVWzoQL9I6JwtXwowPBIRUPZDmFbuzXSWruI5Lb2qeaxGFKNR
TSTt7U4D2DduS8Rhx3klI8H9E0WyIlhriy2cAkw/R+ENFcs9+uh5cUR/JwVv1zMYDPcWzCQZob11
7iq5Fpi1nAPWCSi33cgZ4uhYX07lBBFtorDrzryVtp+7bJq9P7umPjMfzEGa9jqVZ3xaRmsoqCf3
slzhLXkMGHlg4m5qqiL/CFn4IM9ATj9o9A9XKwCsSh8EHjZiVj7/RnW58L+MaqsKIBm/+L6X52jE
mgNCDXHxDmJFJPNraw7bZ8ioVxpe0CUGQAWMIOrqClbiawH3EdEki5YKO9/c23JBvRYxdQQYT9w4
e0Jh3oSFB+bVthgHOIooZP3xfzf7aErgyJ+H2iQ4wIaiy31rbaLuNUb4WnbhnIGqkdkaTmumWFFh
HN/ORWLXcjK5YBEVs0kpNLTHcgzZeI9D4a6cw8aIWmHLyKzvYFScRgty

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GfNeQsiPJ3lXVCwO9erBsvLtfXVcRuWWK81MIp4s799DZLIKa/b+TnUViofqFBCTj1+RGMYmM+Jg
pPEYpIeGeXOXtg4hqwXuAA3GwlVwoavKgR4Uz/u6scgxhPtuM2s/7b0wX8RpGrjIsq62Ise1n6EH
T48RH8994bUKNlAgJ2Lp2aPLnsT5XTasz6Kp3Yc2i+ibxV0uhPCn4tEmXqzOHUVJj//dRbr5RSbA
AR1FZCcVMhXiMa2mmnm9m4xoVufJduvDPgbeet1dXOUZP8fDbViqgm3Bf7RJjdq/1VQvNE0LYawg
M1+lewliylQxMOLaVRv8moPfvXss4S1uBltIKQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AL6gyw2pskWQR/vpgcFgHNO/lupdEJTBxDGv8/94yhSCYAqnf2mKzjj6SPv9wZ+oon+CQJq+SSXL
8vb/2l+hj8Cy+X/VcZbpHX1vnzo9l8sGtx2yrPyNmZxsHsbj6peU1I85vU+5jlLA90FX994wLpng
pMKa3VUZfQcXLc6Jeew9gbxVNnJgZ1o76ZT0P3uxN+iMk78gSZV0e/WM3cLA76yKfPbWT9d9nZWy
GqX3i2Q12HqI28ZBE0nUaDLYqAjkXM6bxgtMgciLi4GNAg5vksBsjrKiiZHWdz99zDs8ncGtpHc9
ujIX6WyYTrg2sPhSN01QW1BdVLFLz05kfrLOaQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JUkroQzzKUkiCRc2MymUQYRxfGHSfxmy08bzXk1ZWJUbRiSES39sPDGfKer6k9iA46i5jxxGirdh
L/+AtKIjv7SOyEGU7oO8OCGvEs5hGtlANW3m1C+1JvDqyddFvNabGsyZR93z8bB/sArn4PMZk4my
rhLIOpQTG9OPbq6je7tseFCXuDavUqxd374UEP0SXQsArKjFhfuj/36Nzm7Ms7krI5nQkE2uij4p
NZ8q4z9BjI5+H+JesanxRupjtgVQGKYpMPqkKLnk3Pe6Pl+F4d/6rLclyFbvsSsFJpNQyxO8hkPn
/bMNUiTLJwi94nqgfBZ6HQ2RCW+C70PDiF7Zgg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71440)
`pragma protect data_block
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
ZDzU6XpOMWS1PrcgSidPeP1DVA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
