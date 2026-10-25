// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb 15 11:13:46 2026
// Host        : ranranzine running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18672)
`pragma protect data_block
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
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
