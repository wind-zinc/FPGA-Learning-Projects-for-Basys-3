// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Feb 14 12:39:48 2026
// Host        : ranranzine running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds_compiler_0_sim_netlist.v
// Design      : dds_compiler_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds_compiler_0,dds_compiler_v6_0_22,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_22,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dds_compiler_v6_0_22 U0
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
cMFk7UM3Wzl04iv6tjI0Z9OUu6LwtDan+VURS+/wvWi2IZ4NzJNCyZZLOcPZ3PGQZbMv2waS/tyI
tThAYeHOtsGDQvxmaCNynt+TTH/+q5Dk/zaBOrbemdurlu4j8r/w0+UPLjZx9/RTseun8T8gSbgZ
xlZytOcX56TLiPE+UQ6ILnOvhiXb15sB/t/eKAOQG0a+f3N40ftX74QNCFrzEaCiIBkN8Rccu3eT
iq4nwe8DDfx5wcx+l9326TFfwoFDmVu6aZjqQWhJTCq+j+D93Zb8YMyQeq6nEkvvrLsJtlXDD2go
OaNhOYxgMsGKLUgbJ64un+XsqnHntB+FsakO+w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Voer2KHtFKcU/jxvPoveVCcfyH/OoA/2Bhbp22OjkgOqjJKctxlcX+g1SXNWDKIeOgMYQ8L7fpXs
qeNkLYxMPw2jylH6f9JbzP65QTWf+AkYcve0hgSMRSzQNVlUhSusGPEE8XFGPakhZsIf7Kte91/a
IPklDXs89Uc0+E3RX7n8/JLBIi1DR7ePw2DsqKK5Mcc8ulDT1wi4mcEayfua7n/Xm3ZR+BZaM//u
u0R7g6BYtwZ/7q7GyRoxKz9FjPKHAtxLSnYBgBs5sLbRzHioB2AwuirW/KtOdphzX5UFVgdRGyJD
2yo55/5CNaQpbcI1K6S6JxT2V5pfv+5DA5Gr1A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71728)
`pragma protect data_block
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
Uy/XfKgf3Y9amnD0WsKFZw9m4qMpuw==
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
