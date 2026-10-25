// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Feb 15 11:13:47 2026
// Host        : ranranzine running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/zine/Desktop/Verilog/BRAM_test/BRAM_test.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18656)
`pragma protect data_block
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
mzeMw3kpoGQqGwcy+5d8AAI=
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
