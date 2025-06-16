// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 17 00:13:06 2025
// Host        : LAPTOP-SK91ADAB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/pkowo/Desktop/Studia/SystemyDedykowane/Projekt/DDS.srcs/sources_1/bd/DDS_top/ip/DDS_top_DDS_core_ip_0_1/DDS_top_DDS_core_ip_0_1_sim_netlist.v
// Design      : DDS_top_DDS_core_ip_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DDS_top_DDS_core_ip_0_1,DDS_core_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "DDS_core_ip_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module DDS_top_DDS_core_ip_0_1
   (ref_CLK,
    RESET,
    Sample,
    LS_CLK,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ref_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ref_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN DDS_top_ref_CLK, INSERT_VIP 0" *) input ref_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input RESET;
  output [7:0]Sample;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 LS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME LS_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN DDS_top_DDS_core_ip_0_1_LS_CLK, INSERT_VIP 0" *) output LS_CLK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN DDS_top_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN DDS_top_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire LS_CLK;
  wire RESET;
  wire [7:0]Sample;
  wire ref_CLK;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  DDS_top_DDS_core_ip_0_1_DDS_core_ip_v1_0 inst
       (.LS_CLK(LS_CLK),
        .RESET(RESET),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .Sample(Sample),
        .ref_CLK(ref_CLK),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "BIST_logic" *) 
module DDS_top_DDS_core_ip_0_1_BIST_logic
   (slv_status_wire1,
    data_BIST,
    \prbs_reg[63]_0 ,
    int_CE,
    CLK,
    HS_CLK,
    nHS_CLK,
    data_FB,
    RESET_SER,
    correct_reg_0,
    Q,
    correct_reg_1,
    DoutB1_out,
    lock,
    E);
  output slv_status_wire1;
  output [63:0]data_BIST;
  input \prbs_reg[63]_0 ;
  input int_CE;
  input CLK;
  input HS_CLK;
  input nHS_CLK;
  input [7:0]data_FB;
  input RESET_SER;
  input correct_reg_0;
  input [2:0]Q;
  input correct_reg_1;
  input [63:0]DoutB1_out;
  input lock;
  input [0:0]E;

  wire CLK;
  wire [63:0]DES_out;
  wire [23:0]DES_out_int;
  wire Del_n_0;
  wire Del_n_1;
  wire Del_n_10;
  wire Del_n_11;
  wire Del_n_12;
  wire Del_n_13;
  wire Del_n_14;
  wire Del_n_15;
  wire Del_n_16;
  wire Del_n_17;
  wire Del_n_18;
  wire Del_n_19;
  wire Del_n_2;
  wire Del_n_20;
  wire Del_n_21;
  wire Del_n_22;
  wire Del_n_23;
  wire Del_n_24;
  wire Del_n_25;
  wire Del_n_26;
  wire Del_n_27;
  wire Del_n_28;
  wire Del_n_29;
  wire Del_n_3;
  wire Del_n_30;
  wire Del_n_31;
  wire Del_n_32;
  wire Del_n_33;
  wire Del_n_34;
  wire Del_n_35;
  wire Del_n_36;
  wire Del_n_37;
  wire Del_n_38;
  wire Del_n_39;
  wire Del_n_4;
  wire Del_n_40;
  wire Del_n_41;
  wire Del_n_42;
  wire Del_n_43;
  wire Del_n_44;
  wire Del_n_45;
  wire Del_n_46;
  wire Del_n_47;
  wire Del_n_48;
  wire Del_n_49;
  wire Del_n_5;
  wire Del_n_50;
  wire Del_n_51;
  wire Del_n_52;
  wire Del_n_53;
  wire Del_n_54;
  wire Del_n_55;
  wire Del_n_56;
  wire Del_n_57;
  wire Del_n_58;
  wire Del_n_59;
  wire Del_n_6;
  wire Del_n_60;
  wire Del_n_61;
  wire Del_n_62;
  wire Del_n_63;
  wire Del_n_64;
  wire Del_n_7;
  wire Del_n_8;
  wire Del_n_9;
  wire Din_del1_reg_r_n_0;
  wire \Din_del2_reg[0]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[10]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[11]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[12]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[13]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[14]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[15]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[16]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[17]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[18]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[19]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[1]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[20]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[21]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[22]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[23]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[24]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[25]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[26]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[27]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[28]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[29]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[2]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[30]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[31]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[32]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[33]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[34]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[35]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[36]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[37]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[38]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[39]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[3]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[40]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[41]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[42]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[43]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[44]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[45]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[46]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[47]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[48]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[49]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[4]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[50]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[51]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[52]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[53]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[54]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[55]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[56]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[57]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[58]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[59]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[5]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[60]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[61]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[62]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[63]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[6]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[7]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[8]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire \Din_del2_reg[9]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ;
  wire Din_del2_reg_r_n_0;
  wire \Din_del3_reg[0]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[10]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[11]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[12]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[13]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[14]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[15]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[16]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[17]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[18]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[19]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[1]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[20]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[21]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[22]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[23]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[24]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[25]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[26]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[27]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[28]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[29]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[2]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[30]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[31]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[32]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[33]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[34]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[35]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[36]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[37]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[38]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[39]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[3]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[40]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[41]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[42]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[43]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[44]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[45]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[46]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[47]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[48]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[49]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[4]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[50]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[51]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[52]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[53]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[54]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[55]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[56]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[57]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[58]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[59]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[5]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[60]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[61]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[62]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[6]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[7]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[8]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire \Din_del3_reg[9]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ;
  wire Din_del3_reg_gate__0_n_0;
  wire Din_del3_reg_gate__10_n_0;
  wire Din_del3_reg_gate__11_n_0;
  wire Din_del3_reg_gate__12_n_0;
  wire Din_del3_reg_gate__13_n_0;
  wire Din_del3_reg_gate__14_n_0;
  wire Din_del3_reg_gate__15_n_0;
  wire Din_del3_reg_gate__16_n_0;
  wire Din_del3_reg_gate__17_n_0;
  wire Din_del3_reg_gate__18_n_0;
  wire Din_del3_reg_gate__19_n_0;
  wire Din_del3_reg_gate__1_n_0;
  wire Din_del3_reg_gate__20_n_0;
  wire Din_del3_reg_gate__21_n_0;
  wire Din_del3_reg_gate__22_n_0;
  wire Din_del3_reg_gate__23_n_0;
  wire Din_del3_reg_gate__24_n_0;
  wire Din_del3_reg_gate__25_n_0;
  wire Din_del3_reg_gate__26_n_0;
  wire Din_del3_reg_gate__27_n_0;
  wire Din_del3_reg_gate__28_n_0;
  wire Din_del3_reg_gate__29_n_0;
  wire Din_del3_reg_gate__2_n_0;
  wire Din_del3_reg_gate__30_n_0;
  wire Din_del3_reg_gate__31_n_0;
  wire Din_del3_reg_gate__32_n_0;
  wire Din_del3_reg_gate__33_n_0;
  wire Din_del3_reg_gate__34_n_0;
  wire Din_del3_reg_gate__35_n_0;
  wire Din_del3_reg_gate__36_n_0;
  wire Din_del3_reg_gate__37_n_0;
  wire Din_del3_reg_gate__38_n_0;
  wire Din_del3_reg_gate__39_n_0;
  wire Din_del3_reg_gate__3_n_0;
  wire Din_del3_reg_gate__40_n_0;
  wire Din_del3_reg_gate__41_n_0;
  wire Din_del3_reg_gate__42_n_0;
  wire Din_del3_reg_gate__43_n_0;
  wire Din_del3_reg_gate__44_n_0;
  wire Din_del3_reg_gate__45_n_0;
  wire Din_del3_reg_gate__46_n_0;
  wire Din_del3_reg_gate__47_n_0;
  wire Din_del3_reg_gate__48_n_0;
  wire Din_del3_reg_gate__49_n_0;
  wire Din_del3_reg_gate__4_n_0;
  wire Din_del3_reg_gate__50_n_0;
  wire Din_del3_reg_gate__51_n_0;
  wire Din_del3_reg_gate__52_n_0;
  wire Din_del3_reg_gate__53_n_0;
  wire Din_del3_reg_gate__54_n_0;
  wire Din_del3_reg_gate__55_n_0;
  wire Din_del3_reg_gate__56_n_0;
  wire Din_del3_reg_gate__57_n_0;
  wire Din_del3_reg_gate__58_n_0;
  wire Din_del3_reg_gate__59_n_0;
  wire Din_del3_reg_gate__5_n_0;
  wire Din_del3_reg_gate__60_n_0;
  wire Din_del3_reg_gate__61_n_0;
  wire Din_del3_reg_gate__62_n_0;
  wire Din_del3_reg_gate__6_n_0;
  wire Din_del3_reg_gate__7_n_0;
  wire Din_del3_reg_gate__8_n_0;
  wire Din_del3_reg_gate__9_n_0;
  wire Din_del3_reg_gate_n_0;
  wire Din_del3_reg_r_n_0;
  wire [63:0]Din_del4;
  wire [63:0]DoutB1_out;
  wire [0:0]E;
  wire HS_CLK;
  wire [2:0]Q;
  wire RESET_SER;
  wire correct_i_10_n_0;
  wire correct_i_11_n_0;
  wire correct_i_13_n_0;
  wire correct_i_14_n_0;
  wire correct_i_15_n_0;
  wire correct_i_16_n_0;
  wire correct_i_18_n_0;
  wire correct_i_19_n_0;
  wire correct_i_20_n_0;
  wire correct_i_21_n_0;
  wire correct_i_23_n_0;
  wire correct_i_24_n_0;
  wire correct_i_25_n_0;
  wire correct_i_26_n_0;
  wire correct_i_27_n_0;
  wire correct_i_28_n_0;
  wire correct_i_29_n_0;
  wire correct_i_30_n_0;
  wire correct_i_6_n_0;
  wire correct_i_8_n_0;
  wire correct_i_9_n_0;
  wire correct_int;
  wire correct_reg_0;
  wire correct_reg_1;
  wire correct_reg_i_12_n_0;
  wire correct_reg_i_12_n_1;
  wire correct_reg_i_12_n_2;
  wire correct_reg_i_12_n_3;
  wire correct_reg_i_17_n_0;
  wire correct_reg_i_17_n_1;
  wire correct_reg_i_17_n_2;
  wire correct_reg_i_17_n_3;
  wire correct_reg_i_22_n_0;
  wire correct_reg_i_22_n_1;
  wire correct_reg_i_22_n_2;
  wire correct_reg_i_22_n_3;
  wire correct_reg_i_3_n_3;
  wire correct_reg_i_4_n_0;
  wire correct_reg_i_4_n_1;
  wire correct_reg_i_4_n_2;
  wire correct_reg_i_4_n_3;
  wire correct_reg_i_7_n_0;
  wire correct_reg_i_7_n_1;
  wire correct_reg_i_7_n_2;
  wire correct_reg_i_7_n_3;
  wire [63:0]data_BIST;
  wire [7:0]data_FB;
  wire \genblk1[7].DES_i_n_7 ;
  wire [7:0]in;
  wire int_CE;
  wire lock;
  wire nHS_CLK;
  wire [56:0]p_15_out;
  wire prbs;
  wire \prbs_reg[63]_0 ;
  wire \prbs_reg_n_0_[0] ;
  wire \prbs_reg_n_0_[10] ;
  wire \prbs_reg_n_0_[11] ;
  wire \prbs_reg_n_0_[12] ;
  wire \prbs_reg_n_0_[13] ;
  wire \prbs_reg_n_0_[14] ;
  wire \prbs_reg_n_0_[15] ;
  wire \prbs_reg_n_0_[16] ;
  wire \prbs_reg_n_0_[17] ;
  wire \prbs_reg_n_0_[18] ;
  wire \prbs_reg_n_0_[19] ;
  wire \prbs_reg_n_0_[1] ;
  wire \prbs_reg_n_0_[20] ;
  wire \prbs_reg_n_0_[21] ;
  wire \prbs_reg_n_0_[22] ;
  wire \prbs_reg_n_0_[23] ;
  wire \prbs_reg_n_0_[24] ;
  wire \prbs_reg_n_0_[25] ;
  wire \prbs_reg_n_0_[26] ;
  wire \prbs_reg_n_0_[27] ;
  wire \prbs_reg_n_0_[28] ;
  wire \prbs_reg_n_0_[29] ;
  wire \prbs_reg_n_0_[2] ;
  wire \prbs_reg_n_0_[30] ;
  wire \prbs_reg_n_0_[31] ;
  wire \prbs_reg_n_0_[32] ;
  wire \prbs_reg_n_0_[33] ;
  wire \prbs_reg_n_0_[34] ;
  wire \prbs_reg_n_0_[35] ;
  wire \prbs_reg_n_0_[36] ;
  wire \prbs_reg_n_0_[37] ;
  wire \prbs_reg_n_0_[38] ;
  wire \prbs_reg_n_0_[39] ;
  wire \prbs_reg_n_0_[3] ;
  wire \prbs_reg_n_0_[40] ;
  wire \prbs_reg_n_0_[41] ;
  wire \prbs_reg_n_0_[42] ;
  wire \prbs_reg_n_0_[43] ;
  wire \prbs_reg_n_0_[44] ;
  wire \prbs_reg_n_0_[45] ;
  wire \prbs_reg_n_0_[46] ;
  wire \prbs_reg_n_0_[47] ;
  wire \prbs_reg_n_0_[48] ;
  wire \prbs_reg_n_0_[49] ;
  wire \prbs_reg_n_0_[4] ;
  wire \prbs_reg_n_0_[50] ;
  wire \prbs_reg_n_0_[51] ;
  wire \prbs_reg_n_0_[52] ;
  wire \prbs_reg_n_0_[53] ;
  wire \prbs_reg_n_0_[54] ;
  wire \prbs_reg_n_0_[55] ;
  wire \prbs_reg_n_0_[5] ;
  wire \prbs_reg_n_0_[6] ;
  wire \prbs_reg_n_0_[7] ;
  wire \prbs_reg_n_0_[8] ;
  wire \prbs_reg_n_0_[9] ;
  wire slv_status_wire1;
  wire [3:0]NLW_correct_reg_i_12_O_UNCONNECTED;
  wire [3:0]NLW_correct_reg_i_17_O_UNCONNECTED;
  wire [3:0]NLW_correct_reg_i_22_O_UNCONNECTED;
  wire [3:2]NLW_correct_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_correct_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_correct_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_correct_reg_i_7_O_UNCONNECTED;

  FDRE \DES_out_del_reg[40] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[40]),
        .Q(DES_out_int[0]),
        .R(1'b0));
  FDRE \DES_out_del_reg[41] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[41]),
        .Q(DES_out_int[1]),
        .R(1'b0));
  FDRE \DES_out_del_reg[42] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[42]),
        .Q(DES_out_int[2]),
        .R(1'b0));
  FDRE \DES_out_del_reg[43] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[43]),
        .Q(DES_out_int[3]),
        .R(1'b0));
  FDRE \DES_out_del_reg[44] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[44]),
        .Q(DES_out_int[4]),
        .R(1'b0));
  FDRE \DES_out_del_reg[45] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[45]),
        .Q(DES_out_int[5]),
        .R(1'b0));
  FDRE \DES_out_del_reg[46] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[46]),
        .Q(DES_out_int[6]),
        .R(1'b0));
  FDRE \DES_out_del_reg[47] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[47]),
        .Q(DES_out_int[7]),
        .R(1'b0));
  FDRE \DES_out_del_reg[48] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[48]),
        .Q(DES_out_int[8]),
        .R(1'b0));
  FDRE \DES_out_del_reg[49] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[49]),
        .Q(DES_out_int[9]),
        .R(1'b0));
  FDRE \DES_out_del_reg[50] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[50]),
        .Q(DES_out_int[10]),
        .R(1'b0));
  FDRE \DES_out_del_reg[51] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[51]),
        .Q(DES_out_int[11]),
        .R(1'b0));
  FDRE \DES_out_del_reg[52] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[52]),
        .Q(DES_out_int[12]),
        .R(1'b0));
  FDRE \DES_out_del_reg[53] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[53]),
        .Q(DES_out_int[13]),
        .R(1'b0));
  FDRE \DES_out_del_reg[54] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[54]),
        .Q(DES_out_int[14]),
        .R(1'b0));
  FDRE \DES_out_del_reg[55] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[55]),
        .Q(DES_out_int[15]),
        .R(1'b0));
  FDRE \DES_out_del_reg[56] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[56]),
        .Q(DES_out_int[16]),
        .R(1'b0));
  FDRE \DES_out_del_reg[57] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[57]),
        .Q(DES_out_int[17]),
        .R(1'b0));
  FDRE \DES_out_del_reg[58] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[58]),
        .Q(DES_out_int[18]),
        .R(1'b0));
  FDRE \DES_out_del_reg[59] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[59]),
        .Q(DES_out_int[19]),
        .R(1'b0));
  FDRE \DES_out_del_reg[60] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[60]),
        .Q(DES_out_int[20]),
        .R(1'b0));
  FDRE \DES_out_del_reg[61] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[61]),
        .Q(DES_out_int[21]),
        .R(1'b0));
  FDRE \DES_out_del_reg[62] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[62]),
        .Q(DES_out_int[22]),
        .R(1'b0));
  FDRE \DES_out_del_reg[63] 
       (.C(CLK),
        .CE(E),
        .D(DES_out[63]),
        .Q(DES_out_int[23]),
        .R(1'b0));
  DDS_top_DDS_core_ip_0_1_Delay Del
       (.CLK(CLK),
        .\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r ({in,\prbs_reg_n_0_[55] ,\prbs_reg_n_0_[54] ,\prbs_reg_n_0_[53] ,\prbs_reg_n_0_[52] ,\prbs_reg_n_0_[51] ,\prbs_reg_n_0_[50] ,\prbs_reg_n_0_[49] ,\prbs_reg_n_0_[48] ,\prbs_reg_n_0_[47] ,\prbs_reg_n_0_[46] ,\prbs_reg_n_0_[45] ,\prbs_reg_n_0_[44] ,\prbs_reg_n_0_[43] ,\prbs_reg_n_0_[42] ,\prbs_reg_n_0_[41] ,\prbs_reg_n_0_[40] ,\prbs_reg_n_0_[39] ,\prbs_reg_n_0_[38] ,\prbs_reg_n_0_[37] ,\prbs_reg_n_0_[36] ,\prbs_reg_n_0_[35] ,\prbs_reg_n_0_[34] ,\prbs_reg_n_0_[33] ,\prbs_reg_n_0_[32] ,\prbs_reg_n_0_[31] ,\prbs_reg_n_0_[30] ,\prbs_reg_n_0_[29] ,\prbs_reg_n_0_[28] ,\prbs_reg_n_0_[27] ,\prbs_reg_n_0_[26] ,\prbs_reg_n_0_[25] ,\prbs_reg_n_0_[24] ,\prbs_reg_n_0_[23] ,\prbs_reg_n_0_[22] ,\prbs_reg_n_0_[21] ,\prbs_reg_n_0_[20] ,\prbs_reg_n_0_[19] ,\prbs_reg_n_0_[18] ,\prbs_reg_n_0_[17] ,\prbs_reg_n_0_[16] ,\prbs_reg_n_0_[15] ,\prbs_reg_n_0_[14] ,\prbs_reg_n_0_[13] ,\prbs_reg_n_0_[12] ,\prbs_reg_n_0_[11] ,\prbs_reg_n_0_[10] ,\prbs_reg_n_0_[9] ,\prbs_reg_n_0_[8] ,\prbs_reg_n_0_[7] ,\prbs_reg_n_0_[6] ,\prbs_reg_n_0_[5] ,\prbs_reg_n_0_[4] ,\prbs_reg_n_0_[3] ,\prbs_reg_n_0_[2] ,\prbs_reg_n_0_[1] ,\prbs_reg_n_0_[0] }),
        .DoutB1_out(DoutB1_out),
        .E(prbs),
        .Q(Q),
        .correct_int(correct_int),
        .correct_reg(correct_reg_0),
        .correct_reg_0(correct_reg_1),
        .data_BIST(data_BIST),
        .eeprom_reg_0(Del_n_1),
        .eeprom_reg_0_0(Del_n_2),
        .eeprom_reg_0_1(Del_n_3),
        .eeprom_reg_0_10(Del_n_12),
        .eeprom_reg_0_11(Del_n_13),
        .eeprom_reg_0_12(Del_n_14),
        .eeprom_reg_0_13(Del_n_15),
        .eeprom_reg_0_14(Del_n_16),
        .eeprom_reg_0_15(Del_n_17),
        .eeprom_reg_0_16(Del_n_18),
        .eeprom_reg_0_17(Del_n_19),
        .eeprom_reg_0_18(Del_n_20),
        .eeprom_reg_0_19(Del_n_21),
        .eeprom_reg_0_2(Del_n_4),
        .eeprom_reg_0_20(Del_n_22),
        .eeprom_reg_0_21(Del_n_23),
        .eeprom_reg_0_22(Del_n_24),
        .eeprom_reg_0_23(Del_n_25),
        .eeprom_reg_0_24(Del_n_26),
        .eeprom_reg_0_25(Del_n_27),
        .eeprom_reg_0_26(Del_n_28),
        .eeprom_reg_0_27(Del_n_29),
        .eeprom_reg_0_28(Del_n_30),
        .eeprom_reg_0_29(Del_n_31),
        .eeprom_reg_0_3(Del_n_5),
        .eeprom_reg_0_30(Del_n_32),
        .eeprom_reg_0_31(Del_n_33),
        .eeprom_reg_0_32(Del_n_34),
        .eeprom_reg_0_33(Del_n_35),
        .eeprom_reg_0_34(Del_n_36),
        .eeprom_reg_0_4(Del_n_6),
        .eeprom_reg_0_5(Del_n_7),
        .eeprom_reg_0_6(Del_n_8),
        .eeprom_reg_0_7(Del_n_9),
        .eeprom_reg_0_8(Del_n_10),
        .eeprom_reg_0_9(Del_n_11),
        .eeprom_reg_1(Del_n_37),
        .eeprom_reg_1_0(Del_n_38),
        .eeprom_reg_1_1(Del_n_39),
        .eeprom_reg_1_10(Del_n_48),
        .eeprom_reg_1_11(Del_n_49),
        .eeprom_reg_1_12(Del_n_50),
        .eeprom_reg_1_13(Del_n_51),
        .eeprom_reg_1_14(Del_n_52),
        .eeprom_reg_1_15(Del_n_53),
        .eeprom_reg_1_16(Del_n_54),
        .eeprom_reg_1_17(Del_n_55),
        .eeprom_reg_1_18(Del_n_56),
        .eeprom_reg_1_19(Del_n_57),
        .eeprom_reg_1_2(Del_n_40),
        .eeprom_reg_1_20(Del_n_58),
        .eeprom_reg_1_21(Del_n_59),
        .eeprom_reg_1_22(Del_n_60),
        .eeprom_reg_1_23(Del_n_61),
        .eeprom_reg_1_24(Del_n_62),
        .eeprom_reg_1_25(Del_n_63),
        .eeprom_reg_1_26(Del_n_64),
        .eeprom_reg_1_3(Del_n_41),
        .eeprom_reg_1_4(Del_n_42),
        .eeprom_reg_1_5(Del_n_43),
        .eeprom_reg_1_6(Del_n_44),
        .eeprom_reg_1_7(Del_n_45),
        .eeprom_reg_1_8(Del_n_46),
        .eeprom_reg_1_9(Del_n_47),
        .lock(lock),
        .\slv_reg0_reg[2] (Del_n_0),
        .slv_status_wire1(slv_status_wire1));
  FDRE Din_del1_reg_r
       (.C(CLK),
        .CE(int_CE),
        .D(1'b1),
        .Q(Din_del1_reg_r_n_0),
        .R(\prbs_reg[63]_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[0]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[0]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_1),
        .Q(\Din_del2_reg[0]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[10]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[10]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_11),
        .Q(\Din_del2_reg[10]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[11]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[11]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_12),
        .Q(\Din_del2_reg[11]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[12]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[12]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_13),
        .Q(\Din_del2_reg[12]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[13]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[13]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_14),
        .Q(\Din_del2_reg[13]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[14]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[14]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_15),
        .Q(\Din_del2_reg[14]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[15]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[15]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_16),
        .Q(\Din_del2_reg[15]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[16]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[16]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_17),
        .Q(\Din_del2_reg[16]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[17]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[17]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_18),
        .Q(\Din_del2_reg[17]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[18]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[18]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_19),
        .Q(\Din_del2_reg[18]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[19]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[19]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_20),
        .Q(\Din_del2_reg[19]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[1]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[1]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_2),
        .Q(\Din_del2_reg[1]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[20]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[20]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_21),
        .Q(\Din_del2_reg[20]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[21]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[21]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_22),
        .Q(\Din_del2_reg[21]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[22]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[22]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_23),
        .Q(\Din_del2_reg[22]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[23]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[23]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_24),
        .Q(\Din_del2_reg[23]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[24]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[24]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_25),
        .Q(\Din_del2_reg[24]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[25]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[25]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_26),
        .Q(\Din_del2_reg[25]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[26]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[26]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_27),
        .Q(\Din_del2_reg[26]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[27]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[27]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_28),
        .Q(\Din_del2_reg[27]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[28]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[28]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_29),
        .Q(\Din_del2_reg[28]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[29]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[29]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_30),
        .Q(\Din_del2_reg[29]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[2]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[2]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_3),
        .Q(\Din_del2_reg[2]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[30]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[30]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_31),
        .Q(\Din_del2_reg[30]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[31]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[31]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_32),
        .Q(\Din_del2_reg[31]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[32]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[32]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_33),
        .Q(\Din_del2_reg[32]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[33]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[33]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_34),
        .Q(\Din_del2_reg[33]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[34]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[34]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_35),
        .Q(\Din_del2_reg[34]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[35]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[35]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_36),
        .Q(\Din_del2_reg[35]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[36]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[36]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_37),
        .Q(\Din_del2_reg[36]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[37]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[37]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_38),
        .Q(\Din_del2_reg[37]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[38]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[38]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_39),
        .Q(\Din_del2_reg[38]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[39]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[39]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_40),
        .Q(\Din_del2_reg[39]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[3]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[3]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_4),
        .Q(\Din_del2_reg[3]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[40]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[40]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_41),
        .Q(\Din_del2_reg[40]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[41]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[41]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_42),
        .Q(\Din_del2_reg[41]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[42]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[42]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_43),
        .Q(\Din_del2_reg[42]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[43]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[43]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_44),
        .Q(\Din_del2_reg[43]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[44]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[44]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_45),
        .Q(\Din_del2_reg[44]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[45]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[45]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_46),
        .Q(\Din_del2_reg[45]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[46]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[46]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_47),
        .Q(\Din_del2_reg[46]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[47]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[47]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_48),
        .Q(\Din_del2_reg[47]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[48]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[48]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_49),
        .Q(\Din_del2_reg[48]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[49]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[49]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_50),
        .Q(\Din_del2_reg[49]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[4]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[4]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_5),
        .Q(\Din_del2_reg[4]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[50]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[50]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_51),
        .Q(\Din_del2_reg[50]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[51]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[51]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_52),
        .Q(\Din_del2_reg[51]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[52]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[52]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_53),
        .Q(\Din_del2_reg[52]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[53]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[53]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_54),
        .Q(\Din_del2_reg[53]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[54]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[54]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_55),
        .Q(\Din_del2_reg[54]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[55]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[55]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_56),
        .Q(\Din_del2_reg[55]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[56]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[56]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_57),
        .Q(\Din_del2_reg[56]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[57]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[57]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_58),
        .Q(\Din_del2_reg[57]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[58]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[58]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_59),
        .Q(\Din_del2_reg[58]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[59]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[59]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_60),
        .Q(\Din_del2_reg[59]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[5]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[5]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_6),
        .Q(\Din_del2_reg[5]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[60]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[60]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_61),
        .Q(\Din_del2_reg[60]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[61]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[61]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_62),
        .Q(\Din_del2_reg[61]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[62]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[62]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_63),
        .Q(\Din_del2_reg[62]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[63]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[63]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_64),
        .Q(\Din_del2_reg[63]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[6]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[6]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_7),
        .Q(\Din_del2_reg[6]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[7]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[7]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_8),
        .Q(\Din_del2_reg[7]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[8]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[8]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_9),
        .Q(\Din_del2_reg[8]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  (* srl_bus_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg " *) 
  (* srl_name = "\inst/DDS_core_ip_v1_0_S00_AXI_inst/DDS_core_inst/BIST/Din_del2_reg[9]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r " *) 
  SRL16E \Din_del2_reg[9]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(int_CE),
        .CLK(CLK),
        .D(Del_n_10),
        .Q(\Din_del2_reg[9]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ));
  FDRE Din_del2_reg_r
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del1_reg_r_n_0),
        .Q(Din_del2_reg_r_n_0),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del3_reg[0]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[0]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[0]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[10]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[10]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[10]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[11]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[11]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[11]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[12]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[12]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[12]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[13]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[13]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[13]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[14]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[14]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[14]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[15]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[15]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[15]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[16]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[16]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[16]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[17]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[17]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[17]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[18]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[18]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[18]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[19]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[19]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[19]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[1]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[1]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[1]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[20]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[20]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[20]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[21]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[21]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[21]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[22]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[22]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[22]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[23]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[23]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[23]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[24]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[24]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[24]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[25]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[25]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[25]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[26]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[26]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[26]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[27]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[27]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[27]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[28]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[28]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[28]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[29]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[29]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[29]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[2]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[2]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[2]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[30]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[30]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[30]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[31]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[31]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[31]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[32]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[32]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[32]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[33]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[33]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[33]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[34]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[34]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[34]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[35]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[35]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[35]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[36]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[36]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[36]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[37]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[37]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[37]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[38]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[38]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[38]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[39]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[39]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[39]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[3]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[3]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[3]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[40]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[40]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[40]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[41]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[41]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[41]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[42]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[42]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[42]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[43]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[43]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[43]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[44]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[44]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[44]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[45]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[45]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[45]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[46]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[46]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[46]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[47]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[47]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[47]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[48]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[48]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[48]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[49]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[49]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[49]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[4]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[4]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[4]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[50]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[50]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[50]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[51]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[51]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[51]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[52]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[52]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[52]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[53]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[53]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[53]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[54]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[54]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[54]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[55]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[55]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[55]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[56]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[56]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[56]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[57]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[57]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[57]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[58]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[58]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[58]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[59]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[59]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[59]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[5]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[5]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[5]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[60]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[60]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[60]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[61]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[61]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[61]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[62]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[62]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[62]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[63]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[6]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[6]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[6]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[7]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[7]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[7]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[8]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[8]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[8]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  FDRE \Din_del3_reg[9]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r 
       (.C(CLK),
        .CE(int_CE),
        .D(\Din_del2_reg[9]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_n_0 ),
        .Q(\Din_del3_reg[9]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate
       (.I0(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__0
       (.I0(\Din_del3_reg[62]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__1
       (.I0(\Din_del3_reg[61]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__10
       (.I0(\Din_del3_reg[52]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__11
       (.I0(\Din_del3_reg[51]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__12
       (.I0(\Din_del3_reg[50]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__13
       (.I0(\Din_del3_reg[49]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__14
       (.I0(\Din_del3_reg[48]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__15
       (.I0(\Din_del3_reg[47]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__16
       (.I0(\Din_del3_reg[46]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__17
       (.I0(\Din_del3_reg[45]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__18
       (.I0(\Din_del3_reg[44]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__19
       (.I0(\Din_del3_reg[43]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__2
       (.I0(\Din_del3_reg[60]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__20
       (.I0(\Din_del3_reg[42]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__21
       (.I0(\Din_del3_reg[41]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__22
       (.I0(\Din_del3_reg[40]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__23
       (.I0(\Din_del3_reg[39]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__24
       (.I0(\Din_del3_reg[38]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__25
       (.I0(\Din_del3_reg[37]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__26
       (.I0(\Din_del3_reg[36]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__27
       (.I0(\Din_del3_reg[35]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__28
       (.I0(\Din_del3_reg[34]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__29
       (.I0(\Din_del3_reg[33]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__3
       (.I0(\Din_del3_reg[59]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__30
       (.I0(\Din_del3_reg[32]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__31
       (.I0(\Din_del3_reg[31]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__32
       (.I0(\Din_del3_reg[30]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__33
       (.I0(\Din_del3_reg[29]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__33_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__34
       (.I0(\Din_del3_reg[28]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__34_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__35
       (.I0(\Din_del3_reg[27]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__35_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__36
       (.I0(\Din_del3_reg[26]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__37
       (.I0(\Din_del3_reg[25]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__37_n_0));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__38
       (.I0(\Din_del3_reg[24]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__38_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__39
       (.I0(\Din_del3_reg[23]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__4
       (.I0(\Din_del3_reg[58]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__40
       (.I0(\Din_del3_reg[22]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__40_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__41
       (.I0(\Din_del3_reg[21]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__42
       (.I0(\Din_del3_reg[20]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__42_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__43
       (.I0(\Din_del3_reg[19]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__43_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__44
       (.I0(\Din_del3_reg[18]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__44_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__45
       (.I0(\Din_del3_reg[17]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__46
       (.I0(\Din_del3_reg[16]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__46_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__47
       (.I0(\Din_del3_reg[15]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__47_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__48
       (.I0(\Din_del3_reg[14]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__49
       (.I0(\Din_del3_reg[13]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__5
       (.I0(\Din_del3_reg[57]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__50
       (.I0(\Din_del3_reg[12]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__50_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__51
       (.I0(\Din_del3_reg[11]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__52
       (.I0(\Din_del3_reg[10]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__52_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__53
       (.I0(\Din_del3_reg[9]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__53_n_0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__54
       (.I0(\Din_del3_reg[8]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__54_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__55
       (.I0(\Din_del3_reg[7]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__55_n_0));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__56
       (.I0(\Din_del3_reg[6]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__56_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__57
       (.I0(\Din_del3_reg[5]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__58
       (.I0(\Din_del3_reg[4]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__58_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__59
       (.I0(\Din_del3_reg[3]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__6
       (.I0(\Din_del3_reg[56]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__60
       (.I0(\Din_del3_reg[2]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__60_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__61
       (.I0(\Din_del3_reg[1]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__61_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__62
       (.I0(\Din_del3_reg[0]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__62_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__7
       (.I0(\Din_del3_reg[55]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__8
       (.I0(\Din_del3_reg[54]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Din_del3_reg_gate__9
       (.I0(\Din_del3_reg[53]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r_n_0 ),
        .I1(Din_del3_reg_r_n_0),
        .O(Din_del3_reg_gate__9_n_0));
  FDRE Din_del3_reg_r
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del2_reg_r_n_0),
        .Q(Din_del3_reg_r_n_0),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[0] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__62_n_0),
        .Q(Din_del4[0]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[10] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__52_n_0),
        .Q(Din_del4[10]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[11] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__51_n_0),
        .Q(Din_del4[11]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[12] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__50_n_0),
        .Q(Din_del4[12]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[13] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__49_n_0),
        .Q(Din_del4[13]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[14] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__48_n_0),
        .Q(Din_del4[14]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[15] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__47_n_0),
        .Q(Din_del4[15]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[16] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__46_n_0),
        .Q(Din_del4[16]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[17] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__45_n_0),
        .Q(Din_del4[17]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[18] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__44_n_0),
        .Q(Din_del4[18]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[19] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__43_n_0),
        .Q(Din_del4[19]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[1] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__61_n_0),
        .Q(Din_del4[1]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[20] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__42_n_0),
        .Q(Din_del4[20]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[21] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__41_n_0),
        .Q(Din_del4[21]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[22] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__40_n_0),
        .Q(Din_del4[22]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[23] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__39_n_0),
        .Q(Din_del4[23]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[24] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__38_n_0),
        .Q(Din_del4[24]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[25] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__37_n_0),
        .Q(Din_del4[25]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[26] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__36_n_0),
        .Q(Din_del4[26]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[27] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__35_n_0),
        .Q(Din_del4[27]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[28] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__34_n_0),
        .Q(Din_del4[28]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[29] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__33_n_0),
        .Q(Din_del4[29]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[2] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__60_n_0),
        .Q(Din_del4[2]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[30] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__32_n_0),
        .Q(Din_del4[30]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[31] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__31_n_0),
        .Q(Din_del4[31]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[32] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__30_n_0),
        .Q(Din_del4[32]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[33] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__29_n_0),
        .Q(Din_del4[33]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[34] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__28_n_0),
        .Q(Din_del4[34]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[35] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__27_n_0),
        .Q(Din_del4[35]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[36] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__26_n_0),
        .Q(Din_del4[36]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[37] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__25_n_0),
        .Q(Din_del4[37]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[38] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__24_n_0),
        .Q(Din_del4[38]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[39] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__23_n_0),
        .Q(Din_del4[39]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[3] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__59_n_0),
        .Q(Din_del4[3]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[40] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__22_n_0),
        .Q(Din_del4[40]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[41] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__21_n_0),
        .Q(Din_del4[41]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[42] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__20_n_0),
        .Q(Din_del4[42]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[43] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__19_n_0),
        .Q(Din_del4[43]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[44] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__18_n_0),
        .Q(Din_del4[44]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[45] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__17_n_0),
        .Q(Din_del4[45]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[46] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__16_n_0),
        .Q(Din_del4[46]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[47] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__15_n_0),
        .Q(Din_del4[47]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[48] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__14_n_0),
        .Q(Din_del4[48]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[49] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__13_n_0),
        .Q(Din_del4[49]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[4] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__58_n_0),
        .Q(Din_del4[4]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[50] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__12_n_0),
        .Q(Din_del4[50]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[51] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__11_n_0),
        .Q(Din_del4[51]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[52] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__10_n_0),
        .Q(Din_del4[52]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[53] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__9_n_0),
        .Q(Din_del4[53]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[54] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__8_n_0),
        .Q(Din_del4[54]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[55] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__7_n_0),
        .Q(Din_del4[55]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[56] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__6_n_0),
        .Q(Din_del4[56]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[57] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__5_n_0),
        .Q(Din_del4[57]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[58] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__4_n_0),
        .Q(Din_del4[58]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[59] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__3_n_0),
        .Q(Din_del4[59]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[5] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__57_n_0),
        .Q(Din_del4[5]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[60] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__2_n_0),
        .Q(Din_del4[60]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[61] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__1_n_0),
        .Q(Din_del4[61]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[62] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__0_n_0),
        .Q(Din_del4[62]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[63] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate_n_0),
        .Q(Din_del4[63]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[6] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__56_n_0),
        .Q(Din_del4[6]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[7] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__55_n_0),
        .Q(Din_del4[7]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[8] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__54_n_0),
        .Q(Din_del4[8]),
        .R(\prbs_reg[63]_0 ));
  FDRE \Din_del4_reg[9] 
       (.C(CLK),
        .CE(int_CE),
        .D(Din_del3_reg_gate__53_n_0),
        .Q(Din_del4[9]),
        .R(\prbs_reg[63]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_10
       (.I0(Din_del4[51]),
        .I1(DES_out[27]),
        .I2(DES_out[29]),
        .I3(Din_del4[53]),
        .I4(DES_out[28]),
        .I5(Din_del4[52]),
        .O(correct_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_11
       (.I0(Din_del4[48]),
        .I1(DES_out[24]),
        .I2(DES_out[26]),
        .I3(Din_del4[50]),
        .I4(DES_out[25]),
        .I5(Din_del4[49]),
        .O(correct_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_13
       (.I0(Din_del4[45]),
        .I1(DES_out[21]),
        .I2(DES_out[23]),
        .I3(Din_del4[47]),
        .I4(DES_out[22]),
        .I5(Din_del4[46]),
        .O(correct_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_14
       (.I0(Din_del4[42]),
        .I1(DES_out[18]),
        .I2(DES_out[20]),
        .I3(Din_del4[44]),
        .I4(DES_out[19]),
        .I5(Din_del4[43]),
        .O(correct_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_15
       (.I0(Din_del4[39]),
        .I1(DES_out[15]),
        .I2(DES_out[17]),
        .I3(Din_del4[41]),
        .I4(DES_out[16]),
        .I5(Din_del4[40]),
        .O(correct_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_16
       (.I0(Din_del4[36]),
        .I1(DES_out[12]),
        .I2(DES_out[14]),
        .I3(Din_del4[38]),
        .I4(DES_out[13]),
        .I5(Din_del4[37]),
        .O(correct_i_16_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_18
       (.I0(Din_del4[33]),
        .I1(DES_out[9]),
        .I2(DES_out[11]),
        .I3(Din_del4[35]),
        .I4(DES_out[10]),
        .I5(Din_del4[34]),
        .O(correct_i_18_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_19
       (.I0(Din_del4[30]),
        .I1(DES_out[6]),
        .I2(DES_out[8]),
        .I3(Din_del4[32]),
        .I4(DES_out[7]),
        .I5(Din_del4[31]),
        .O(correct_i_19_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_20
       (.I0(Din_del4[27]),
        .I1(DES_out[3]),
        .I2(DES_out[5]),
        .I3(Din_del4[29]),
        .I4(DES_out[4]),
        .I5(Din_del4[28]),
        .O(correct_i_20_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_21
       (.I0(Din_del4[24]),
        .I1(DES_out[0]),
        .I2(DES_out[2]),
        .I3(Din_del4[26]),
        .I4(DES_out[1]),
        .I5(Din_del4[25]),
        .O(correct_i_21_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_23
       (.I0(Din_del4[21]),
        .I1(DES_out_int[21]),
        .I2(DES_out_int[23]),
        .I3(Din_del4[23]),
        .I4(DES_out_int[22]),
        .I5(Din_del4[22]),
        .O(correct_i_23_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_24
       (.I0(Din_del4[18]),
        .I1(DES_out_int[18]),
        .I2(DES_out_int[20]),
        .I3(Din_del4[20]),
        .I4(DES_out_int[19]),
        .I5(Din_del4[19]),
        .O(correct_i_24_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_25
       (.I0(Din_del4[15]),
        .I1(DES_out_int[15]),
        .I2(DES_out_int[17]),
        .I3(Din_del4[17]),
        .I4(DES_out_int[16]),
        .I5(Din_del4[16]),
        .O(correct_i_25_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_26
       (.I0(Din_del4[12]),
        .I1(DES_out_int[12]),
        .I2(DES_out_int[14]),
        .I3(Din_del4[14]),
        .I4(DES_out_int[13]),
        .I5(Din_del4[13]),
        .O(correct_i_26_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_27
       (.I0(Din_del4[9]),
        .I1(DES_out_int[9]),
        .I2(DES_out_int[11]),
        .I3(Din_del4[11]),
        .I4(DES_out_int[10]),
        .I5(Din_del4[10]),
        .O(correct_i_27_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_28
       (.I0(Din_del4[6]),
        .I1(DES_out_int[6]),
        .I2(DES_out_int[8]),
        .I3(Din_del4[8]),
        .I4(DES_out_int[7]),
        .I5(Din_del4[7]),
        .O(correct_i_28_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_29
       (.I0(Din_del4[3]),
        .I1(DES_out_int[3]),
        .I2(DES_out_int[5]),
        .I3(Din_del4[5]),
        .I4(DES_out_int[4]),
        .I5(Din_del4[4]),
        .O(correct_i_29_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_30
       (.I0(Din_del4[0]),
        .I1(DES_out_int[0]),
        .I2(DES_out_int[2]),
        .I3(Din_del4[2]),
        .I4(DES_out_int[1]),
        .I5(Din_del4[1]),
        .O(correct_i_30_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_6
       (.I0(Din_del4[60]),
        .I1(DES_out[36]),
        .I2(DES_out[38]),
        .I3(Din_del4[62]),
        .I4(DES_out[37]),
        .I5(Din_del4[61]),
        .O(correct_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_8
       (.I0(Din_del4[57]),
        .I1(DES_out[33]),
        .I2(DES_out[35]),
        .I3(Din_del4[59]),
        .I4(DES_out[34]),
        .I5(Din_del4[58]),
        .O(correct_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    correct_i_9
       (.I0(Din_del4[54]),
        .I1(DES_out[30]),
        .I2(DES_out[32]),
        .I3(Din_del4[56]),
        .I4(DES_out[31]),
        .I5(Din_del4[55]),
        .O(correct_i_9_n_0));
  FDRE correct_reg
       (.C(CLK),
        .CE(1'b1),
        .D(Del_n_0),
        .Q(slv_status_wire1),
        .R(1'b0));
  CARRY4 correct_reg_i_12
       (.CI(correct_reg_i_17_n_0),
        .CO({correct_reg_i_12_n_0,correct_reg_i_12_n_1,correct_reg_i_12_n_2,correct_reg_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_correct_reg_i_12_O_UNCONNECTED[3:0]),
        .S({correct_i_18_n_0,correct_i_19_n_0,correct_i_20_n_0,correct_i_21_n_0}));
  CARRY4 correct_reg_i_17
       (.CI(correct_reg_i_22_n_0),
        .CO({correct_reg_i_17_n_0,correct_reg_i_17_n_1,correct_reg_i_17_n_2,correct_reg_i_17_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_correct_reg_i_17_O_UNCONNECTED[3:0]),
        .S({correct_i_23_n_0,correct_i_24_n_0,correct_i_25_n_0,correct_i_26_n_0}));
  CARRY4 correct_reg_i_22
       (.CI(1'b0),
        .CO({correct_reg_i_22_n_0,correct_reg_i_22_n_1,correct_reg_i_22_n_2,correct_reg_i_22_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_correct_reg_i_22_O_UNCONNECTED[3:0]),
        .S({correct_i_27_n_0,correct_i_28_n_0,correct_i_29_n_0,correct_i_30_n_0}));
  CARRY4 correct_reg_i_3
       (.CI(correct_reg_i_4_n_0),
        .CO({NLW_correct_reg_i_3_CO_UNCONNECTED[3:2],correct_int,correct_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_correct_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,\genblk1[7].DES_i_n_7 ,correct_i_6_n_0}));
  CARRY4 correct_reg_i_4
       (.CI(correct_reg_i_7_n_0),
        .CO({correct_reg_i_4_n_0,correct_reg_i_4_n_1,correct_reg_i_4_n_2,correct_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_correct_reg_i_4_O_UNCONNECTED[3:0]),
        .S({correct_i_8_n_0,correct_i_9_n_0,correct_i_10_n_0,correct_i_11_n_0}));
  CARRY4 correct_reg_i_7
       (.CI(correct_reg_i_12_n_0),
        .CO({correct_reg_i_7_n_0,correct_reg_i_7_n_1,correct_reg_i_7_n_2,correct_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_correct_reg_i_7_O_UNCONNECTED[3:0]),
        .S({correct_i_13_n_0,correct_i_14_n_0,correct_i_15_n_0,correct_i_16_n_0}));
  DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive \genblk1[0].DES_i 
       (.CLK(CLK),
        .DES_out({DES_out[56],DES_out[48],DES_out[40],DES_out[32],DES_out[24],DES_out[16],DES_out[8],DES_out[0]}),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .data_FB(data_FB[0]),
        .int_CE(int_CE),
        .nHS_CLK(nHS_CLK));
  DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_7 \genblk1[1].DES_i 
       (.CLK(CLK),
        .DES_out({DES_out[57],DES_out[49],DES_out[41],DES_out[33],DES_out[25],DES_out[17],DES_out[9],DES_out[1]}),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .data_FB(data_FB[1]),
        .int_CE(int_CE),
        .nHS_CLK(nHS_CLK));
  DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_8 \genblk1[2].DES_i 
       (.CLK(CLK),
        .DES_out({DES_out[58],DES_out[50],DES_out[42],DES_out[34],DES_out[26],DES_out[18],DES_out[10],DES_out[2]}),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .data_FB(data_FB[2]),
        .int_CE(int_CE),
        .nHS_CLK(nHS_CLK));
  DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_9 \genblk1[3].DES_i 
       (.CLK(CLK),
        .DES_out({DES_out[59],DES_out[51],DES_out[43],DES_out[35],DES_out[27],DES_out[19],DES_out[11],DES_out[3]}),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .data_FB(data_FB[3]),
        .int_CE(int_CE),
        .nHS_CLK(nHS_CLK));
  DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_10 \genblk1[4].DES_i 
       (.CLK(CLK),
        .DES_out({DES_out[60],DES_out[52],DES_out[44],DES_out[36],DES_out[28],DES_out[20],DES_out[12],DES_out[4]}),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .data_FB(data_FB[4]),
        .int_CE(int_CE),
        .nHS_CLK(nHS_CLK));
  DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_11 \genblk1[5].DES_i 
       (.CLK(CLK),
        .DES_out({DES_out[61],DES_out[53],DES_out[45],DES_out[37],DES_out[29],DES_out[21],DES_out[13],DES_out[5]}),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .data_FB(data_FB[5]),
        .int_CE(int_CE),
        .nHS_CLK(nHS_CLK));
  DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_12 \genblk1[6].DES_i 
       (.CLK(CLK),
        .DES_out({DES_out[62],DES_out[54],DES_out[46],DES_out[38],DES_out[30],DES_out[22],DES_out[14],DES_out[6]}),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .data_FB(data_FB[6]),
        .int_CE(int_CE),
        .nHS_CLK(nHS_CLK));
  DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_13 \genblk1[7].DES_i 
       (.CLK(CLK),
        .Din_del4(Din_del4[63]),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .S(\genblk1[7].DES_i_n_7 ),
        .data_FB(data_FB[7]),
        .int_CE(int_CE),
        .nHS_CLK(nHS_CLK),
        .\slv_reg0_reg[0] ({DES_out[63],DES_out[55],DES_out[47],DES_out[31],DES_out[23],DES_out[15],DES_out[7]}));
  LUT4 #(
    .INIT(16'h6996)) 
    \prbs[0]_i_1 
       (.I0(\prbs_reg_n_0_[2] ),
        .I1(\prbs_reg_n_0_[3] ),
        .I2(\prbs_reg_n_0_[7] ),
        .I3(\prbs_reg_n_0_[1] ),
        .O(p_15_out[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \prbs[16]_i_1 
       (.I0(\prbs_reg_n_0_[18] ),
        .I1(\prbs_reg_n_0_[19] ),
        .I2(\prbs_reg_n_0_[23] ),
        .I3(\prbs_reg_n_0_[17] ),
        .O(p_15_out[16]));
  LUT4 #(
    .INIT(16'h6996)) 
    \prbs[24]_i_1 
       (.I0(\prbs_reg_n_0_[26] ),
        .I1(\prbs_reg_n_0_[27] ),
        .I2(\prbs_reg_n_0_[31] ),
        .I3(\prbs_reg_n_0_[25] ),
        .O(p_15_out[24]));
  LUT4 #(
    .INIT(16'h6996)) 
    \prbs[32]_i_1 
       (.I0(\prbs_reg_n_0_[34] ),
        .I1(\prbs_reg_n_0_[35] ),
        .I2(\prbs_reg_n_0_[39] ),
        .I3(\prbs_reg_n_0_[33] ),
        .O(p_15_out[32]));
  LUT4 #(
    .INIT(16'h6996)) 
    \prbs[40]_i_1 
       (.I0(\prbs_reg_n_0_[42] ),
        .I1(\prbs_reg_n_0_[43] ),
        .I2(\prbs_reg_n_0_[47] ),
        .I3(\prbs_reg_n_0_[41] ),
        .O(p_15_out[40]));
  LUT4 #(
    .INIT(16'h6996)) 
    \prbs[48]_i_1 
       (.I0(\prbs_reg_n_0_[50] ),
        .I1(\prbs_reg_n_0_[51] ),
        .I2(\prbs_reg_n_0_[55] ),
        .I3(\prbs_reg_n_0_[49] ),
        .O(p_15_out[48]));
  LUT4 #(
    .INIT(16'h6996)) 
    \prbs[56]_i_1 
       (.I0(in[2]),
        .I1(in[3]),
        .I2(in[7]),
        .I3(in[1]),
        .O(p_15_out[56]));
  LUT4 #(
    .INIT(16'h6996)) 
    \prbs[8]_i_1 
       (.I0(\prbs_reg_n_0_[10] ),
        .I1(\prbs_reg_n_0_[11] ),
        .I2(\prbs_reg_n_0_[15] ),
        .I3(\prbs_reg_n_0_[9] ),
        .O(p_15_out[8]));
  FDSE \prbs_reg[0] 
       (.C(CLK),
        .CE(prbs),
        .D(p_15_out[0]),
        .Q(\prbs_reg_n_0_[0] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[10] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[9] ),
        .Q(\prbs_reg_n_0_[10] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[11] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[10] ),
        .Q(\prbs_reg_n_0_[11] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[12] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[11] ),
        .Q(\prbs_reg_n_0_[12] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[13] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[12] ),
        .Q(\prbs_reg_n_0_[13] ),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[14] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[13] ),
        .Q(\prbs_reg_n_0_[14] ),
        .R(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[15] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[14] ),
        .Q(\prbs_reg_n_0_[15] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[16] 
       (.C(CLK),
        .CE(prbs),
        .D(p_15_out[16]),
        .Q(\prbs_reg_n_0_[16] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[17] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[16] ),
        .Q(\prbs_reg_n_0_[17] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[18] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[17] ),
        .Q(\prbs_reg_n_0_[18] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[19] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[18] ),
        .Q(\prbs_reg_n_0_[19] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[1] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[0] ),
        .Q(\prbs_reg_n_0_[1] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[20] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[19] ),
        .Q(\prbs_reg_n_0_[20] ),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[21] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[20] ),
        .Q(\prbs_reg_n_0_[21] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[22] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[21] ),
        .Q(\prbs_reg_n_0_[22] ),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[23] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[22] ),
        .Q(\prbs_reg_n_0_[23] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[24] 
       (.C(CLK),
        .CE(prbs),
        .D(p_15_out[24]),
        .Q(\prbs_reg_n_0_[24] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[25] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[24] ),
        .Q(\prbs_reg_n_0_[25] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[26] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[25] ),
        .Q(\prbs_reg_n_0_[26] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[27] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[26] ),
        .Q(\prbs_reg_n_0_[27] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[28] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[27] ),
        .Q(\prbs_reg_n_0_[28] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[29] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[28] ),
        .Q(\prbs_reg_n_0_[29] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[2] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[1] ),
        .Q(\prbs_reg_n_0_[2] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[30] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[29] ),
        .Q(\prbs_reg_n_0_[30] ),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[31] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[30] ),
        .Q(\prbs_reg_n_0_[31] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[32] 
       (.C(CLK),
        .CE(prbs),
        .D(p_15_out[32]),
        .Q(\prbs_reg_n_0_[32] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[33] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[32] ),
        .Q(\prbs_reg_n_0_[33] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[34] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[33] ),
        .Q(\prbs_reg_n_0_[34] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[35] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[34] ),
        .Q(\prbs_reg_n_0_[35] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[36] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[35] ),
        .Q(\prbs_reg_n_0_[36] ),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[37] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[36] ),
        .Q(\prbs_reg_n_0_[37] ),
        .R(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[38] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[37] ),
        .Q(\prbs_reg_n_0_[38] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[39] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[38] ),
        .Q(\prbs_reg_n_0_[39] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[3] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[2] ),
        .Q(\prbs_reg_n_0_[3] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[40] 
       (.C(CLK),
        .CE(prbs),
        .D(p_15_out[40]),
        .Q(\prbs_reg_n_0_[40] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[41] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[40] ),
        .Q(\prbs_reg_n_0_[41] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[42] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[41] ),
        .Q(\prbs_reg_n_0_[42] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[43] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[42] ),
        .Q(\prbs_reg_n_0_[43] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[44] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[43] ),
        .Q(\prbs_reg_n_0_[44] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[45] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[44] ),
        .Q(\prbs_reg_n_0_[45] ),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[46] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[45] ),
        .Q(\prbs_reg_n_0_[46] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[47] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[46] ),
        .Q(\prbs_reg_n_0_[47] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[48] 
       (.C(CLK),
        .CE(prbs),
        .D(p_15_out[48]),
        .Q(\prbs_reg_n_0_[48] ),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[49] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[48] ),
        .Q(\prbs_reg_n_0_[49] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[4] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[3] ),
        .Q(\prbs_reg_n_0_[4] ),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[50] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[49] ),
        .Q(\prbs_reg_n_0_[50] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[51] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[50] ),
        .Q(\prbs_reg_n_0_[51] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[52] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[51] ),
        .Q(\prbs_reg_n_0_[52] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[53] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[52] ),
        .Q(\prbs_reg_n_0_[53] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[54] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[53] ),
        .Q(\prbs_reg_n_0_[54] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[55] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[54] ),
        .Q(\prbs_reg_n_0_[55] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[56] 
       (.C(CLK),
        .CE(prbs),
        .D(p_15_out[56]),
        .Q(in[0]),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[57] 
       (.C(CLK),
        .CE(prbs),
        .D(in[0]),
        .Q(in[1]),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[58] 
       (.C(CLK),
        .CE(prbs),
        .D(in[1]),
        .Q(in[2]),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[59] 
       (.C(CLK),
        .CE(prbs),
        .D(in[2]),
        .Q(in[3]),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[5] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[4] ),
        .Q(\prbs_reg_n_0_[5] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[60] 
       (.C(CLK),
        .CE(prbs),
        .D(in[3]),
        .Q(in[4]),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[61] 
       (.C(CLK),
        .CE(prbs),
        .D(in[4]),
        .Q(in[5]),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[62] 
       (.C(CLK),
        .CE(prbs),
        .D(in[5]),
        .Q(in[6]),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[63] 
       (.C(CLK),
        .CE(prbs),
        .D(in[6]),
        .Q(in[7]),
        .S(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[6] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[5] ),
        .Q(\prbs_reg_n_0_[6] ),
        .R(\prbs_reg[63]_0 ));
  FDRE \prbs_reg[7] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[6] ),
        .Q(\prbs_reg_n_0_[7] ),
        .R(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[8] 
       (.C(CLK),
        .CE(prbs),
        .D(p_15_out[8]),
        .Q(\prbs_reg_n_0_[8] ),
        .S(\prbs_reg[63]_0 ));
  FDSE \prbs_reg[9] 
       (.C(CLK),
        .CE(prbs),
        .D(\prbs_reg_n_0_[8] ),
        .Q(\prbs_reg_n_0_[9] ),
        .S(\prbs_reg[63]_0 ));
endmodule

(* ORIG_REF_NAME = "BRAM_Controller" *) 
module DDS_top_DDS_core_ip_0_1_BRAM_Controller
   (DoutB1_out,
    CLK,
    CEA,
    eeprom_reg_1_0,
    DoutB,
    addrA,
    Q,
    DinA,
    int_WE);
  output [63:0]DoutB1_out;
  input CLK;
  input CEA;
  input eeprom_reg_1_0;
  input DoutB;
  input [9:0]addrA;
  input [9:0]Q;
  input [63:0]DinA;
  input int_WE;

  wire CEA;
  wire CLK;
  wire [63:0]DinA;
  wire DoutB;
  wire [63:0]DoutB1_out;
  wire [9:0]Q;
  wire [9:0]addrA;
  wire eeprom_reg_1_0;
  wire int_WE;
  wire NLW_eeprom_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_eeprom_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_eeprom_reg_0_DBITERR_UNCONNECTED;
  wire NLW_eeprom_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_eeprom_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_eeprom_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_eeprom_reg_0_DOADO_UNCONNECTED;
  wire [3:0]NLW_eeprom_reg_0_DOPADOP_UNCONNECTED;
  wire [7:0]NLW_eeprom_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_eeprom_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_eeprom_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_eeprom_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_eeprom_reg_1_DBITERR_UNCONNECTED;
  wire NLW_eeprom_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_eeprom_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_eeprom_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_eeprom_reg_1_DOADO_UNCONNECTED;
  wire [31:28]NLW_eeprom_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_eeprom_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_eeprom_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_eeprom_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_eeprom_reg_1_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "eeprom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "35" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h10FEEDCBBA9887655432210FFEDCCBA9887655432210FEEDCBAA987765433210),
    .INITP_01(256'hAA98877665443321100FEEDCCBBA998776554332110FFEDDCBBA988766543321),
    .INITP_02(256'h66555544433222111000FFEEEDDCCBBBAA998877766554433221100FFEDDCCBB),
    .INITP_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEDDDDDDCCCCCBBBBBAAAA999988887776),
    .INITP_04(256'h677788889999AAAABBBBBCCCCCDDDDDDEEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_05(256'hBBCCDEEFF001122334455667788899AABBCCCDDEEEFF00011122333444555666),
    .INITP_06(256'h123445667899ABBCDDEFF012234456677899ABBCDDEEF00122334556677899AA),
    .INITP_07(256'h012344567889ABBCDEFF0122345667899ABCCDEF00123345667899ABCCDEEF01),
    .INITP_08(256'hF0122345567889ABBCDEEF0112344567789ABBCDEEF0122345567899ABCDDEF0),
    .INITP_09(256'h6677899AABCCDDEFF0012233455677899ABBCDDEFF01123345567889AABCDDEF),
    .INITP_0A(256'hAABBBBCCCDDEEEFFF000112223344555667788999AABBCCDDEEFF00112334455),
    .INITP_0B(256'h000000000000001111111111122222223333334444455555666677778888999A),
    .INITP_0C(256'hA999888877776666555554444433333322222221111111111100000000000000),
    .INITP_0D(256'h55443221100FFEEDDCCBBAA998887766554443322211000FFFEEDDDCCCBBBBAA),
    .INITP_0E(256'hFEDCCBAA98776554332110FFEDDCBBA9987765543322100FEEDDCBBAA9987766),
    .INITP_0F(256'h0FEDCCBA9987655432110FEEDCBBA9877654432110FEDDCBAA9877655432210F),
    .INIT_00(256'h8686868685858585848485858484848483838383828282828181818180808181),
    .INIT_01(256'h8C8C8C8C8B8B8C8C8B8B8B8B8A8A8A8A89898989888888898788888887878787),
    .INIT_02(256'h929293939292929291919191909090908F8F8F908F8F8F8F8E8E8E8E8D8D8D8D),
    .INIT_03(256'h9999999998989898979797979696969795969696959595959494949493939393),
    .INIT_04(256'h9F9F9F9F9E9E9E9E9D9D9D9D9C9D9D9D9C9C9C9C9B9B9B9B9A9A9A9A99999A9A),
    .INIT_05(256'hA5A5A5A5A4A4A4A4A3A3A3A4A3A3A3A3A2A2A2A2A1A1A1A1A0A0A0A19FA0A0A0),
    .INIT_06(256'hABABABABAAAAAAAAA9A9A9AAA9A9A9A9A8A8A8A8A7A7A7A7A6A6A6A7A6A6A6A6),
    .INIT_07(256'hB1B1B1B1B0B0B0B0AFAFAFAFAEAFAFAFAEAEAEAEADADADADACACACADABACACAC),
    .INIT_08(256'hB6B6B7B7B6B6B6B6B5B5B5B5B4B4B4B5B4B4B4B4B3B3B3B3B2B2B2B2B1B1B2B2),
    .INIT_09(256'hBCBCBCBCBBBBBBBCBBBBBBBBBABABABAB9B9B9B9B9B9B9B9B8B8B8B8B7B7B7B7),
    .INIT_0A(256'hC1C2C2C2C1C1C1C1C0C0C0C0BFC0C0C0BFBFBFBFBEBEBEBEBDBDBEBEBDBDBDBD),
    .INIT_0B(256'hC7C7C7C7C6C6C6C6C5C6C6C6C5C5C5C5C4C4C4C4C3C4C4C4C3C3C3C3C2C2C2C2),
    .INIT_0C(256'hCCCCCCCCCBCBCBCCCBCBCBCBCACACACAC9C9CACAC9C9C9C9C8C8C8C8C7C8C8C8),
    .INIT_0D(256'hD1D1D1D1D0D0D0D1D0D0D0D0CFCFCFCFCECFCFCFCECECECECDCDCDCDCDCDCDCD),
    .INIT_0E(256'hD6D6D6D6D5D5D5D5D5D5D5D5D4D4D4D4D3D3D3D4D3D3D3D3D2D2D2D2D2D2D2D2),
    .INIT_0F(256'hDADADADADADADADAD9D9D9D9D9D9D9D9D8D8D8D8D7D7D8D8D7D7D7D7D6D6D6D6),
    .INIT_10(256'hDFDFDFDFDEDEDEDEDEDEDEDEDDDDDDDDDCDDDDDDDCDCDCDCDBDBDBDCDBDBDBDB),
    .INIT_11(256'hE3E3E3E3E2E2E2E2E2E2E2E2E1E1E1E1E1E1E1E1E0E0E0E0E0E0E0E0DFDFDFDF),
    .INIT_12(256'hE7E7E7E7E6E6E6E6E6E6E6E6E5E5E5E5E5E5E5E5E4E4E4E4E4E4E4E4E3E3E3E3),
    .INIT_13(256'hEAEAEAEAEAEAEAEAE9E9E9EAE9E9E9E9E8E8E9E9E8E8E8E8E8E8E8E8E7E7E7E7),
    .INIT_14(256'hEEEEEEEEEDEDEDEDEDEDEDEDECECECEDECECECECECECECECEBEBEBEBEBEBEBEB),
    .INIT_15(256'hF1F1F1F1F0F0F0F0F0F0F0F0F0F0F0F0EFEFEFEFEFEFEFEFEEEEEEEFEEEEEEEE),
    .INIT_16(256'hF4F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F2F2F2F2F2F1F1F2F2F1F1F1F1),
    .INIT_17(256'hF6F6F6F6F6F6F6F6F5F6F6F6F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4F4F4F4F4F4),
    .INIT_18(256'hF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6F7),
    .INIT_19(256'hFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF9F9F9FAF9F9F9F9F9F9F9F9F9F9F9F9),
    .INIT_1A(256'hFCFCFCFCFCFCFCFCFCFCFCFCFBFBFCFCFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_1B(256'hFDFDFEFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFCFCFCFDFCFCFCFC),
    .INIT_1C(256'hFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE),
    .INIT_1D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFF),
    .INIT_24(256'hFCFCFCFCFCFCFCFCFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_25(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFCFCFCFCFCFCFCFCFCFCFCFC),
    .INIT_26(256'hF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA),
    .INIT_27(256'hF6F6F6F6F7F7F7F7F7F7F7F7F7F7F7F7F8F8F7F7F8F8F8F8F8F8F8F8F8F8F8F8),
    .INIT_28(256'hF4F4F4F4F4F4F4F4F5F4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F6F6F6F6F6F6F6F6),
    .INIT_29(256'hF1F1F1F1F1F1F1F1F2F2F2F2F2F2F2F2F2F2F2F2F3F3F3F3F3F3F3F3F4F3F3F3),
    .INIT_2A(256'hEEEEEEEEEEEEEEEEEFEFEFEFEFEFEFEFF0F0EFEFF0F0F0F0F0F0F0F0F1F1F1F1),
    .INIT_2B(256'hEBEBEBEAEBEBEBEBEBEBEBEBECECECECECECECECEDEDEDEDEDEDEDEDEEEEEDED),
    .INIT_2C(256'hE7E7E7E7E7E7E7E7E8E8E8E8E8E8E8E8E9E9E9E9E9E9E9E9EAEAEAEAEAEAEAEA),
    .INIT_2D(256'hE3E3E3E3E4E4E4E3E4E4E4E4E5E5E5E4E5E5E5E5E6E6E5E5E6E6E6E6E7E6E6E6),
    .INIT_2E(256'hDFDFDFDFE0E0DFDFE0E0E0E0E1E1E1E0E1E1E1E1E2E2E2E1E2E2E2E2E3E3E3E2),
    .INIT_2F(256'hDBDBDBDBDBDBDBDBDCDCDCDCDCDCDCDCDDDDDDDDDDDDDDDDDEDEDEDEDFDEDEDE),
    .INIT_30(256'hD6D6D6D6D7D7D7D7D7D7D7D7D8D8D8D8D9D8D8D8D9D9D9D9DADADAD9DADADADA),
    .INIT_31(256'hD1D1D1D1D2D2D2D2D3D3D3D2D3D3D3D3D4D4D4D4D4D4D4D4D5D5D5D5D6D6D5D5),
    .INIT_32(256'hCDCCCCCCCDCDCDCDCECECECECECECECECFCFCFCFD0D0CFCFD0D0D0D0D1D1D1D1),
    .INIT_33(256'hC7C7C7C7C8C8C8C8C9C9C9C8C9C9C9C9CACACACACBCBCACACBCBCBCBCCCCCCCC),
    .INIT_34(256'hC2C2C2C2C3C3C3C3C3C3C3C3C4C4C4C4C5C5C5C5C5C5C5C5C6C6C6C6C7C7C7C7),
    .INIT_35(256'hBDBDBCBCBDBDBDBDBEBEBEBEBFBFBFBEBFBFBFBFC0C0C0C0C1C1C1C1C1C1C1C1),
    .INIT_36(256'hB7B7B7B7B8B8B8B7B8B8B8B8B9B9B9B9BABABABABBBABABABBBBBBBBBCBCBCBC),
    .INIT_37(256'hB1B1B1B1B2B2B2B2B3B3B3B2B3B3B3B3B4B4B4B4B5B5B5B5B6B6B5B5B6B6B6B6),
    .INIT_38(256'hABABABABACACACACADADADADAEAEADADAEAEAEAEAFAFAFAFB0B0B0B0B1B0B0B0),
    .INIT_39(256'hA5A5A5A5A6A6A6A6A7A7A7A7A8A8A8A7A8A8A8A8A9A9A9A9AAAAAAAAABABABAA),
    .INIT_3A(256'h9F9F9F9FA0A0A0A0A1A1A1A1A2A2A2A1A2A2A2A2A3A3A3A3A4A4A4A4A5A5A5A4),
    .INIT_3B(256'h999999999A9A9A9A9B9B9B9B9C9C9B9B9C9C9C9C9D9D9D9D9E9E9E9E9F9F9E9E),
    .INIT_3C(256'h9393939394949494959594949595959596969696979797979898989799989898),
    .INIT_3D(256'h8D8D8D8D8E8E8D8D8E8E8E8E8F8F8F8F90909090919191909291919192929292),
    .INIT_3E(256'h878786868787878788888888898989898A8A8A898B8A8A8A8B8B8B8B8C8C8C8C),
    .INIT_3F(256'h8080808081818181828282828383838283838383848484848585858586868686),
    .INIT_40(256'h7A7A7A7A7B7B7B7B7C7C7B7B7C7C7C7C7D7D7D7D7E7E7E7E7F7F7F7E807F7F7F),
    .INIT_41(256'h7474747475747474757575757676767677777777787878777878787879797979),
    .INIT_42(256'h6E6D6D6D6E6E6E6E6F6F6F6F7070707071717070717171717272727273737373),
    .INIT_43(256'h6767676768686868696969696A6A69696A6A6A6A6B6B6B6B6C6C6C6C6D6D6D6C),
    .INIT_44(256'h6161616162626262636363626463636364646464656565656666666667666666),
    .INIT_45(256'h5B5B5B5B5C5C5C5C5D5D5C5C5D5D5D5D5E5E5E5E5F5F5F5F6060605F60606060),
    .INIT_46(256'h5555555556565656575756565757575758585858595959595A5A59595A5A5A5A),
    .INIT_47(256'h4F4F4F4F50505050515151515251515152525252535353535454545354545454),
    .INIT_48(256'h4A4949494A4A4A4A4B4B4B4B4C4C4C4B4C4C4C4C4D4D4D4D4E4E4E4E4F4F4E4E),
    .INIT_49(256'h4444444445454444454545454646464647474746474747474848484849494949),
    .INIT_4A(256'h3E3E3E3E3F3F3F3F404040404140404041414141424242424342424243434343),
    .INIT_4B(256'h393939393A3A3A3A3A3A3A3A3B3B3B3B3C3C3C3C3C3C3C3C3D3D3D3D3E3E3E3E),
    .INIT_4C(256'h3434343435353434353535353636363637363636373737373838383839383838),
    .INIT_4D(256'h2F2F2F2F3030302F303030303131313132313131323232323333333333333333),
    .INIT_4E(256'h2A2A2A2A2B2B2B2B2B2B2B2B2C2C2C2C2D2D2C2C2D2D2D2D2E2E2E2E2E2E2E2E),
    .INIT_4F(256'h262626262626262627272727272727272828282829282828292929292A2A2A29),
    .INIT_50(256'h2121212122222222222222222323232324232323242424242525242425252525),
    .INIT_51(256'h1D1D1D1D1E1E1E1E1E1E1E1E1F1F1F1F1F1F1F1F202020202020202021212121),
    .INIT_52(256'h191919191A1A1A1A1A1A1A1A1B1B1B1B1B1B1B1B1C1C1C1C1C1C1C1C1D1D1D1D),
    .INIT_53(256'h1616161616161616171717161717171718171717181818181818181819191919),
    .INIT_54(256'h1212121213131313131313131414141314141414141414141515151515151515),
    .INIT_55(256'h0F0F0F0F10101010101010101010101011111111111111111212111112121212),
    .INIT_56(256'h0C0C0C0C0D0D0D0D0D0D0D0D0D0D0D0D0E0E0E0E0E0E0E0E0F0E0E0E0F0F0F0F),
    .INIT_57(256'h0A0A0A0A0A0A0A0A0A0A0A0A0B0B0B0B0B0B0B0B0B0B0B0B0C0C0C0C0C0C0C0C),
    .INIT_58(256'h080808070808080808080808080808080909090909090909090909090A0A0909),
    .INIT_59(256'h0606060606060606060606060606060607070706070707070707070707070707),
    .INIT_5A(256'h0404040404040404040404040504040405050505050505050505050505050505),
    .INIT_5B(256'h0303020203030303030303030303030303030303030303030404030304040404),
    .INIT_5C(256'h0101010102020202020202020202020202020202020202020202020202020202),
    .INIT_5D(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000001010101),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0101010101010101000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_63(256'h0202020202020202020202020202020202020202020202020202020201010101),
    .INIT_64(256'h0404040404040404030303030303030303030303030303030303030303030303),
    .INIT_65(256'h0505050605050505050505050505050505050505040404040404040404040404),
    .INIT_66(256'h0707070707070707070707070707070706060606060606060606060606060606),
    .INIT_67(256'h0A0A0A0A09090909090909090909090908080909080808080808080808080808),
    .INIT_68(256'h0C0C0C0C0C0C0C0C0B0C0C0C0B0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A0A0A0A0A),
    .INIT_69(256'h0F0F0F0F0F0F0F0F0E0E0E0E0E0E0E0E0E0E0E0E0D0D0D0D0D0D0D0D0C0D0D0D),
    .INIT_6A(256'h121212121212121211111111111111111011111110101010101010100F0F0F0F),
    .INIT_6B(256'h1515161615151515151515151414141414141414131313131313131312131313),
    .INIT_6C(256'h1919191919191919181818181818181817171717171717171616161616161616),
    .INIT_6D(256'h1D1D1D1D1C1C1C1D1C1C1C1C1B1B1C1C1B1B1B1B1A1A1B1B1A1A1A1A191A1A1A),
    .INIT_6E(256'h2121212120202121202020201F1F20201F1F1F1F1E1E1E1F1E1E1E1E1D1D1D1E),
    .INIT_6F(256'h2525252525252525242424242424242423232323232323232222222221222222),
    .INIT_70(256'h2A2A2A2A29292929292929292828282828282828272727272626272726262626),
    .INIT_71(256'h2F2F2F2F2E2E2E2E2D2D2E2E2D2D2D2D2C2C2C2C2C2C2C2C2B2B2B2B2A2A2B2B),
    .INIT_72(256'h343434343333333332323232323232323131313130303131303030302F2F2F2F),
    .INIT_73(256'h3939393938383838373737383737373736363636353536363535353534343434),
    .INIT_74(256'h3E3E3E3E3D3D3D3E3D3D3D3D3C3C3C3C3B3B3B3C3B3B3B3B3A3A3A3A3939393A),
    .INIT_75(256'h4343444443434343424242424141424241414141404040403F3F3F403F3F3F3F),
    .INIT_76(256'h4949494948484849484848484747474746464646454646464545454544444444),
    .INIT_77(256'h4F4F4F4F4E4E4E4E4D4D4D4E4D4D4D4D4C4C4C4C4B4B4B4B4A4B4B4B4A4A4A4A),
    .INIT_78(256'h555555555454545453535353525253535252525251515151505050504F505050),
    .INIT_79(256'h5B5B5B5B5A5A5A5A595959595858585958585858575757575656565655555656),
    .INIT_7A(256'h61616161606060605F5F5F5F5E5E5F5F5E5E5E5E5D5D5D5D5C5C5C5C5B5B5B5C),
    .INIT_7B(256'h6767676766666666656565656465656564646464636363636262626261616262),
    .INIT_7C(256'h6D6D6D6D6C6C6C6C6B6B6C6C6B6B6B6B6A6A6A6A696969696868686968686868),
    .INIT_7D(256'h73737373727273737272727271717171707070706F6F6F706E6F6F6F6E6E6E6E),
    .INIT_7E(256'h797A7A7A79797979787878787777777776767677767676767575757574747474),
    .INIT_7F(256'h808080807F7F7F7F7E7E7E7E7D7D7E7E7D7D7D7D7C7C7C7C7B7B7B7B7A7A7A7B),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    eeprom_reg_0
       (.ADDRARDADDR({1'b1,addrA,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,Q,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_eeprom_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_eeprom_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DBITERR(NLW_eeprom_reg_0_DBITERR_UNCONNECTED),
        .DIADI(DinA[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP(DinA[35:32]),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(NLW_eeprom_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(DoutB1_out[31:0]),
        .DOPADOP(NLW_eeprom_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(DoutB1_out[35:32]),
        .ECCPARITY(NLW_eeprom_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(CEA),
        .ENBWREN(eeprom_reg_1_0),
        .INJECTDBITERR(NLW_eeprom_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_eeprom_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_eeprom_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(DoutB),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_eeprom_reg_0_SBITERR_UNCONNECTED),
        .WEA({int_WE,int_WE,int_WE,int_WE}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d28" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d28" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "65536" *) 
  (* RTL_RAM_NAME = "eeprom" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "36" *) 
  (* bram_slice_end = "63" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0858686808585858084848480838383808282838082828280818181808080808),
    .INIT_01(256'h08C8C8C808B8B8B808A8A8A80898A8A808989898088888880878787808686868),
    .INIT_02(256'h0929292909191919090919190909090908F8F8F808E8E8E808D8D8E808D8D8D8),
    .INIT_03(256'h0989898909798989097979790969696909595959094949590949494909393939),
    .INIT_04(256'h09E9E9F909E9E9E909D9D9D909C9C9C909B9B9B909B9B9B909A9A9A909999999),
    .INIT_05(256'h0A4A5A5A0A4A4A4A0A3A3A3A0A2A2A2A0A1A1A2A0A1A1A1A0A0A0A0A09F9F9F9),
    .INIT_06(256'h0AAAAABA0AAAAAAA0A9A9A9A0A8A8A8A0A7A8A8A0A7A7A7A0A6A6A6A0A5A5A5A),
    .INIT_07(256'h0B0B0B0B0B0B0B0B0AFAFAFA0AEAEAEA0ADADAEA0ADADADA0ACACACA0ABABABA),
    .INIT_08(256'h0B6B6B6B0B5B5B5B0B5B5B5B0B4B4B4B0B3B3B3B0B2B3B3B0B2B2B2B0B1B1B1B),
    .INIT_09(256'h0BCBCBCB0BBBBBBB0BABABAB0BABABAB0B9B9B9B0B8B8B8B0B7B8B8B0B7B7B7B),
    .INIT_0A(256'h0C1C1C1C0C0C1C1C0C0C0C0C0BFBFBFB0BEBEBFB0BEBEBEB0BDBDBDB0BCBCBDB),
    .INIT_0B(256'h0C6C7C7C0C6C6C6C0C5C5C5C0C4C5C5C0C4C4C4C0C3C3C3C0C2C3C3C0C2C2C2C),
    .INIT_0C(256'h0CCCCCCC0CBCBCBC0CACACBC0CACACAC0C9C9C9C0C8C9C9C0C8C8C8C0C7C7C7C),
    .INIT_0D(256'h0D1D1D1D0D0D0D0D0CFCFD0D0CFCFCFC0CECECEC0CECECEC0CDCDCDC0CCCCCCC),
    .INIT_0E(256'h0D5D5D6D0D5D5D5D0D4D4D4D0D4D4D4D0D3D3D3D0D2D2D3D0D2D2D2D0D1D1D1D),
    .INIT_0F(256'h0DADADAD0D9D9DAD0D9D9D9D0D8D8D8D0D8D8D8D0D7D7D7D0D7D7D7D0D6D6D6D),
    .INIT_10(256'h0DEDEDED0DEDEDED0DDDDDDD0DDDDDDD0DCDCDCD0DCDCDCD0DBDBDBD0DBDBDBD),
    .INIT_11(256'h0E2E3E3E0E2E2E2E0E1E2E2E0E1E1E1E0E0E0E1E0E0E0E0E0DFDFE0E0DFDFDFD),
    .INIT_12(256'h0E6E6E6E0E6E6E6E0E5E5E6E0E5E5E5E0E4E4E5E0E4E4E4E0E3E4E4E0E3E3E3E),
    .INIT_13(256'h0EAEAEAE0EAEAEAE0E9E9E9E0E9E9E9E0E8E8E8E0E8E8E8E0E7E7E7E0E7E7E7E),
    .INIT_14(256'h0EDEDEDE0EDEDEDE0EDEDEDE0ECECECE0ECECECE0EBEBEBE0EBEBEBE0EAEAEBE),
    .INIT_15(256'h0F1F1F1F0F0F0F0F0F0F0F0F0EFEFEFF0EFEFEFE0EFEFEFE0EEEEEEE0EEEEEEE),
    .INIT_16(256'h0F3F3F3F0F3F3F3F0F3F3F3F0F2F2F2F0F2F2F2F0F2F2F2F0F1F1F1F0F1F1F1F),
    .INIT_17(256'h0F6F6F6F0F6F6F6F0F5F5F5F0F5F5F5F0F5F5F5F0F4F4F4F0F4F4F4F0F4F4F4F),
    .INIT_18(256'h0F8F8F8F0F8F8F8F0F8F8F8F0F7F7F8F0F7F7F7F0F7F7F7F0F7F7F7F0F6F6F6F),
    .INIT_19(256'h0FAFAFAF0FAFAFAF0FAFAFAF0FAFAFAF0F9F9F9F0F9F9F9F0F9F9F9F0F9F9F9F),
    .INIT_1A(256'h0FCFCFCF0FCFCFCF0FCFCFCF0FBFBFBF0FBFBFBF0FBFBFBF0FBFBFBF0FAFBFBF),
    .INIT_1B(256'h0FDFDFDF0FDFDFDF0FDFDFDF0FDFDFDF0FDFDFDF0FDFDFDF0FCFCFCF0FCFCFCF),
    .INIT_1C(256'h0FFFFFFF0FEFEFEF0FEFEFEF0FEFEFEF0FEFEFEF0FEFEFEF0FEFEFEF0FEFEFEF),
    .INIT_1D(256'h0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF),
    .INIT_1E(256'h0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF),
    .INIT_1F(256'h0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF),
    .INIT_20(256'h0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF),
    .INIT_21(256'h0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF),
    .INIT_22(256'h0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF0FFFFFFF),
    .INIT_23(256'h0FEFEFEF0FEFEFEF0FEFEFEF0FEFEFEF0FEFEFEF0FEFEFEF0FEFEFEF0FFFFFFF),
    .INIT_24(256'h0FCFCFCF0FDFDFCF0FDFDFDF0FDFDFDF0FDFDFDF0FDFDFDF0FDFDFDF0FEFEFDF),
    .INIT_25(256'h0FBFBFBF0FBFBFBF0FBFBFBF0FBFBFBF0FCFCFCF0FCFCFCF0FCFCFCF0FCFCFCF),
    .INIT_26(256'h0F9F9F9F0F9F9F9F0F9F9F9F0FAF9F9F0FAFAFAF0FAFAFAF0FAFAFAF0FAFAFAF),
    .INIT_27(256'h0F7F7F6F0F7F7F7F0F7F7F7F0F7F7F7F0F8F8F8F0F8F8F8F0F8F8F8F0F9F8F8F),
    .INIT_28(256'h0F4F4F4F0F4F4F4F0F5F5F5F0F5F5F5F0F5F5F5F0F6F6F6F0F6F6F6F0F6F6F6F),
    .INIT_29(256'h0F1F1F1F0F2F2F2F0F2F2F2F0F2F2F2F0F3F3F3F0F3F3F3F0F3F3F3F0F4F4F4F),
    .INIT_2A(256'h0EEEEEEE0EFEFEEE0EFEFEFE0EFEFEFE0F0F0F0F0F0F0F0F0F0F0F0F0F1F1F1F),
    .INIT_2B(256'h0EBEBEBE0EBEBEBE0ECECECE0ECECECE0EDECECE0EDEDEDE0EDEDEDE0EEEEEEE),
    .INIT_2C(256'h0E7E7E7E0E8E8E8E0E8E8E8E0E9E9E9E0E9E9E9E0EAE9E9E0EAEAEAE0EAEAEAE),
    .INIT_2D(256'h0E3E3E3E0E4E4E4E0E4E4E4E0E5E5E5E0E5E5E5E0E6E6E6E0E6E6E6E0E7E7E7E),
    .INIT_2E(256'h0DFDFDFD0E0E0E0E0E0E0E0E0E1E1E1E0E1E1E1E0E2E2E2E0E2E2E2E0E3E3E3E),
    .INIT_2F(256'h0DBDBDBD0DCDCDBD0DCDCDCD0DDDDDDD0DDDDDDD0DEDEDED0DEDEDED0DFDFDFD),
    .INIT_30(256'h0D7D6D6D0D7D7D7D0D8D8D8D0D8D8D8D0D9D9D9D0D9D9D9D0DADADAD0DADADAD),
    .INIT_31(256'h0D2D2D2D0D2D2D2D0D3D3D3D0D4D4D3D0D4D4D4D0D5D5D5D0D5D5D5D0D6D6D6D),
    .INIT_32(256'h0CDCDCDC0CDCDCDC0CECECEC0CFCFCFC0CFCFCFC0D0D0D0D0D1D0D0D0D1D1D1D),
    .INIT_33(256'h0C8C8C8C0C8C8C8C0C9C9C9C0CACACAC0CACACAC0CBCBCBC0CCCCCBC0CCCCCCC),
    .INIT_34(256'h0C2C2C2C0C3C3C3C0C4C4C4C0C4C4C4C0C5C5C5C0C6C6C6C0C6C6C6C0C7C7C7C),
    .INIT_35(256'h0BDBDBDB0BEBEBEB0BEBEBEB0BFBFBFB0C0C0C0B0C0C0C0C0C1C1C1C0C2C2C2C),
    .INIT_36(256'h0B7B7B7B0B8B8B8B0B9B9B9B0BAB9B9B0BABABAB0BBBBBBB0BCBCBBB0BCBCBCB),
    .INIT_37(256'h0B2B2B1B0B2B2B2B0B3B3B3B0B4B4B4B0B5B4B4B0B5B5B5B0B6B6B6B0B7B7B7B),
    .INIT_38(256'h0ACACACA0ADACACA0ADADADA0AEAEAEA0AFAFAFA0AFAFAFA0B0B0B0B0B1B1B1B),
    .INIT_39(256'h0A6A6A6A0A7A7A6A0A7A7A7A0A8A8A8A0A9A9A9A0AAAAA9A0AAAAAAA0ABABABA),
    .INIT_3A(256'h0A0A0A0A0A1A0A0A0A1A1A1A0A2A2A2A0A3A3A3A0A4A4A3A0A4A4A4A0A5A5A5A),
    .INIT_3B(256'h09A9A9A909A9A9A909B9B9B909C9C9C909D9D9D909E9D9D909E9E9E909F9F9F9),
    .INIT_3C(256'h0949393909494949095959590969696909797969097979790989898909999999),
    .INIT_3D(256'h08D8D8D808E8E8E808F8F8F8090908F809090909091919190929292909393939),
    .INIT_3E(256'h0878787808888888089888880898989808A8A8A808B8B8B808C8C8C808C8C8C8),
    .INIT_3F(256'h0818181808281818082828280838383808484848085858480858585808686868),
    .INIT_40(256'h07A7A7A707B7B7B707C7C7C707D7D7D707E7D7D707E7E7E707F7F7F708080808),
    .INIT_41(256'h0747474707575757076767670777676707777777078787870797979707A7A797),
    .INIT_42(256'h06E6E6E606F6F6F60706F6F60707070707171717072727270737372707373737),
    .INIT_43(256'h06868686069686860696969606A6A6A606B6B6B606C6C6B606C6C6C606D6D6D6),
    .INIT_44(256'h0626261606262626063636360646464606565646065656560666666606767676),
    .INIT_45(256'h05C5B5B505C5C5C505D5D5D505E5E5E505F5E5E505F5F5F50606060606161616),
    .INIT_46(256'h05655555056565650575757505858585059585850595959505A5A5A505B5B5B5),
    .INIT_47(256'h0505050405050505051515150525252505353525053535350545454505555555),
    .INIT_48(256'h04A4A4A404B4B4A404B4B4B404C4C4C404D4D4D404E4D4D404E4E4E404F4F4F4),
    .INIT_49(256'h0444444404545454046464640464646404747474048484840494848404949494),
    .INIT_4A(256'h03F3F3F303F3F3F3040404040414141404241414042424240434343404444434),
    .INIT_4B(256'h0393939303A3A3A303B3B3B303B3B3B303C3C3C303D3D3D303D3D3D303E3E3E3),
    .INIT_4C(256'h0343434303535353036363530363636303737373038373730383838303939393),
    .INIT_4D(256'h02F2F2F203030303031313030313131303232323032323230333333303434343),
    .INIT_4E(256'h02B2B2A202B2B2B202C2C2C202C2C2C202D2D2D202E2D2D202E2E2E202F2F2F2),
    .INIT_4F(256'h0262626202726262027272720282828202828282029292920292929202A2A2A2),
    .INIT_50(256'h0222222202222222023232320232323202424242024242420252525202525252),
    .INIT_51(256'h01E1D1D101E1E1E101F1E1E101F1F1F10201F1F1020202020212120202121212),
    .INIT_52(256'h01A1A1A101A1A1A101B1B1A101B1B1B101C1B1B101C1C1C101D1C1C101D1D1D1),
    .INIT_53(256'h0161616101616161017171710171717101818181018181810191919101919191),
    .INIT_54(256'h0131312101313131013131310141414101414141015151510151515101615151),
    .INIT_55(256'h00F0F0F001010101010101010111110101111111011111110121212101212121),
    .INIT_56(256'h00D0D0D000D0D0D000D0D0D000E0E0E000E0E0E000E0E0E000F0F0F000F0F0F0),
    .INIT_57(256'h00A0A0A000A0A0A000B0B0B000B0B0B000B0B0B000C0C0C000C0C0C000C0C0C0),
    .INIT_58(256'h0080808000808080008080800090908000909090009090900090909000A0A0A0),
    .INIT_59(256'h0060606000606060006060600060606000707070007070700070707000707070),
    .INIT_5A(256'h0040404000404040004040400050505000505050005050500050505000505050),
    .INIT_5B(256'h0030303000303030003030300030303000303030003030300040404000404040),
    .INIT_5C(256'h0010101000202020002020200020202000202020002020200020202000202020),
    .INIT_5D(256'h0010101000101010001010100010101000101010001010100010101000101010),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000010101000101010),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0010101000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0010101000101010001010100010101000101010001010100010101000101010),
    .INIT_63(256'h0020202000202020002020200020202000202020002020200020202000101010),
    .INIT_64(256'h0040404000304040003030300030303000303030003030300030303000202030),
    .INIT_65(256'h0050505000505050005050500050505000404050004040400040404000404040),
    .INIT_66(256'h0070707000707070007070700060707000606060006060600060606000606060),
    .INIT_67(256'h0090A0A000909090009090900090909000808080008080800080808000808080),
    .INIT_68(256'h00C0C0C000C0C0C000B0B0B000B0B0B000B0B0B000A0A0A000A0A0A000A0A0A0),
    .INIT_69(256'h00F0F0F000E0E0F000E0E0E000E0E0E000D0D0D000D0D0D000D0D0D000C0C0C0),
    .INIT_6A(256'h0121212101112121011111110111111101010101010101010101010100F0F0F0),
    .INIT_6B(256'h0151515101515151014141410141414101314141013131310131313101212121),
    .INIT_6C(256'h0191919101818181018181810171718101717171016171710161616101616161),
    .INIT_6D(256'h01D1D1D101C1C1C101C1C1C101B1B1B101B1B1B101A1A1A101A1A1A101919191),
    .INIT_6E(256'h02121212020202020202020201F1F1F101F1F1F101E1E1E101E1E1E101D1D1D1),
    .INIT_6F(256'h0252525202425252024242420232323202323232022222220222222202121212),
    .INIT_70(256'h02A2A2A202929292028282920282828202727272027272720262626202626262),
    .INIT_71(256'h02E2E2E202E2E2E202D2D2D202C2D2D202C2C2C202B2B2B202B2B2B202A2A2A2),
    .INIT_72(256'h03333333033333330323232303131313031313130303030302F3030302F2F2F2),
    .INIT_73(256'h0383838303838383037373730363637303636363035353530343535303434343),
    .INIT_74(256'h03E3E3E303D3D3D303C3C3C303C3C3C303B3B3B303A3A3A303A3A3A303939393),
    .INIT_75(256'h04343434042424340424242404141414040404040404040403F3F3F303E3E3E3),
    .INIT_76(256'h0494949404848484047474740474747404646464045454540444545404444444),
    .INIT_77(256'h04E4E4F404E4E4E404D4D4D404C4C4C404B4C4C404B4B4B404A4A4A4049494A4),
    .INIT_78(256'h0545454505354545053535350525252505151515051515150505050504F4F4F4),
    .INIT_79(256'h05A5A5A50595A5A5059595950585858505757575056575750565656505555555),
    .INIT_7A(256'h0606060605F6060605F5F5F505E5E5E505D5D5D505C5D5D505C5C5C505B5B5B5),
    .INIT_7B(256'h0666667606666666065656560646464606363636063636360626262606161616),
    .INIT_7C(256'h06D6D6D606C6C6C606B6B6B606A6A6A60696A6A6069696960686868606767676),
    .INIT_7D(256'h073737370727272707171717070717170707070706F6F6F606E6E6E606D6D6E6),
    .INIT_7E(256'h0797979707878787077787870777777707676767075757570747475707474747),
    .INIT_7F(256'h07F7F80807F7F7F707E7E7E707D7D7D707C7C7C707B7B7C707B7B7B707A7A7A7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    eeprom_reg_1
       (.ADDRARDADDR({1'b1,addrA,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,Q,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_eeprom_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_eeprom_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DBITERR(NLW_eeprom_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,DinA[63:36]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_eeprom_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_eeprom_reg_1_DOBDO_UNCONNECTED[31:28],DoutB1_out[63:36]}),
        .DOPADOP(NLW_eeprom_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_eeprom_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_eeprom_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(CEA),
        .ENBWREN(eeprom_reg_1_0),
        .INJECTDBITERR(NLW_eeprom_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_eeprom_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_eeprom_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(DoutB),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_eeprom_reg_1_SBITERR_UNCONNECTED),
        .WEA({int_WE,int_WE,int_WE,int_WE}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "CLK_gen" *) 
module DDS_top_DDS_core_ip_0_1_CLK_gen
   (HS_CLK,
    nHS_CLK,
    CLK,
    lock,
    \slv_reg0_reg[0] ,
    E,
    RESET_0,
    RESET_SER,
    SR,
    \slv_reg0_reg[0]_0 ,
    CE0,
    CEA,
    \slv_reg0_reg[0]_1 ,
    ref_CLK,
    Q,
    \Q_int_reg[0] ,
    \Q_int_reg[0]_0 ,
    s00_axi_aresetn,
    RESET);
  output HS_CLK;
  output nHS_CLK;
  output CLK;
  output lock;
  output \slv_reg0_reg[0] ;
  output [0:0]E;
  output RESET_0;
  output RESET_SER;
  output [0:0]SR;
  output [0:0]\slv_reg0_reg[0]_0 ;
  output CE0;
  output CEA;
  output \slv_reg0_reg[0]_1 ;
  input ref_CLK;
  input [4:0]Q;
  input \Q_int_reg[0] ;
  input \Q_int_reg[0]_0 ;
  input s00_axi_aresetn;
  input RESET;

  wire CE0;
  wire CEA;
  wire CLK;
  wire [0:0]E;
  wire FB_CLKout;
  wire HS_CLK;
  wire [4:0]Q;
  wire \Q_int_reg[0] ;
  wire \Q_int_reg[0]_0 ;
  wire RESET;
  wire RESET_0;
  wire RESET_SER;
  wire [0:0]SR;
  wire lock;
  wire nHS_CLK;
  wire ref_CLK;
  wire s00_axi_aresetn;
  wire \slv_reg0_reg[0] ;
  wire [0:0]\slv_reg0_reg[0]_0 ;
  wire \slv_reg0_reg[0]_1 ;
  wire NLW_PLLE2_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_PLLE2_BASE_inst_CLKOUT4_UNCONNECTED;
  wire NLW_PLLE2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_PLLE2_BASE_inst_DRDY_UNCONNECTED;
  wire [15:0]NLW_PLLE2_BASE_inst_DO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \DES_out_del[63]_i_1 
       (.I0(Q[2]),
        .I1(s00_axi_aresetn),
        .I2(Q[1]),
        .I3(RESET),
        .I4(Q[0]),
        .I5(lock),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    OSERDESE2_inst_i_10
       (.I0(Q[2]),
        .I1(s00_axi_aresetn),
        .I2(Q[1]),
        .I3(RESET),
        .I4(lock),
        .O(RESET_SER));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h80)) 
    OSERDESE2_inst_i_9
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(lock),
        .O(CE0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "PLLE2_BASE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("LOW"),
    .CLKFBOUT_MULT(9),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE(2),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(-22.500000),
    .CLKOUT1_DIVIDE(2),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(180.000000),
    .CLKOUT2_DIVIDE(8),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(128),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(128),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(128),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.000000),
    .STARTUP_WAIT("TRUE")) 
    PLLE2_BASE_inst
       (.CLKFBIN(FB_CLKout),
        .CLKFBOUT(FB_CLKout),
        .CLKIN1(ref_CLK),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(HS_CLK),
        .CLKOUT1(nHS_CLK),
        .CLKOUT2(CLK),
        .CLKOUT3(NLW_PLLE2_BASE_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_PLLE2_BASE_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_PLLE2_BASE_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_PLLE2_BASE_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_PLLE2_BASE_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(lock),
        .PWRDWN(1'b0),
        .RST(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h7070F870)) 
    \Q_int[0]_i_1 
       (.I0(Q[0]),
        .I1(lock),
        .I2(\Q_int_reg[0] ),
        .I3(Q[2]),
        .I4(\Q_int_reg[0]_0 ),
        .O(\slv_reg0_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h7)) 
    correct_i_2
       (.I0(lock),
        .I1(Q[0]),
        .O(\slv_reg0_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_1
       (.I0(Q[0]),
        .I1(lock),
        .O(CEA));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \out[23]_i_1 
       (.I0(\slv_reg0_reg[0]_0 ),
        .I1(Q[2]),
        .I2(s00_axi_aresetn),
        .I3(Q[1]),
        .I4(RESET),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \out[23]_i_2 
       (.I0(Q[0]),
        .I1(lock),
        .I2(Q[4]),
        .O(\slv_reg0_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFEF000000000000)) 
    \prbs[63]_i_1 
       (.I0(RESET),
        .I1(Q[1]),
        .I2(s00_axi_aresetn),
        .I3(Q[2]),
        .I4(lock),
        .I5(Q[0]),
        .O(RESET_0));
endmodule

(* ORIG_REF_NAME = "DDS_core" *) 
module DDS_top_DDS_core_ip_0_1_DDS_core
   (ref_CLK_0,
    Sample,
    slv_status_wire1,
    ref_CLK,
    Q,
    s00_axi_aresetn,
    RESET,
    \out_reg[13] ,
    DinA);
  output ref_CLK_0;
  output [7:0]Sample;
  output slv_status_wire1;
  input ref_CLK;
  input [4:0]Q;
  input s00_axi_aresetn;
  input RESET;
  input [13:0]\out_reg[13] ;
  input [63:0]DinA;

  wire CE0;
  wire DES_out_del;
  wire [63:0]DinA;
  wire HS_CLK;
  wire [23:14]PA_out;
  wire PLL_n_12;
  wire PLL_n_4;
  wire PLL_n_6;
  wire PLL_n_8;
  wire PLL_n_9;
  wire [4:0]Q;
  wire RESET;
  wire RESET_SER;
  wire [7:0]Sample;
  wire WE_gen_n_0;
  wire WE_gen_n_1;
  wire WE_gen_n_13;
  wire WE_gen_n_14;
  wire [9:0]addrA;
  wire \addrA_cnt[9]_i_3_n_0 ;
  wire [9:0]addrA_cnt_reg__0;
  wire [63:0]data;
  wire [63:0]data_BIST;
  wire [7:0]data_FB;
  wire int_CE;
  wire int_WE;
  wire lock;
  wire nHS_CLK;
  wire [13:0]\out_reg[13] ;
  wire [9:0]p_0_in__0;
  wire ref_CLK;
  wire ref_CLK_0;
  wire s00_axi_aresetn;
  wire slv_status_wire1;

  DDS_top_DDS_core_ip_0_1_BIST_logic BIST
       (.CLK(ref_CLK_0),
        .DoutB1_out(data),
        .E(DES_out_del),
        .HS_CLK(HS_CLK),
        .Q({Q[4],Q[2],Q[0]}),
        .RESET_SER(RESET_SER),
        .correct_reg_0(WE_gen_n_1),
        .correct_reg_1(PLL_n_12),
        .data_BIST(data_BIST),
        .data_FB(data_FB),
        .int_CE(int_CE),
        .lock(lock),
        .nHS_CLK(nHS_CLK),
        .\prbs_reg[63]_0 (PLL_n_6),
        .slv_status_wire1(slv_status_wire1));
  DDS_top_DDS_core_ip_0_1_BRAM_Controller BRAM
       (.CEA(int_CE),
        .CLK(ref_CLK_0),
        .DinA(DinA),
        .DoutB(WE_gen_n_13),
        .DoutB1_out(data),
        .Q(PA_out),
        .addrA(addrA),
        .eeprom_reg_1_0(WE_gen_n_14),
        .int_WE(int_WE));
  DDS_top_DDS_core_ip_0_1_Phase_acumulator PA
       (.CLK(ref_CLK_0),
        .E(PLL_n_9),
        .Q(Q[2:1]),
        .RESET(RESET),
        .SR(PLL_n_8),
        .\out_reg[13]_0 (\out_reg[13] ),
        .\out_reg[23]_0 (PA_out),
        .s00_axi_aresetn(s00_axi_aresetn));
  DDS_top_DDS_core_ip_0_1_CLK_gen PLL
       (.CE0(CE0),
        .CEA(int_CE),
        .CLK(ref_CLK_0),
        .E(DES_out_del),
        .HS_CLK(HS_CLK),
        .Q(Q),
        .\Q_int_reg[0] (WE_gen_n_0),
        .\Q_int_reg[0]_0 (WE_gen_n_1),
        .RESET(RESET),
        .RESET_0(PLL_n_6),
        .RESET_SER(RESET_SER),
        .SR(PLL_n_8),
        .lock(lock),
        .nHS_CLK(nHS_CLK),
        .ref_CLK(ref_CLK),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg0_reg[0] (PLL_n_4),
        .\slv_reg0_reg[0]_0 (PLL_n_9),
        .\slv_reg0_reg[0]_1 (PLL_n_12));
  DDS_top_DDS_core_ip_0_1_Debouncer WE_gen
       (.CLK(ref_CLK_0),
        .DoutB(WE_gen_n_13),
        .Q(Q[2:0]),
        .\Q_int_reg[0]_0 (WE_gen_n_0),
        .\Q_int_reg[0]_1 (PLL_n_4),
        .RESET(RESET),
        .addrA(addrA),
        .eeprom_reg_1(addrA_cnt_reg__0),
        .int_WE(int_WE),
        .lock(lock),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(WE_gen_n_1),
        .\slv_reg0_reg[0] (WE_gen_n_14));
  LUT1 #(
    .INIT(2'h1)) 
    \addrA_cnt[0]_i_1 
       (.I0(addrA_cnt_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addrA_cnt[1]_i_1 
       (.I0(addrA_cnt_reg__0[0]),
        .I1(addrA_cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addrA_cnt[2]_i_1 
       (.I0(addrA_cnt_reg__0[1]),
        .I1(addrA_cnt_reg__0[0]),
        .I2(addrA_cnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addrA_cnt[3]_i_1 
       (.I0(addrA_cnt_reg__0[2]),
        .I1(addrA_cnt_reg__0[0]),
        .I2(addrA_cnt_reg__0[1]),
        .I3(addrA_cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addrA_cnt[4]_i_1 
       (.I0(addrA_cnt_reg__0[3]),
        .I1(addrA_cnt_reg__0[1]),
        .I2(addrA_cnt_reg__0[0]),
        .I3(addrA_cnt_reg__0[2]),
        .I4(addrA_cnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \addrA_cnt[5]_i_1 
       (.I0(addrA_cnt_reg__0[4]),
        .I1(addrA_cnt_reg__0[2]),
        .I2(addrA_cnt_reg__0[0]),
        .I3(addrA_cnt_reg__0[1]),
        .I4(addrA_cnt_reg__0[3]),
        .I5(addrA_cnt_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addrA_cnt[6]_i_1 
       (.I0(\addrA_cnt[9]_i_3_n_0 ),
        .I1(addrA_cnt_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \addrA_cnt[7]_i_1 
       (.I0(addrA_cnt_reg__0[6]),
        .I1(\addrA_cnt[9]_i_3_n_0 ),
        .I2(addrA_cnt_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \addrA_cnt[8]_i_1 
       (.I0(\addrA_cnt[9]_i_3_n_0 ),
        .I1(addrA_cnt_reg__0[6]),
        .I2(addrA_cnt_reg__0[7]),
        .I3(addrA_cnt_reg__0[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \addrA_cnt[9]_i_2 
       (.I0(\addrA_cnt[9]_i_3_n_0 ),
        .I1(addrA_cnt_reg__0[8]),
        .I2(addrA_cnt_reg__0[7]),
        .I3(addrA_cnt_reg__0[6]),
        .I4(addrA_cnt_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \addrA_cnt[9]_i_3 
       (.I0(addrA_cnt_reg__0[4]),
        .I1(addrA_cnt_reg__0[2]),
        .I2(addrA_cnt_reg__0[0]),
        .I3(addrA_cnt_reg__0[1]),
        .I4(addrA_cnt_reg__0[3]),
        .I5(addrA_cnt_reg__0[5]),
        .O(\addrA_cnt[9]_i_3_n_0 ));
  FDRE \addrA_cnt_reg[0] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[0]),
        .Q(addrA_cnt_reg__0[0]),
        .R(WE_gen_n_1));
  FDRE \addrA_cnt_reg[1] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[1]),
        .Q(addrA_cnt_reg__0[1]),
        .R(WE_gen_n_1));
  FDRE \addrA_cnt_reg[2] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[2]),
        .Q(addrA_cnt_reg__0[2]),
        .R(WE_gen_n_1));
  FDRE \addrA_cnt_reg[3] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[3]),
        .Q(addrA_cnt_reg__0[3]),
        .R(WE_gen_n_1));
  FDRE \addrA_cnt_reg[4] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[4]),
        .Q(addrA_cnt_reg__0[4]),
        .R(WE_gen_n_1));
  FDRE \addrA_cnt_reg[5] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[5]),
        .Q(addrA_cnt_reg__0[5]),
        .R(WE_gen_n_1));
  FDRE \addrA_cnt_reg[6] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[6]),
        .Q(addrA_cnt_reg__0[6]),
        .R(WE_gen_n_1));
  FDRE \addrA_cnt_reg[7] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[7]),
        .Q(addrA_cnt_reg__0[7]),
        .R(WE_gen_n_1));
  FDRE \addrA_cnt_reg[8] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[8]),
        .Q(addrA_cnt_reg__0[8]),
        .R(WE_gen_n_1));
  FDRE \addrA_cnt_reg[9] 
       (.C(ref_CLK_0),
        .CE(int_WE),
        .D(p_0_in__0[9]),
        .Q(addrA_cnt_reg__0[9]),
        .R(WE_gen_n_1));
  DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2 \genblk1[0].SER_i 
       (.CE0(CE0),
        .CLK(ref_CLK_0),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .Sample(Sample[0]),
        .data_BIST({data_BIST[56],data_BIST[48],data_BIST[40],data_BIST[32],data_BIST[24],data_BIST[16],data_BIST[8],data_BIST[0]}),
        .data_FB(data_FB[0]));
  DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_0 \genblk1[1].SER_i 
       (.CE0(CE0),
        .CLK(ref_CLK_0),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .Sample(Sample[1]),
        .data_BIST({data_BIST[57],data_BIST[49],data_BIST[41],data_BIST[33],data_BIST[25],data_BIST[17],data_BIST[9],data_BIST[1]}),
        .data_FB(data_FB[1]));
  DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_1 \genblk1[2].SER_i 
       (.CE0(CE0),
        .CLK(ref_CLK_0),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .Sample(Sample[2]),
        .data_BIST({data_BIST[58],data_BIST[50],data_BIST[42],data_BIST[34],data_BIST[26],data_BIST[18],data_BIST[10],data_BIST[2]}),
        .data_FB(data_FB[2]));
  DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_2 \genblk1[3].SER_i 
       (.CE0(CE0),
        .CLK(ref_CLK_0),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .Sample(Sample[3]),
        .data_BIST({data_BIST[59],data_BIST[51],data_BIST[43],data_BIST[35],data_BIST[27],data_BIST[19],data_BIST[11],data_BIST[3]}),
        .data_FB(data_FB[3]));
  DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_3 \genblk1[4].SER_i 
       (.CE0(CE0),
        .CLK(ref_CLK_0),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .Sample(Sample[4]),
        .data_BIST({data_BIST[60],data_BIST[52],data_BIST[44],data_BIST[36],data_BIST[28],data_BIST[20],data_BIST[12],data_BIST[4]}),
        .data_FB(data_FB[4]));
  DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_4 \genblk1[5].SER_i 
       (.CE0(CE0),
        .CLK(ref_CLK_0),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .Sample(Sample[5]),
        .data_BIST({data_BIST[61],data_BIST[53],data_BIST[45],data_BIST[37],data_BIST[29],data_BIST[21],data_BIST[13],data_BIST[5]}),
        .data_FB(data_FB[5]));
  DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_5 \genblk1[6].SER_i 
       (.CE0(CE0),
        .CLK(ref_CLK_0),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .Sample(Sample[6]),
        .data_BIST({data_BIST[62],data_BIST[54],data_BIST[46],data_BIST[38],data_BIST[30],data_BIST[22],data_BIST[14],data_BIST[6]}),
        .data_FB(data_FB[6]));
  DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_6 \genblk1[7].SER_i 
       (.CE0(CE0),
        .CLK(ref_CLK_0),
        .HS_CLK(HS_CLK),
        .RESET_SER(RESET_SER),
        .Sample(Sample[7]),
        .data_BIST({data_BIST[63],data_BIST[55],data_BIST[47],data_BIST[39],data_BIST[31],data_BIST[23],data_BIST[15],data_BIST[7]}),
        .data_FB(data_FB[7]));
endmodule

(* ORIG_REF_NAME = "DDS_core_ip_v1_0" *) 
module DDS_top_DDS_core_ip_0_1_DDS_core_ip_v1_0
   (LS_CLK,
    Sample,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    RESET,
    ref_CLK,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output LS_CLK;
  output [7:0]Sample;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input RESET;
  input ref_CLK;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire LS_CLK;
  wire RESET;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]Sample;
  wire ref_CLK;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  DDS_top_DDS_core_ip_0_1_DDS_core_ip_v1_0_S00_AXI DDS_core_ip_v1_0_S00_AXI_inst
       (.LS_CLK(LS_CLK),
        .RESET(RESET),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .Sample(Sample),
        .ref_CLK(ref_CLK),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "DDS_core_ip_v1_0_S00_AXI" *) 
module DDS_top_DDS_core_ip_0_1_DDS_core_ip_v1_0_S00_AXI
   (LS_CLK,
    Sample,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aresetn,
    RESET,
    ref_CLK,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output LS_CLK;
  output [7:0]Sample;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aresetn;
  input RESET;
  input ref_CLK;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire ARESET;
  wire LS_CLK;
  wire RESET;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]Sample;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [2:0]p_0_in;
  wire ref_CLK;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [4:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [13:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [0:0]slv_reg4;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire slv_status_wire1;

  DDS_top_DDS_core_ip_0_1_DDS_core DDS_core_inst
       (.DinA({slv_reg3,slv_reg2}),
        .Q(slv_reg0),
        .RESET(RESET),
        .Sample(Sample),
        .\out_reg[13] (slv_reg1),
        .ref_CLK(ref_CLK),
        .ref_CLK_0(LS_CLK),
        .s00_axi_aresetn(s00_axi_aresetn),
        .slv_status_wire1(slv_status_wire1));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(ARESET));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(ARESET));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(ARESET));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(ARESET));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(ARESET));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(ARESET));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(ARESET));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(ARESET));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(ARESET));
  LUT6 #(
    .INIT(64'hAABAAABBAABAAAAA)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(slv_reg4),
        .I3(sel0[1]),
        .I4(sel0[2]),
        .I5(slv_reg0[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'h00F000CC00AA0000)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg1[0]),
        .I1(slv_reg2[0]),
        .I2(slv_reg3[0]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[10]_i_2_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[10]_i_2 
       (.I0(\slv_reg0_reg_n_0_[10] ),
        .I1(slv_reg1[10]),
        .I2(slv_reg2[10]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[11]_i_2_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[11]_i_2 
       (.I0(\slv_reg0_reg_n_0_[11] ),
        .I1(slv_reg1[11]),
        .I2(slv_reg2[11]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[12]_i_2_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[12]_i_2 
       (.I0(\slv_reg0_reg_n_0_[12] ),
        .I1(slv_reg1[12]),
        .I2(slv_reg2[12]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[13]_i_2_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[13]_i_2 
       (.I0(\slv_reg0_reg_n_0_[13] ),
        .I1(slv_reg1[13]),
        .I2(slv_reg2[13]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[14]_i_2_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[14]_i_2 
       (.I0(\slv_reg0_reg_n_0_[14] ),
        .I1(\slv_reg1_reg_n_0_[14] ),
        .I2(slv_reg2[14]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[15]_i_2_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[15]_i_2 
       (.I0(\slv_reg0_reg_n_0_[15] ),
        .I1(\slv_reg1_reg_n_0_[15] ),
        .I2(slv_reg2[15]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[16]_i_2_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[16]_i_2 
       (.I0(\slv_reg0_reg_n_0_[16] ),
        .I1(\slv_reg1_reg_n_0_[16] ),
        .I2(slv_reg2[16]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[17]_i_2_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[17]_i_2 
       (.I0(\slv_reg0_reg_n_0_[17] ),
        .I1(\slv_reg1_reg_n_0_[17] ),
        .I2(slv_reg2[17]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[18]_i_2_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[18]_i_2 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(\slv_reg1_reg_n_0_[18] ),
        .I2(slv_reg2[18]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[19]_i_2_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[19]_i_2 
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .I2(slv_reg2[19]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[1]_i_2_n_0 ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg0[1]),
        .I1(slv_reg1[1]),
        .I2(slv_reg2[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[20]_i_2_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[20]_i_2 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(\slv_reg1_reg_n_0_[20] ),
        .I2(slv_reg2[20]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[21]_i_2_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[21]_i_2 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(\slv_reg1_reg_n_0_[21] ),
        .I2(slv_reg2[21]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[22]_i_2_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[22]_i_2 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(\slv_reg1_reg_n_0_[22] ),
        .I2(slv_reg2[22]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[23]_i_2_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[23]_i_2 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(\slv_reg1_reg_n_0_[23] ),
        .I2(slv_reg2[23]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[24]_i_2_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[24]_i_2 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(\slv_reg1_reg_n_0_[24] ),
        .I2(slv_reg2[24]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[25]_i_2_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[25]_i_2 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(\slv_reg1_reg_n_0_[25] ),
        .I2(slv_reg2[25]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[26]_i_2_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[26]_i_2 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(\slv_reg1_reg_n_0_[26] ),
        .I2(slv_reg2[26]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[27]_i_2_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[27]_i_2 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(\slv_reg1_reg_n_0_[27] ),
        .I2(slv_reg2[27]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[28]_i_2_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[28]_i_2 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(\slv_reg1_reg_n_0_[28] ),
        .I2(slv_reg2[28]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[29]_i_2_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[29]_i_2 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(\slv_reg1_reg_n_0_[29] ),
        .I2(slv_reg2[29]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[2]_i_2_n_0 ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg0[2]),
        .I1(slv_reg1[2]),
        .I2(slv_reg2[2]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[30]_i_2_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[30]_i_2 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(\slv_reg1_reg_n_0_[30] ),
        .I2(slv_reg2[30]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg3[31]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[31]_i_2_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[31]_i_2 
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(\slv_reg1_reg_n_0_[31] ),
        .I2(slv_reg2[31]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[3]_i_2_n_0 ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg0[3]),
        .I1(slv_reg1[3]),
        .I2(slv_reg2[3]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[4]_i_2_n_0 ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg0[4]),
        .I1(slv_reg1[4]),
        .I2(slv_reg2[4]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[5]_i_2_n_0 ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[5]_i_2 
       (.I0(\slv_reg0_reg_n_0_[5] ),
        .I1(slv_reg1[5]),
        .I2(slv_reg2[5]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[6]_i_2_n_0 ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[6]_i_2 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(slv_reg1[6]),
        .I2(slv_reg2[6]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[7]_i_2_n_0 ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[7]_i_2 
       (.I0(\slv_reg0_reg_n_0_[7] ),
        .I1(slv_reg1[7]),
        .I2(slv_reg2[7]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[8]_i_2_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[8]_i_2 
       (.I0(\slv_reg0_reg_n_0_[8] ),
        .I1(slv_reg1[8]),
        .I2(slv_reg2[8]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[9]_i_2_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'h000000F000CC00AA)) 
    \axi_rdata[9]_i_2 
       (.I0(\slv_reg0_reg_n_0_[9] ),
        .I1(slv_reg1[9]),
        .I2(slv_reg2[9]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(ARESET));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(ARESET));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(ARESET));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(ARESET));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(ARESET));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(ARESET));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(ARESET));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(ARESET));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(ARESET));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(ARESET));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(ARESET));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(ARESET));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(ARESET));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(ARESET));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(ARESET));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(ARESET));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(ARESET));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(ARESET));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(ARESET));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(ARESET));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(ARESET));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(ARESET));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(ARESET));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(ARESET));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(ARESET));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(ARESET));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(ARESET));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(ARESET));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(ARESET));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(ARESET));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(ARESET));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(ARESET));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(ARESET));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDSE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .S(ARESET));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(ARESET));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(ARESET));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(ARESET));
  FDSE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .S(ARESET));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(ARESET));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(ARESET));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDSE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .S(ARESET));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(ARESET));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(ARESET));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(ARESET));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(ARESET));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(ARESET));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(ARESET));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(ARESET));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(ARESET));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(ARESET));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(ARESET));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(ARESET));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(ARESET));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(ARESET));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(ARESET));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(ARESET));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(ARESET));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(ARESET));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(ARESET));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(ARESET));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(ARESET));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(ARESET));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(ARESET));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(ARESET));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(ARESET));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(ARESET));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(ARESET));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(ARESET));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(ARESET));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(ARESET));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(ARESET));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(ARESET));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(ARESET));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(ARESET));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(ARESET));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(ARESET));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(ARESET));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(ARESET));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(ARESET));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(ARESET));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(ARESET));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(ARESET));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(ARESET));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(ARESET));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(ARESET));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(ARESET));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(ARESET));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(ARESET));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(ARESET));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(ARESET));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(ARESET));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(ARESET));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(ARESET));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(ARESET));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(ARESET));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(ARESET));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(ARESET));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(ARESET));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(ARESET));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(ARESET));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(ARESET));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(ARESET));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(ARESET));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(ARESET));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(ARESET));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(ARESET));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(ARESET));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(ARESET));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(ARESET));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(ARESET));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(ARESET));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(ARESET));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(ARESET));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(ARESET));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(ARESET));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(ARESET));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(ARESET));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(ARESET));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(slv_status_wire1),
        .Q(slv_reg4),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module DDS_top_DDS_core_ip_0_1_Debouncer
   (\Q_int_reg[0]_0 ,
    s00_axi_aresetn_0,
    addrA,
    int_WE,
    DoutB,
    \slv_reg0_reg[0] ,
    Q,
    lock,
    eeprom_reg_1,
    s00_axi_aresetn,
    RESET,
    CLK,
    \Q_int_reg[0]_1 );
  output \Q_int_reg[0]_0 ;
  output s00_axi_aresetn_0;
  output [9:0]addrA;
  output int_WE;
  output DoutB;
  output \slv_reg0_reg[0] ;
  input [2:0]Q;
  input lock;
  input [9:0]eeprom_reg_1;
  input s00_axi_aresetn;
  input RESET;
  input CLK;
  input \Q_int_reg[0]_1 ;

  wire CLK;
  wire DoutB;
  wire [2:0]Q;
  wire \Q_int[1]_i_1_n_0 ;
  wire \Q_int[2]_i_1_n_0 ;
  wire \Q_int_reg[0]_0 ;
  wire \Q_int_reg[0]_1 ;
  wire \Q_int_reg_n_0_[1] ;
  wire \Q_int_reg_n_0_[2] ;
  wire RESET;
  wire [9:0]addrA;
  wire [9:0]eeprom_reg_1;
  wire int_WE;
  wire lock;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire \slv_reg0_reg[0] ;

  LUT5 #(
    .INIT(32'h7070F870)) 
    \Q_int[1]_i_1 
       (.I0(Q[0]),
        .I1(lock),
        .I2(\Q_int_reg_n_0_[1] ),
        .I3(\Q_int_reg[0]_0 ),
        .I4(s00_axi_aresetn_0),
        .O(\Q_int[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7070F870)) 
    \Q_int[2]_i_1 
       (.I0(Q[0]),
        .I1(lock),
        .I2(\Q_int_reg_n_0_[2] ),
        .I3(\Q_int_reg_n_0_[1] ),
        .I4(s00_axi_aresetn_0),
        .O(\Q_int[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q_int_reg[0]_1 ),
        .Q(\Q_int_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q_int[1]_i_1_n_0 ),
        .Q(\Q_int_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_int_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q_int[2]_i_1_n_0 ),
        .Q(\Q_int_reg_n_0_[2] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFD)) 
    \addrA_cnt[9]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(Q[1]),
        .I2(RESET),
        .O(s00_axi_aresetn_0));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_10
       (.I0(eeprom_reg_1[3]),
        .I1(int_WE),
        .O(addrA[3]));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_11
       (.I0(eeprom_reg_1[2]),
        .I1(int_WE),
        .O(addrA[2]));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_12
       (.I0(eeprom_reg_1[1]),
        .I1(int_WE),
        .O(addrA[1]));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_13
       (.I0(eeprom_reg_1[0]),
        .I1(int_WE),
        .O(addrA[0]));
  LUT5 #(
    .INIT(32'h00800000)) 
    eeprom_reg_0_i_14
       (.I0(lock),
        .I1(Q[0]),
        .I2(\Q_int_reg_n_0_[1] ),
        .I3(\Q_int_reg_n_0_[2] ),
        .I4(\Q_int_reg[0]_0 ),
        .O(int_WE));
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    eeprom_reg_0_i_2
       (.I0(lock),
        .I1(Q[0]),
        .I2(\Q_int_reg_n_0_[1] ),
        .I3(\Q_int_reg_n_0_[2] ),
        .I4(\Q_int_reg[0]_0 ),
        .O(\slv_reg0_reg[0] ));
  LUT6 #(
    .INIT(64'hA2AAFFFFFFFFFFFF)) 
    eeprom_reg_0_i_3
       (.I0(Q[2]),
        .I1(\Q_int_reg_n_0_[1] ),
        .I2(\Q_int_reg_n_0_[2] ),
        .I3(\Q_int_reg[0]_0 ),
        .I4(Q[0]),
        .I5(lock),
        .O(DoutB));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_4
       (.I0(eeprom_reg_1[9]),
        .I1(int_WE),
        .O(addrA[9]));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_5
       (.I0(eeprom_reg_1[8]),
        .I1(int_WE),
        .O(addrA[8]));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_6
       (.I0(eeprom_reg_1[7]),
        .I1(int_WE),
        .O(addrA[7]));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_7
       (.I0(eeprom_reg_1[6]),
        .I1(int_WE),
        .O(addrA[6]));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_8
       (.I0(eeprom_reg_1[5]),
        .I1(int_WE),
        .O(addrA[5]));
  LUT2 #(
    .INIT(4'h8)) 
    eeprom_reg_0_i_9
       (.I0(eeprom_reg_1[4]),
        .I1(int_WE),
        .O(addrA[4]));
endmodule

(* ORIG_REF_NAME = "Delay" *) 
module DDS_top_DDS_core_ip_0_1_Delay
   (\slv_reg0_reg[2] ,
    eeprom_reg_0,
    eeprom_reg_0_0,
    eeprom_reg_0_1,
    eeprom_reg_0_2,
    eeprom_reg_0_3,
    eeprom_reg_0_4,
    eeprom_reg_0_5,
    eeprom_reg_0_6,
    eeprom_reg_0_7,
    eeprom_reg_0_8,
    eeprom_reg_0_9,
    eeprom_reg_0_10,
    eeprom_reg_0_11,
    eeprom_reg_0_12,
    eeprom_reg_0_13,
    eeprom_reg_0_14,
    eeprom_reg_0_15,
    eeprom_reg_0_16,
    eeprom_reg_0_17,
    eeprom_reg_0_18,
    eeprom_reg_0_19,
    eeprom_reg_0_20,
    eeprom_reg_0_21,
    eeprom_reg_0_22,
    eeprom_reg_0_23,
    eeprom_reg_0_24,
    eeprom_reg_0_25,
    eeprom_reg_0_26,
    eeprom_reg_0_27,
    eeprom_reg_0_28,
    eeprom_reg_0_29,
    eeprom_reg_0_30,
    eeprom_reg_0_31,
    eeprom_reg_0_32,
    eeprom_reg_0_33,
    eeprom_reg_0_34,
    eeprom_reg_1,
    eeprom_reg_1_0,
    eeprom_reg_1_1,
    eeprom_reg_1_2,
    eeprom_reg_1_3,
    eeprom_reg_1_4,
    eeprom_reg_1_5,
    eeprom_reg_1_6,
    eeprom_reg_1_7,
    eeprom_reg_1_8,
    eeprom_reg_1_9,
    eeprom_reg_1_10,
    eeprom_reg_1_11,
    eeprom_reg_1_12,
    eeprom_reg_1_13,
    eeprom_reg_1_14,
    eeprom_reg_1_15,
    eeprom_reg_1_16,
    eeprom_reg_1_17,
    eeprom_reg_1_18,
    eeprom_reg_1_19,
    eeprom_reg_1_20,
    eeprom_reg_1_21,
    eeprom_reg_1_22,
    eeprom_reg_1_23,
    eeprom_reg_1_24,
    eeprom_reg_1_25,
    eeprom_reg_1_26,
    data_BIST,
    E,
    correct_reg,
    Q,
    correct_reg_0,
    correct_int,
    slv_status_wire1,
    DoutB1_out,
    \Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r ,
    lock,
    CLK);
  output \slv_reg0_reg[2] ;
  output eeprom_reg_0;
  output eeprom_reg_0_0;
  output eeprom_reg_0_1;
  output eeprom_reg_0_2;
  output eeprom_reg_0_3;
  output eeprom_reg_0_4;
  output eeprom_reg_0_5;
  output eeprom_reg_0_6;
  output eeprom_reg_0_7;
  output eeprom_reg_0_8;
  output eeprom_reg_0_9;
  output eeprom_reg_0_10;
  output eeprom_reg_0_11;
  output eeprom_reg_0_12;
  output eeprom_reg_0_13;
  output eeprom_reg_0_14;
  output eeprom_reg_0_15;
  output eeprom_reg_0_16;
  output eeprom_reg_0_17;
  output eeprom_reg_0_18;
  output eeprom_reg_0_19;
  output eeprom_reg_0_20;
  output eeprom_reg_0_21;
  output eeprom_reg_0_22;
  output eeprom_reg_0_23;
  output eeprom_reg_0_24;
  output eeprom_reg_0_25;
  output eeprom_reg_0_26;
  output eeprom_reg_0_27;
  output eeprom_reg_0_28;
  output eeprom_reg_0_29;
  output eeprom_reg_0_30;
  output eeprom_reg_0_31;
  output eeprom_reg_0_32;
  output eeprom_reg_0_33;
  output eeprom_reg_0_34;
  output eeprom_reg_1;
  output eeprom_reg_1_0;
  output eeprom_reg_1_1;
  output eeprom_reg_1_2;
  output eeprom_reg_1_3;
  output eeprom_reg_1_4;
  output eeprom_reg_1_5;
  output eeprom_reg_1_6;
  output eeprom_reg_1_7;
  output eeprom_reg_1_8;
  output eeprom_reg_1_9;
  output eeprom_reg_1_10;
  output eeprom_reg_1_11;
  output eeprom_reg_1_12;
  output eeprom_reg_1_13;
  output eeprom_reg_1_14;
  output eeprom_reg_1_15;
  output eeprom_reg_1_16;
  output eeprom_reg_1_17;
  output eeprom_reg_1_18;
  output eeprom_reg_1_19;
  output eeprom_reg_1_20;
  output eeprom_reg_1_21;
  output eeprom_reg_1_22;
  output eeprom_reg_1_23;
  output eeprom_reg_1_24;
  output eeprom_reg_1_25;
  output eeprom_reg_1_26;
  output [63:0]data_BIST;
  output [0:0]E;
  input correct_reg;
  input [2:0]Q;
  input correct_reg_0;
  input correct_int;
  input slv_status_wire1;
  input [63:0]DoutB1_out;
  input [63:0]\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r ;
  input lock;
  input CLK;

  wire CLK;
  wire [63:0]\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r ;
  wire [63:0]DoutB1_out;
  wire [0:0]E;
  wire OSERDESE2_inst_i_11_n_0;
  wire [2:0]Q;
  wire correct_int;
  wire correct_reg;
  wire correct_reg_0;
  wire [63:0]data_BIST;
  wire \del_int[0]_i_1_n_0 ;
  wire \del_int[1]_i_1_n_0 ;
  wire \del_int_reg_n_0_[0] ;
  wire \del_int_reg_n_0_[1] ;
  wire eeprom_reg_0;
  wire eeprom_reg_0_0;
  wire eeprom_reg_0_1;
  wire eeprom_reg_0_10;
  wire eeprom_reg_0_11;
  wire eeprom_reg_0_12;
  wire eeprom_reg_0_13;
  wire eeprom_reg_0_14;
  wire eeprom_reg_0_15;
  wire eeprom_reg_0_16;
  wire eeprom_reg_0_17;
  wire eeprom_reg_0_18;
  wire eeprom_reg_0_19;
  wire eeprom_reg_0_2;
  wire eeprom_reg_0_20;
  wire eeprom_reg_0_21;
  wire eeprom_reg_0_22;
  wire eeprom_reg_0_23;
  wire eeprom_reg_0_24;
  wire eeprom_reg_0_25;
  wire eeprom_reg_0_26;
  wire eeprom_reg_0_27;
  wire eeprom_reg_0_28;
  wire eeprom_reg_0_29;
  wire eeprom_reg_0_3;
  wire eeprom_reg_0_30;
  wire eeprom_reg_0_31;
  wire eeprom_reg_0_32;
  wire eeprom_reg_0_33;
  wire eeprom_reg_0_34;
  wire eeprom_reg_0_4;
  wire eeprom_reg_0_5;
  wire eeprom_reg_0_6;
  wire eeprom_reg_0_7;
  wire eeprom_reg_0_8;
  wire eeprom_reg_0_9;
  wire eeprom_reg_1;
  wire eeprom_reg_1_0;
  wire eeprom_reg_1_1;
  wire eeprom_reg_1_10;
  wire eeprom_reg_1_11;
  wire eeprom_reg_1_12;
  wire eeprom_reg_1_13;
  wire eeprom_reg_1_14;
  wire eeprom_reg_1_15;
  wire eeprom_reg_1_16;
  wire eeprom_reg_1_17;
  wire eeprom_reg_1_18;
  wire eeprom_reg_1_19;
  wire eeprom_reg_1_2;
  wire eeprom_reg_1_20;
  wire eeprom_reg_1_21;
  wire eeprom_reg_1_22;
  wire eeprom_reg_1_23;
  wire eeprom_reg_1_24;
  wire eeprom_reg_1_25;
  wire eeprom_reg_1_26;
  wire eeprom_reg_1_3;
  wire eeprom_reg_1_4;
  wire eeprom_reg_1_5;
  wire eeprom_reg_1_6;
  wire eeprom_reg_1_7;
  wire eeprom_reg_1_8;
  wire eeprom_reg_1_9;
  wire lock;
  wire \slv_reg0_reg[2] ;
  wire slv_status_wire1;

  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[0]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[0]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [0]),
        .O(eeprom_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[10]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[10]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [10]),
        .O(eeprom_reg_0_9));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[11]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[11]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [11]),
        .O(eeprom_reg_0_10));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[12]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[12]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [12]),
        .O(eeprom_reg_0_11));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[13]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[13]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [13]),
        .O(eeprom_reg_0_12));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[14]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[14]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [14]),
        .O(eeprom_reg_0_13));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[15]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[15]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [15]),
        .O(eeprom_reg_0_14));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[16]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[16]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [16]),
        .O(eeprom_reg_0_15));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[17]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[17]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [17]),
        .O(eeprom_reg_0_16));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[18]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[18]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [18]),
        .O(eeprom_reg_0_17));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[19]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[19]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [19]),
        .O(eeprom_reg_0_18));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[1]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[1]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [1]),
        .O(eeprom_reg_0_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[20]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[20]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [20]),
        .O(eeprom_reg_0_19));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[21]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[21]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [21]),
        .O(eeprom_reg_0_20));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[22]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[22]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [22]),
        .O(eeprom_reg_0_21));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[23]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[23]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [23]),
        .O(eeprom_reg_0_22));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[24]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[24]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [24]),
        .O(eeprom_reg_0_23));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[25]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[25]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [25]),
        .O(eeprom_reg_0_24));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[26]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[26]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [26]),
        .O(eeprom_reg_0_25));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[27]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[27]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [27]),
        .O(eeprom_reg_0_26));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[28]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[28]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [28]),
        .O(eeprom_reg_0_27));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[29]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[29]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [29]),
        .O(eeprom_reg_0_28));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[2]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[2]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [2]),
        .O(eeprom_reg_0_1));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[30]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[30]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [30]),
        .O(eeprom_reg_0_29));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[31]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[31]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [31]),
        .O(eeprom_reg_0_30));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[32]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[32]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [32]),
        .O(eeprom_reg_0_31));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[33]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[33]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [33]),
        .O(eeprom_reg_0_32));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[34]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[34]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [34]),
        .O(eeprom_reg_0_33));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[35]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[35]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [35]),
        .O(eeprom_reg_0_34));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[36]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[36]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [36]),
        .O(eeprom_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[37]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[37]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [37]),
        .O(eeprom_reg_1_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[38]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[38]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [38]),
        .O(eeprom_reg_1_1));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[39]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[39]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [39]),
        .O(eeprom_reg_1_2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[3]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[3]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [3]),
        .O(eeprom_reg_0_2));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[40]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[40]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [40]),
        .O(eeprom_reg_1_3));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[41]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[41]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [41]),
        .O(eeprom_reg_1_4));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[42]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[42]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [42]),
        .O(eeprom_reg_1_5));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[43]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[43]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [43]),
        .O(eeprom_reg_1_6));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[44]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[44]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [44]),
        .O(eeprom_reg_1_7));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[45]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[45]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [45]),
        .O(eeprom_reg_1_8));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[46]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[46]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [46]),
        .O(eeprom_reg_1_9));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[47]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[47]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [47]),
        .O(eeprom_reg_1_10));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[48]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[48]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [48]),
        .O(eeprom_reg_1_11));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[49]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[49]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [49]),
        .O(eeprom_reg_1_12));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[4]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[4]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [4]),
        .O(eeprom_reg_0_3));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[50]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[50]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [50]),
        .O(eeprom_reg_1_13));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[51]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[51]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [51]),
        .O(eeprom_reg_1_14));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[52]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[52]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [52]),
        .O(eeprom_reg_1_15));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[53]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[53]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [53]),
        .O(eeprom_reg_1_16));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[54]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[54]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [54]),
        .O(eeprom_reg_1_17));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[55]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[55]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [55]),
        .O(eeprom_reg_1_18));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[56]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[56]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [56]),
        .O(eeprom_reg_1_19));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[57]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[57]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [57]),
        .O(eeprom_reg_1_20));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[58]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[58]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [58]),
        .O(eeprom_reg_1_21));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[59]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[59]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [59]),
        .O(eeprom_reg_1_22));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[5]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[5]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [5]),
        .O(eeprom_reg_0_4));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[60]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[60]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [60]),
        .O(eeprom_reg_1_23));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[61]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[61]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [61]),
        .O(eeprom_reg_1_24));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[62]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[62]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [62]),
        .O(eeprom_reg_1_25));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[63]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[63]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [63]),
        .O(eeprom_reg_1_26));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[6]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[6]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [6]),
        .O(eeprom_reg_0_5));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[7]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[7]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [7]),
        .O(eeprom_reg_0_6));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[8]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[8]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [8]),
        .O(eeprom_reg_0_7));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Din_del2_reg[9]_srl2___inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del2_reg_r_i_1 
       (.I0(DoutB1_out[9]),
        .I1(OSERDESE2_inst_i_11_n_0),
        .I2(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [9]),
        .O(eeprom_reg_0_8));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_1
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [0]),
        .I2(Q[2]),
        .I3(DoutB1_out[0]),
        .O(data_BIST[0]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    OSERDESE2_inst_i_11
       (.I0(Q[2]),
        .I1(lock),
        .I2(Q[0]),
        .I3(\del_int_reg_n_0_[1] ),
        .I4(\del_int_reg_n_0_[0] ),
        .O(OSERDESE2_inst_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_1__0
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [1]),
        .I2(Q[2]),
        .I3(DoutB1_out[1]),
        .O(data_BIST[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_1__1
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [2]),
        .I2(Q[2]),
        .I3(DoutB1_out[2]),
        .O(data_BIST[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_1__2
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [3]),
        .I2(Q[2]),
        .I3(DoutB1_out[3]),
        .O(data_BIST[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_1__3
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [4]),
        .I2(Q[2]),
        .I3(DoutB1_out[4]),
        .O(data_BIST[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_1__4
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [5]),
        .I2(Q[2]),
        .I3(DoutB1_out[5]),
        .O(data_BIST[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_1__5
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [6]),
        .I2(Q[2]),
        .I3(DoutB1_out[6]),
        .O(data_BIST[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_1__6
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [7]),
        .I2(Q[2]),
        .I3(DoutB1_out[7]),
        .O(data_BIST[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_2
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [8]),
        .I2(Q[2]),
        .I3(DoutB1_out[8]),
        .O(data_BIST[8]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_2__0
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [9]),
        .I2(Q[2]),
        .I3(DoutB1_out[9]),
        .O(data_BIST[9]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_2__1
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [10]),
        .I2(Q[2]),
        .I3(DoutB1_out[10]),
        .O(data_BIST[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_2__2
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [11]),
        .I2(Q[2]),
        .I3(DoutB1_out[11]),
        .O(data_BIST[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_2__3
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [12]),
        .I2(Q[2]),
        .I3(DoutB1_out[12]),
        .O(data_BIST[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_2__4
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [13]),
        .I2(Q[2]),
        .I3(DoutB1_out[13]),
        .O(data_BIST[13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_2__5
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [14]),
        .I2(Q[2]),
        .I3(DoutB1_out[14]),
        .O(data_BIST[14]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_2__6
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [15]),
        .I2(Q[2]),
        .I3(DoutB1_out[15]),
        .O(data_BIST[15]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_3
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [16]),
        .I2(Q[2]),
        .I3(DoutB1_out[16]),
        .O(data_BIST[16]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_3__0
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [17]),
        .I2(Q[2]),
        .I3(DoutB1_out[17]),
        .O(data_BIST[17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_3__1
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [18]),
        .I2(Q[2]),
        .I3(DoutB1_out[18]),
        .O(data_BIST[18]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_3__2
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [19]),
        .I2(Q[2]),
        .I3(DoutB1_out[19]),
        .O(data_BIST[19]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_3__3
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [20]),
        .I2(Q[2]),
        .I3(DoutB1_out[20]),
        .O(data_BIST[20]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_3__4
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [21]),
        .I2(Q[2]),
        .I3(DoutB1_out[21]),
        .O(data_BIST[21]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_3__5
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [22]),
        .I2(Q[2]),
        .I3(DoutB1_out[22]),
        .O(data_BIST[22]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_3__6
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [23]),
        .I2(Q[2]),
        .I3(DoutB1_out[23]),
        .O(data_BIST[23]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_4
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [24]),
        .I2(Q[2]),
        .I3(DoutB1_out[24]),
        .O(data_BIST[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_4__0
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [25]),
        .I2(Q[2]),
        .I3(DoutB1_out[25]),
        .O(data_BIST[25]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_4__1
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [26]),
        .I2(Q[2]),
        .I3(DoutB1_out[26]),
        .O(data_BIST[26]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_4__2
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [27]),
        .I2(Q[2]),
        .I3(DoutB1_out[27]),
        .O(data_BIST[27]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_4__3
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [28]),
        .I2(Q[2]),
        .I3(DoutB1_out[28]),
        .O(data_BIST[28]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_4__4
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [29]),
        .I2(Q[2]),
        .I3(DoutB1_out[29]),
        .O(data_BIST[29]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_4__5
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [30]),
        .I2(Q[2]),
        .I3(DoutB1_out[30]),
        .O(data_BIST[30]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_4__6
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [31]),
        .I2(Q[2]),
        .I3(DoutB1_out[31]),
        .O(data_BIST[31]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_5
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [32]),
        .I2(Q[2]),
        .I3(DoutB1_out[32]),
        .O(data_BIST[32]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_5__0
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [33]),
        .I2(Q[2]),
        .I3(DoutB1_out[33]),
        .O(data_BIST[33]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_5__1
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [34]),
        .I2(Q[2]),
        .I3(DoutB1_out[34]),
        .O(data_BIST[34]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_5__2
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [35]),
        .I2(Q[2]),
        .I3(DoutB1_out[35]),
        .O(data_BIST[35]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_5__3
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [36]),
        .I2(Q[2]),
        .I3(DoutB1_out[36]),
        .O(data_BIST[36]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_5__4
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [37]),
        .I2(Q[2]),
        .I3(DoutB1_out[37]),
        .O(data_BIST[37]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_5__5
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [38]),
        .I2(Q[2]),
        .I3(DoutB1_out[38]),
        .O(data_BIST[38]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_5__6
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [39]),
        .I2(Q[2]),
        .I3(DoutB1_out[39]),
        .O(data_BIST[39]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_6
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [40]),
        .I2(Q[2]),
        .I3(DoutB1_out[40]),
        .O(data_BIST[40]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_6__0
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [41]),
        .I2(Q[2]),
        .I3(DoutB1_out[41]),
        .O(data_BIST[41]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_6__1
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [42]),
        .I2(Q[2]),
        .I3(DoutB1_out[42]),
        .O(data_BIST[42]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_6__2
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [43]),
        .I2(Q[2]),
        .I3(DoutB1_out[43]),
        .O(data_BIST[43]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_6__3
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [44]),
        .I2(Q[2]),
        .I3(DoutB1_out[44]),
        .O(data_BIST[44]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_6__4
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [45]),
        .I2(Q[2]),
        .I3(DoutB1_out[45]),
        .O(data_BIST[45]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_6__5
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [46]),
        .I2(Q[2]),
        .I3(DoutB1_out[46]),
        .O(data_BIST[46]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_6__6
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [47]),
        .I2(Q[2]),
        .I3(DoutB1_out[47]),
        .O(data_BIST[47]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_7
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [48]),
        .I2(Q[2]),
        .I3(DoutB1_out[48]),
        .O(data_BIST[48]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_7__0
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [49]),
        .I2(Q[2]),
        .I3(DoutB1_out[49]),
        .O(data_BIST[49]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_7__1
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [50]),
        .I2(Q[2]),
        .I3(DoutB1_out[50]),
        .O(data_BIST[50]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_7__2
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [51]),
        .I2(Q[2]),
        .I3(DoutB1_out[51]),
        .O(data_BIST[51]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_7__3
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [52]),
        .I2(Q[2]),
        .I3(DoutB1_out[52]),
        .O(data_BIST[52]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_7__4
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [53]),
        .I2(Q[2]),
        .I3(DoutB1_out[53]),
        .O(data_BIST[53]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_7__5
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [54]),
        .I2(Q[2]),
        .I3(DoutB1_out[54]),
        .O(data_BIST[54]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_7__6
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [55]),
        .I2(Q[2]),
        .I3(DoutB1_out[55]),
        .O(data_BIST[55]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_8
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [56]),
        .I2(Q[2]),
        .I3(DoutB1_out[56]),
        .O(data_BIST[56]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_8__0
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [57]),
        .I2(Q[2]),
        .I3(DoutB1_out[57]),
        .O(data_BIST[57]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_8__1
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [58]),
        .I2(Q[2]),
        .I3(DoutB1_out[58]),
        .O(data_BIST[58]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_8__2
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [59]),
        .I2(Q[2]),
        .I3(DoutB1_out[59]),
        .O(data_BIST[59]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_8__3
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [60]),
        .I2(Q[2]),
        .I3(DoutB1_out[60]),
        .O(data_BIST[60]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_8__4
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [61]),
        .I2(Q[2]),
        .I3(DoutB1_out[61]),
        .O(data_BIST[61]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_8__5
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [62]),
        .I2(Q[2]),
        .I3(DoutB1_out[62]),
        .O(data_BIST[62]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    OSERDESE2_inst_i_8__6
       (.I0(OSERDESE2_inst_i_11_n_0),
        .I1(\Din_del3_reg[63]_inst_DDS_core_ip_v1_0_S00_AXI_inst_DDS_core_inst_BIST_Din_del3_reg_r [63]),
        .I2(Q[2]),
        .I3(DoutB1_out[63]),
        .O(data_BIST[63]));
  LUT6 #(
    .INIT(64'hF1F1F1000000F100)) 
    correct_i_1
       (.I0(correct_reg),
        .I1(Q[1]),
        .I2(correct_reg_0),
        .I3(correct_int),
        .I4(OSERDESE2_inst_i_11_n_0),
        .I5(slv_status_wire1),
        .O(\slv_reg0_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD0AAAAAA)) 
    \del_int[0]_i_1 
       (.I0(\del_int_reg_n_0_[0] ),
        .I1(\del_int_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(lock),
        .I4(Q[0]),
        .O(\del_int[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0CCCCCC)) 
    \del_int[1]_i_1 
       (.I0(\del_int_reg_n_0_[0] ),
        .I1(\del_int_reg_n_0_[1] ),
        .I2(Q[2]),
        .I3(lock),
        .I4(Q[0]),
        .O(\del_int[1]_i_1_n_0 ));
  FDRE \del_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\del_int[0]_i_1_n_0 ),
        .Q(\del_int_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \del_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\del_int[1]_i_1_n_0 ),
        .Q(\del_int_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \prbs[63]_i_2 
       (.I0(\del_int_reg_n_0_[0] ),
        .I1(\del_int_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(lock),
        .I4(Q[2]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "Phase_acumulator" *) 
module DDS_top_DDS_core_ip_0_1_Phase_acumulator
   (\out_reg[23]_0 ,
    Q,
    s00_axi_aresetn,
    RESET,
    \out_reg[13]_0 ,
    SR,
    E,
    CLK);
  output [9:0]\out_reg[23]_0 ;
  input [1:0]Q;
  input s00_axi_aresetn;
  input RESET;
  input [13:0]\out_reg[13]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire \(null)[0].Skip_adder_i/C_2 ;
  wire \(null)[0].Skip_adder_i/p_7_in ;
  wire \(null)[1].Skip_adder_i/p_4_in ;
  wire \(null)[1].Skip_adder_i/p_5_in ;
  wire \(null)[1].Skip_adder_i/p_7_in ;
  wire \(null)[1].Skip_adder_i/p_9_in ;
  wire \(null)[2].Skip_adder_i/p_4_in ;
  wire \(null)[2].Skip_adder_i/p_5_in ;
  wire \(null)[2].Skip_adder_i/p_7_in ;
  wire \(null)[2].Skip_adder_i/p_9_in ;
  wire \(null)[3].Skip_adder_i/C_2 ;
  wire \(null)[3].Skip_adder_i/C_3 ;
  wire \(null)[3].Skip_adder_i/p_4_in ;
  wire \(null)[3].Skip_adder_i/p_5_in ;
  wire \(null)[4].Skip_adder_i/C_1 ;
  wire CLK;
  wire C_4;
  wire [0:0]E;
  wire [1:0]Q;
  wire RESET;
  wire [0:0]SR;
  wire \out[0]_i_1_n_0 ;
  wire \out[11]_i_2_n_0 ;
  wire \out[12]_i_2_n_0 ;
  wire \out[13]_i_2_n_0 ;
  wire \out[13]_i_4_n_0 ;
  wire \out[13]_i_6_n_0 ;
  wire \out[13]_i_7_n_0 ;
  wire \out[13]_i_8_n_0 ;
  wire \out[13]_i_9_n_0 ;
  wire \out[14]_i_1_n_0 ;
  wire \out[20]_i_3_n_0 ;
  wire \out[20]_i_4_n_0 ;
  wire \out[22]_i_2_n_0 ;
  wire \out[23]_i_10_n_0 ;
  wire \out[23]_i_11_n_0 ;
  wire \out[23]_i_12_n_0 ;
  wire \out[23]_i_13_n_0 ;
  wire \out[23]_i_14_n_0 ;
  wire \out[23]_i_15_n_0 ;
  wire \out[23]_i_16_n_0 ;
  wire \out[23]_i_17_n_0 ;
  wire \out[23]_i_18_n_0 ;
  wire \out[23]_i_19_n_0 ;
  wire \out[23]_i_20_n_0 ;
  wire \out[23]_i_5_n_0 ;
  wire \out[23]_i_6_n_0 ;
  wire \out[23]_i_7_n_0 ;
  wire \out[23]_i_8_n_0 ;
  wire \out[23]_i_9_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[7]_i_2_n_0 ;
  wire \out[8]_i_2_n_0 ;
  wire \out[8]_i_4_n_0 ;
  wire \out[8]_i_6_n_0 ;
  wire \out[8]_i_7_n_0 ;
  wire \out[9]_i_2_n_0 ;
  wire \out[9]_i_3_n_0 ;
  wire \out[9]_i_4_n_0 ;
  wire [13:0]\out_reg[13]_0 ;
  wire [9:0]\out_reg[23]_0 ;
  wire \out_reg_n_0_[0] ;
  wire \out_reg_n_0_[10] ;
  wire \out_reg_n_0_[11] ;
  wire \out_reg_n_0_[12] ;
  wire \out_reg_n_0_[13] ;
  wire \out_reg_n_0_[1] ;
  wire \out_reg_n_0_[2] ;
  wire \out_reg_n_0_[3] ;
  wire \out_reg_n_0_[4] ;
  wire \out_reg_n_0_[5] ;
  wire \out_reg_n_0_[6] ;
  wire \out_reg_n_0_[7] ;
  wire \out_reg_n_0_[8] ;
  wire \out_reg_n_0_[9] ;
  wire s00_axi_aresetn;
  wire [23:1]sum;

  LUT6 #(
    .INIT(64'h0000000400040000)) 
    \out[0]_i_1 
       (.I0(Q[1]),
        .I1(s00_axi_aresetn),
        .I2(Q[0]),
        .I3(RESET),
        .I4(\out_reg[13]_0 [0]),
        .I5(\out_reg_n_0_[0] ),
        .O(\out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEEA51155115AEEA)) 
    \out[10]_i_1 
       (.I0(\out[12]_i_2_n_0 ),
        .I1(\out[11]_i_2_n_0 ),
        .I2(\out_reg_n_0_[9] ),
        .I3(\out_reg[13]_0 [9]),
        .I4(\out_reg_n_0_[10] ),
        .I5(\out_reg[13]_0 [10]),
        .O(sum[10]));
  LUT6 #(
    .INIT(64'h000F077FFFF0F880)) 
    \out[11]_i_1 
       (.I0(\out[11]_i_2_n_0 ),
        .I1(\(null)[2].Skip_adder_i/p_5_in ),
        .I2(\out_reg[13]_0 [10]),
        .I3(\out_reg_n_0_[10] ),
        .I4(\out[12]_i_2_n_0 ),
        .I5(\(null)[2].Skip_adder_i/p_9_in ),
        .O(sum[11]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hFF282800)) 
    \out[11]_i_2 
       (.I0(\out[8]_i_4_n_0 ),
        .I1(\out_reg_n_0_[7] ),
        .I2(\out_reg[13]_0 [7]),
        .I3(\out_reg[13]_0 [8]),
        .I4(\out_reg_n_0_[8] ),
        .O(\out[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[11]_i_3 
       (.I0(\out_reg[13]_0 [9]),
        .I1(\out_reg_n_0_[9] ),
        .O(\(null)[2].Skip_adder_i/p_5_in ));
  LUT6 #(
    .INIT(64'h000F077FFFF0F880)) 
    \out[12]_i_1 
       (.I0(\out[12]_i_2_n_0 ),
        .I1(\(null)[2].Skip_adder_i/p_7_in ),
        .I2(\out_reg[13]_0 [11]),
        .I3(\out_reg_n_0_[11] ),
        .I4(\out[13]_i_2_n_0 ),
        .I5(\(null)[3].Skip_adder_i/p_4_in ),
        .O(sum[12]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hFF282800)) 
    \out[12]_i_2 
       (.I0(\out[9]_i_2_n_0 ),
        .I1(\out_reg_n_0_[8] ),
        .I2(\out_reg[13]_0 [8]),
        .I3(\out_reg[13]_0 [9]),
        .I4(\out_reg_n_0_[9] ),
        .O(\out[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[12]_i_3 
       (.I0(\out_reg[13]_0 [10]),
        .I1(\out_reg_n_0_[10] ),
        .O(\(null)[2].Skip_adder_i/p_7_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[12]_i_4 
       (.I0(\out_reg[13]_0 [12]),
        .I1(\out_reg_n_0_[12] ),
        .O(\(null)[3].Skip_adder_i/p_4_in ));
  LUT6 #(
    .INIT(64'h000F077FFFF0F880)) 
    \out[13]_i_1 
       (.I0(\out[13]_i_2_n_0 ),
        .I1(\(null)[2].Skip_adder_i/p_9_in ),
        .I2(\out_reg[13]_0 [12]),
        .I3(\out_reg_n_0_[12] ),
        .I4(\out[13]_i_4_n_0 ),
        .I5(\(null)[3].Skip_adder_i/p_5_in ),
        .O(sum[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8800000)) 
    \out[13]_i_2 
       (.I0(\out[8]_i_4_n_0 ),
        .I1(\(null)[1].Skip_adder_i/p_9_in ),
        .I2(\out_reg[13]_0 [8]),
        .I3(\out_reg_n_0_[8] ),
        .I4(\out[13]_i_6_n_0 ),
        .I5(\out[13]_i_7_n_0 ),
        .O(\out[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[13]_i_3 
       (.I0(\out_reg[13]_0 [11]),
        .I1(\out_reg_n_0_[11] ),
        .O(\(null)[2].Skip_adder_i/p_9_in ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8800000)) 
    \out[13]_i_4 
       (.I0(\out[9]_i_2_n_0 ),
        .I1(\(null)[2].Skip_adder_i/p_4_in ),
        .I2(\out_reg[13]_0 [9]),
        .I3(\out_reg_n_0_[9] ),
        .I4(\out[13]_i_8_n_0 ),
        .I5(\out[13]_i_9_n_0 ),
        .O(\out[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[13]_i_5 
       (.I0(\out_reg[13]_0 [13]),
        .I1(\out_reg_n_0_[13] ),
        .O(\(null)[3].Skip_adder_i/p_5_in ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \out[13]_i_6 
       (.I0(\out_reg_n_0_[10] ),
        .I1(\out_reg[13]_0 [10]),
        .I2(\out_reg_n_0_[9] ),
        .I3(\out_reg[13]_0 [9]),
        .O(\out[13]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[13]_i_7 
       (.I0(\out_reg_n_0_[10] ),
        .I1(\out_reg[13]_0 [10]),
        .O(\out[13]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \out[13]_i_8 
       (.I0(\out_reg_n_0_[11] ),
        .I1(\out_reg[13]_0 [11]),
        .I2(\out_reg_n_0_[10] ),
        .I3(\out_reg[13]_0 [10]),
        .O(\out[13]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[13]_i_9 
       (.I0(\out_reg_n_0_[11] ),
        .I1(\out_reg[13]_0 [11]),
        .O(\out[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400040000)) 
    \out[14]_i_1 
       (.I0(Q[1]),
        .I1(s00_axi_aresetn),
        .I2(Q[0]),
        .I3(RESET),
        .I4(\(null)[3].Skip_adder_i/C_2 ),
        .I5(\out_reg[23]_0 [0]),
        .O(\out[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \out[15]_i_1 
       (.I0(\out_reg[23]_0 [0]),
        .I1(\(null)[3].Skip_adder_i/C_2 ),
        .I2(\out_reg[23]_0 [1]),
        .O(sum[15]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \out[16]_i_1 
       (.I0(\out_reg[23]_0 [1]),
        .I1(\(null)[3].Skip_adder_i/C_2 ),
        .I2(\out_reg[23]_0 [0]),
        .I3(\out_reg[23]_0 [2]),
        .O(sum[16]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \out[17]_i_1 
       (.I0(\out_reg[23]_0 [2]),
        .I1(\out_reg[23]_0 [0]),
        .I2(\(null)[3].Skip_adder_i/C_2 ),
        .I3(\out_reg[23]_0 [1]),
        .I4(\out_reg[23]_0 [3]),
        .O(sum[17]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[18]_i_1 
       (.I0(\out_reg[23]_0 [3]),
        .I1(\out_reg[23]_0 [1]),
        .I2(\(null)[3].Skip_adder_i/C_2 ),
        .I3(\out_reg[23]_0 [0]),
        .I4(\out_reg[23]_0 [2]),
        .I5(\out_reg[23]_0 [4]),
        .O(sum[18]));
  LUT6 #(
    .INIT(64'hE8FCFCE8E8E8E8E8)) 
    \out[18]_i_2 
       (.I0(\out[23]_i_7_n_0 ),
        .I1(\out_reg_n_0_[13] ),
        .I2(\out_reg[13]_0 [13]),
        .I3(\out_reg[13]_0 [12]),
        .I4(\out_reg_n_0_[12] ),
        .I5(\out[13]_i_4_n_0 ),
        .O(\(null)[3].Skip_adder_i/C_2 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[19]_i_1 
       (.I0(\out_reg[23]_0 [4]),
        .I1(\out_reg[23]_0 [2]),
        .I2(\(null)[3].Skip_adder_i/C_3 ),
        .I3(\out_reg[23]_0 [1]),
        .I4(\out_reg[23]_0 [3]),
        .I5(\out_reg[23]_0 [5]),
        .O(sum[19]));
  LUT6 #(
    .INIT(64'hFFF0F88000000000)) 
    \out[19]_i_2 
       (.I0(\out[13]_i_4_n_0 ),
        .I1(\(null)[3].Skip_adder_i/p_4_in ),
        .I2(\out_reg[13]_0 [13]),
        .I3(\out_reg_n_0_[13] ),
        .I4(\out[23]_i_7_n_0 ),
        .I5(\out_reg[23]_0 [0]),
        .O(\(null)[3].Skip_adder_i/C_3 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \out[1]_i_1 
       (.I0(\out_reg[13]_0 [0]),
        .I1(\out_reg_n_0_[0] ),
        .I2(\out_reg_n_0_[1] ),
        .I3(\out_reg[13]_0 [1]),
        .O(sum[1]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[20]_i_1 
       (.I0(\out_reg[23]_0 [5]),
        .I1(\out_reg[23]_0 [3]),
        .I2(C_4),
        .I3(\out_reg[23]_0 [2]),
        .I4(\out_reg[23]_0 [4]),
        .I5(\out_reg[23]_0 [6]),
        .O(sum[20]));
  LUT6 #(
    .INIT(64'hAAAAA88000000000)) 
    \out[20]_i_2 
       (.I0(\out_reg[23]_0 [0]),
        .I1(\out[23]_i_7_n_0 ),
        .I2(\out_reg_n_0_[13] ),
        .I3(\out_reg[13]_0 [13]),
        .I4(\out[20]_i_3_n_0 ),
        .I5(\out_reg[23]_0 [1]),
        .O(C_4));
  LUT6 #(
    .INIT(64'hA8A8A888A888A888)) 
    \out[20]_i_3 
       (.I0(\out[23]_i_10_n_0 ),
        .I1(\out[13]_i_9_n_0 ),
        .I2(\out[13]_i_8_n_0 ),
        .I3(\out[23]_i_9_n_0 ),
        .I4(\out[20]_i_4_n_0 ),
        .I5(\out[9]_i_2_n_0 ),
        .O(\out[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \out[20]_i_4 
       (.I0(\out_reg_n_0_[9] ),
        .I1(\out_reg[13]_0 [9]),
        .I2(\out_reg_n_0_[8] ),
        .I3(\out_reg[13]_0 [8]),
        .O(\out[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[21]_i_1 
       (.I0(\out_reg[23]_0 [6]),
        .I1(\out_reg[23]_0 [4]),
        .I2(\(null)[4].Skip_adder_i/C_1 ),
        .I3(\out_reg[23]_0 [3]),
        .I4(\out_reg[23]_0 [5]),
        .I5(\out_reg[23]_0 [7]),
        .O(sum[21]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[22]_i_1 
       (.I0(\out_reg[23]_0 [4]),
        .I1(\(null)[4].Skip_adder_i/C_1 ),
        .I2(\out_reg[23]_0 [3]),
        .I3(\out_reg[23]_0 [5]),
        .I4(\out[22]_i_2_n_0 ),
        .I5(\out_reg[23]_0 [8]),
        .O(sum[22]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[22]_i_2 
       (.I0(\out_reg[23]_0 [6]),
        .I1(\out_reg[23]_0 [7]),
        .O(\out[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \out[23]_i_10 
       (.I0(\out_reg_n_0_[13] ),
        .I1(\out_reg[13]_0 [13]),
        .I2(\out_reg_n_0_[12] ),
        .I3(\out_reg[13]_0 [12]),
        .O(\out[23]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[23]_i_11 
       (.I0(\out_reg_n_0_[13] ),
        .I1(\out_reg[13]_0 [13]),
        .O(\out[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A888A888A888)) 
    \out[23]_i_12 
       (.I0(\out[23]_i_18_n_0 ),
        .I1(\out[23]_i_19_n_0 ),
        .I2(\out[23]_i_20_n_0 ),
        .I3(\out[8]_i_7_n_0 ),
        .I4(\out[8]_i_6_n_0 ),
        .I5(\(null)[0].Skip_adder_i/C_2 ),
        .O(\out[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[23]_i_13 
       (.I0(\out_reg_n_0_[8] ),
        .I1(\out_reg[13]_0 [8]),
        .O(\out[23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \out[23]_i_14 
       (.I0(\out_reg_n_0_[12] ),
        .I1(\out_reg[13]_0 [12]),
        .I2(\out_reg_n_0_[11] ),
        .I3(\out_reg[13]_0 [11]),
        .O(\out[23]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[23]_i_15 
       (.I0(\out_reg_n_0_[12] ),
        .I1(\out_reg[13]_0 [12]),
        .O(\out[23]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[23]_i_16 
       (.I0(\out_reg_n_0_[5] ),
        .I1(\out_reg[13]_0 [5]),
        .O(\out[23]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \out[23]_i_17 
       (.I0(\out_reg_n_0_[5] ),
        .I1(\out_reg[13]_0 [5]),
        .I2(\out_reg_n_0_[4] ),
        .I3(\out_reg[13]_0 [4]),
        .O(\out[23]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \out[23]_i_18 
       (.I0(\out_reg_n_0_[8] ),
        .I1(\out_reg[13]_0 [8]),
        .I2(\out_reg_n_0_[7] ),
        .I3(\out_reg[13]_0 [7]),
        .O(\out[23]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[23]_i_19 
       (.I0(\out_reg_n_0_[6] ),
        .I1(\out_reg[13]_0 [6]),
        .O(\out[23]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \out[23]_i_20 
       (.I0(\out_reg_n_0_[6] ),
        .I1(\out_reg[13]_0 [6]),
        .I2(\out_reg_n_0_[5] ),
        .I3(\out_reg[13]_0 [5]),
        .O(\out[23]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \out[23]_i_3 
       (.I0(\out_reg[23]_0 [4]),
        .I1(\(null)[4].Skip_adder_i/C_1 ),
        .I2(\out_reg[23]_0 [3]),
        .I3(\out_reg[23]_0 [5]),
        .I4(\out[23]_i_5_n_0 ),
        .I5(\out_reg[23]_0 [9]),
        .O(sum[23]));
  LUT6 #(
    .INIT(64'hA888000000000000)) 
    \out[23]_i_4 
       (.I0(\out_reg[23]_0 [1]),
        .I1(\out[23]_i_6_n_0 ),
        .I2(\out[23]_i_7_n_0 ),
        .I3(\(null)[3].Skip_adder_i/p_5_in ),
        .I4(\out_reg[23]_0 [0]),
        .I5(\out_reg[23]_0 [2]),
        .O(\(null)[4].Skip_adder_i/C_1 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \out[23]_i_5 
       (.I0(\out_reg[23]_0 [8]),
        .I1(\out_reg[23]_0 [7]),
        .I2(\out_reg[23]_0 [6]),
        .O(\out[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE00000)) 
    \out[23]_i_6 
       (.I0(\out[23]_i_8_n_0 ),
        .I1(\out[23]_i_9_n_0 ),
        .I2(\out[13]_i_8_n_0 ),
        .I3(\out[13]_i_9_n_0 ),
        .I4(\out[23]_i_10_n_0 ),
        .I5(\out[23]_i_11_n_0 ),
        .O(\out[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE00000)) 
    \out[23]_i_7 
       (.I0(\out[23]_i_12_n_0 ),
        .I1(\out[23]_i_13_n_0 ),
        .I2(\out[13]_i_6_n_0 ),
        .I3(\out[13]_i_7_n_0 ),
        .I4(\out[23]_i_14_n_0 ),
        .I5(\out[23]_i_15_n_0 ),
        .O(\out[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A888A888A888)) 
    \out[23]_i_8 
       (.I0(\out[20]_i_4_n_0 ),
        .I1(\out[9]_i_4_n_0 ),
        .I2(\out[9]_i_3_n_0 ),
        .I3(\out[23]_i_16_n_0 ),
        .I4(\out[23]_i_17_n_0 ),
        .I5(\out[5]_i_2_n_0 ),
        .O(\out[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[23]_i_9 
       (.I0(\out_reg_n_0_[9] ),
        .I1(\out_reg[13]_0 [9]),
        .O(\out[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \out[2]_i_1 
       (.I0(\out_reg_n_0_[1] ),
        .I1(\out_reg[13]_0 [1]),
        .I2(\out_reg[13]_0 [0]),
        .I3(\out_reg_n_0_[0] ),
        .I4(\out_reg_n_0_[2] ),
        .I5(\out_reg[13]_0 [2]),
        .O(sum[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \out[3]_i_1 
       (.I0(\out_reg_n_0_[2] ),
        .I1(\out_reg[13]_0 [2]),
        .I2(\(null)[0].Skip_adder_i/C_2 ),
        .I3(\out_reg_n_0_[3] ),
        .I4(\out_reg[13]_0 [3]),
        .O(sum[3]));
  LUT6 #(
    .INIT(64'h011F077FFEE0F880)) 
    \out[4]_i_1 
       (.I0(\out_reg_n_0_[2] ),
        .I1(\out_reg[13]_0 [2]),
        .I2(\out_reg[13]_0 [3]),
        .I3(\out_reg_n_0_[3] ),
        .I4(\(null)[0].Skip_adder_i/C_2 ),
        .I5(\(null)[1].Skip_adder_i/p_4_in ),
        .O(sum[4]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \out[4]_i_2 
       (.I0(\out_reg_n_0_[0] ),
        .I1(\out_reg[13]_0 [0]),
        .I2(\out_reg[13]_0 [1]),
        .I3(\out_reg_n_0_[1] ),
        .O(\(null)[0].Skip_adder_i/C_2 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[4]_i_3 
       (.I0(\out_reg[13]_0 [4]),
        .I1(\out_reg_n_0_[4] ),
        .O(\(null)[1].Skip_adder_i/p_4_in ));
  LUT6 #(
    .INIT(64'hAEEA51155115AEEA)) 
    \out[5]_i_1 
       (.I0(\out[7]_i_2_n_0 ),
        .I1(\out[5]_i_2_n_0 ),
        .I2(\out_reg_n_0_[4] ),
        .I3(\out_reg[13]_0 [4]),
        .I4(\out_reg_n_0_[5] ),
        .I5(\out_reg[13]_0 [5]),
        .O(sum[5]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \out[5]_i_2 
       (.I0(\out_reg_n_0_[2] ),
        .I1(\out_reg[13]_0 [2]),
        .I2(\out_reg[13]_0 [3]),
        .I3(\out_reg_n_0_[3] ),
        .O(\out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEEA51155115AEEA)) 
    \out[6]_i_1 
       (.I0(\out[8]_i_2_n_0 ),
        .I1(\out[7]_i_2_n_0 ),
        .I2(\out_reg_n_0_[5] ),
        .I3(\out_reg[13]_0 [5]),
        .I4(\out_reg_n_0_[6] ),
        .I5(\out_reg[13]_0 [6]),
        .O(sum[6]));
  LUT6 #(
    .INIT(64'h000F077FFFF0F880)) 
    \out[7]_i_1 
       (.I0(\out[7]_i_2_n_0 ),
        .I1(\(null)[1].Skip_adder_i/p_5_in ),
        .I2(\out_reg[13]_0 [6]),
        .I3(\out_reg_n_0_[6] ),
        .I4(\out[8]_i_2_n_0 ),
        .I5(\(null)[1].Skip_adder_i/p_9_in ),
        .O(sum[7]));
  LUT6 #(
    .INIT(64'hFFFF088008800000)) 
    \out[7]_i_2 
       (.I0(\(null)[0].Skip_adder_i/C_2 ),
        .I1(\(null)[0].Skip_adder_i/p_7_in ),
        .I2(\out_reg[13]_0 [3]),
        .I3(\out_reg_n_0_[3] ),
        .I4(\out_reg[13]_0 [4]),
        .I5(\out_reg_n_0_[4] ),
        .O(\out[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_3 
       (.I0(\out_reg[13]_0 [5]),
        .I1(\out_reg_n_0_[5] ),
        .O(\(null)[1].Skip_adder_i/p_5_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_4 
       (.I0(\out_reg[13]_0 [7]),
        .I1(\out_reg_n_0_[7] ),
        .O(\(null)[1].Skip_adder_i/p_9_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_5 
       (.I0(\out_reg[13]_0 [2]),
        .I1(\out_reg_n_0_[2] ),
        .O(\(null)[0].Skip_adder_i/p_7_in ));
  LUT6 #(
    .INIT(64'h000F077FFFF0F880)) 
    \out[8]_i_1 
       (.I0(\out[8]_i_2_n_0 ),
        .I1(\(null)[1].Skip_adder_i/p_7_in ),
        .I2(\out_reg[13]_0 [7]),
        .I3(\out_reg_n_0_[7] ),
        .I4(\out[8]_i_4_n_0 ),
        .I5(\(null)[2].Skip_adder_i/p_4_in ),
        .O(sum[8]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hFF282800)) 
    \out[8]_i_2 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(\out_reg_n_0_[4] ),
        .I2(\out_reg[13]_0 [4]),
        .I3(\out_reg[13]_0 [5]),
        .I4(\out_reg_n_0_[5] ),
        .O(\out[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[8]_i_3 
       (.I0(\out_reg[13]_0 [6]),
        .I1(\out_reg_n_0_[6] ),
        .O(\(null)[1].Skip_adder_i/p_7_in ));
  LUT6 #(
    .INIT(64'hFFFFF800F8000000)) 
    \out[8]_i_4 
       (.I0(\(null)[0].Skip_adder_i/C_2 ),
        .I1(\out[8]_i_6_n_0 ),
        .I2(\out[8]_i_7_n_0 ),
        .I3(\(null)[1].Skip_adder_i/p_5_in ),
        .I4(\out_reg[13]_0 [6]),
        .I5(\out_reg_n_0_[6] ),
        .O(\out[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \out[8]_i_5 
       (.I0(\out_reg[13]_0 [8]),
        .I1(\out_reg_n_0_[8] ),
        .O(\(null)[2].Skip_adder_i/p_4_in ));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    \out[8]_i_6 
       (.I0(\out_reg[13]_0 [2]),
        .I1(\out_reg_n_0_[2] ),
        .I2(\out_reg[13]_0 [3]),
        .I3(\out_reg_n_0_[3] ),
        .I4(\out_reg_n_0_[4] ),
        .I5(\out_reg[13]_0 [4]),
        .O(\out[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[8]_i_7 
       (.I0(\out_reg_n_0_[4] ),
        .I1(\out_reg[13]_0 [4]),
        .O(\out[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAEEA51155115AEEA)) 
    \out[9]_i_1 
       (.I0(\out[11]_i_2_n_0 ),
        .I1(\out[9]_i_2_n_0 ),
        .I2(\out_reg_n_0_[8] ),
        .I3(\out_reg[13]_0 [8]),
        .I4(\out_reg_n_0_[9] ),
        .I5(\out_reg[13]_0 [9]),
        .O(sum[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8800000)) 
    \out[9]_i_2 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(\(null)[1].Skip_adder_i/p_4_in ),
        .I2(\out_reg[13]_0 [5]),
        .I3(\out_reg_n_0_[5] ),
        .I4(\out[9]_i_3_n_0 ),
        .I5(\out[9]_i_4_n_0 ),
        .O(\out[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    \out[9]_i_3 
       (.I0(\out_reg_n_0_[7] ),
        .I1(\out_reg[13]_0 [7]),
        .I2(\out_reg_n_0_[6] ),
        .I3(\out_reg[13]_0 [6]),
        .O(\out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out[9]_i_4 
       (.I0(\out_reg_n_0_[7] ),
        .I1(\out_reg[13]_0 [7]),
        .O(\out[9]_i_4_n_0 ));
  FDRE \out_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\out[0]_i_1_n_0 ),
        .Q(\out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \out_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(sum[10]),
        .Q(\out_reg_n_0_[10] ),
        .R(SR));
  FDRE \out_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(sum[11]),
        .Q(\out_reg_n_0_[11] ),
        .R(SR));
  FDRE \out_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(sum[12]),
        .Q(\out_reg_n_0_[12] ),
        .R(SR));
  FDRE \out_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(sum[13]),
        .Q(\out_reg_n_0_[13] ),
        .R(SR));
  FDRE \out_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(\out[14]_i_1_n_0 ),
        .Q(\out_reg[23]_0 [0]),
        .R(1'b0));
  FDRE \out_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(sum[15]),
        .Q(\out_reg[23]_0 [1]),
        .R(SR));
  FDRE \out_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(sum[16]),
        .Q(\out_reg[23]_0 [2]),
        .R(SR));
  FDRE \out_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(sum[17]),
        .Q(\out_reg[23]_0 [3]),
        .R(SR));
  FDRE \out_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(sum[18]),
        .Q(\out_reg[23]_0 [4]),
        .R(SR));
  FDRE \out_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(sum[19]),
        .Q(\out_reg[23]_0 [5]),
        .R(SR));
  FDRE \out_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(sum[1]),
        .Q(\out_reg_n_0_[1] ),
        .R(SR));
  FDRE \out_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(sum[20]),
        .Q(\out_reg[23]_0 [6]),
        .R(SR));
  FDRE \out_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(sum[21]),
        .Q(\out_reg[23]_0 [7]),
        .R(SR));
  FDRE \out_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(sum[22]),
        .Q(\out_reg[23]_0 [8]),
        .R(SR));
  FDRE \out_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(sum[23]),
        .Q(\out_reg[23]_0 [9]),
        .R(SR));
  FDRE \out_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(sum[2]),
        .Q(\out_reg_n_0_[2] ),
        .R(SR));
  FDRE \out_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(sum[3]),
        .Q(\out_reg_n_0_[3] ),
        .R(SR));
  FDRE \out_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(sum[4]),
        .Q(\out_reg_n_0_[4] ),
        .R(SR));
  FDRE \out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(sum[5]),
        .Q(\out_reg_n_0_[5] ),
        .R(SR));
  FDRE \out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(sum[6]),
        .Q(\out_reg_n_0_[6] ),
        .R(SR));
  FDRE \out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(sum[7]),
        .Q(\out_reg_n_0_[7] ),
        .R(SR));
  FDRE \out_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(sum[8]),
        .Q(\out_reg_n_0_[8] ),
        .R(SR));
  FDRE \out_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(sum[9]),
        .Q(\out_reg_n_0_[9] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "Serializer_8_1_primitive_v2" *) 
module DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2
   (data_FB,
    Sample,
    HS_CLK,
    CLK,
    data_BIST,
    CE0,
    RESET_SER);
  output [0:0]data_FB;
  output [0:0]Sample;
  input HS_CLK;
  input CLK;
  input [7:0]data_BIST;
  input CE0;
  input RESET_SER;

  wire CE0;
  wire CLK;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]Sample;
  wire [7:0]data_BIST;
  wire [0:0]data_FB;
  wire NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(8),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_inst
       (.CLK(HS_CLK),
        .CLKDIV(CLK),
        .D1(data_BIST[0]),
        .D2(data_BIST[1]),
        .D3(data_BIST[2]),
        .D4(data_BIST[3]),
        .D5(data_BIST[4]),
        .D6(data_BIST[5]),
        .D7(data_BIST[6]),
        .D8(data_BIST[7]),
        .OCE(CE0),
        .OFB(data_FB),
        .OQ(Sample),
        .RST(RESET_SER),
        .SHIFTIN1(NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_inst_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_inst_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "Serializer_8_1_primitive_v2" *) 
module DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_0
   (data_FB,
    Sample,
    HS_CLK,
    CLK,
    data_BIST,
    CE0,
    RESET_SER);
  output [0:0]data_FB;
  output [0:0]Sample;
  input HS_CLK;
  input CLK;
  input [7:0]data_BIST;
  input CE0;
  input RESET_SER;

  wire CE0;
  wire CLK;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]Sample;
  wire [7:0]data_BIST;
  wire [0:0]data_FB;
  wire NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(8),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_inst
       (.CLK(HS_CLK),
        .CLKDIV(CLK),
        .D1(data_BIST[0]),
        .D2(data_BIST[1]),
        .D3(data_BIST[2]),
        .D4(data_BIST[3]),
        .D5(data_BIST[4]),
        .D6(data_BIST[5]),
        .D7(data_BIST[6]),
        .D8(data_BIST[7]),
        .OCE(CE0),
        .OFB(data_FB),
        .OQ(Sample),
        .RST(RESET_SER),
        .SHIFTIN1(NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_inst_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_inst_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "Serializer_8_1_primitive_v2" *) 
module DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_1
   (data_FB,
    Sample,
    HS_CLK,
    CLK,
    data_BIST,
    CE0,
    RESET_SER);
  output [0:0]data_FB;
  output [0:0]Sample;
  input HS_CLK;
  input CLK;
  input [7:0]data_BIST;
  input CE0;
  input RESET_SER;

  wire CE0;
  wire CLK;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]Sample;
  wire [7:0]data_BIST;
  wire [0:0]data_FB;
  wire NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(8),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_inst
       (.CLK(HS_CLK),
        .CLKDIV(CLK),
        .D1(data_BIST[0]),
        .D2(data_BIST[1]),
        .D3(data_BIST[2]),
        .D4(data_BIST[3]),
        .D5(data_BIST[4]),
        .D6(data_BIST[5]),
        .D7(data_BIST[6]),
        .D8(data_BIST[7]),
        .OCE(CE0),
        .OFB(data_FB),
        .OQ(Sample),
        .RST(RESET_SER),
        .SHIFTIN1(NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_inst_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_inst_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "Serializer_8_1_primitive_v2" *) 
module DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_2
   (data_FB,
    Sample,
    HS_CLK,
    CLK,
    data_BIST,
    CE0,
    RESET_SER);
  output [0:0]data_FB;
  output [0:0]Sample;
  input HS_CLK;
  input CLK;
  input [7:0]data_BIST;
  input CE0;
  input RESET_SER;

  wire CE0;
  wire CLK;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]Sample;
  wire [7:0]data_BIST;
  wire [0:0]data_FB;
  wire NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(8),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_inst
       (.CLK(HS_CLK),
        .CLKDIV(CLK),
        .D1(data_BIST[0]),
        .D2(data_BIST[1]),
        .D3(data_BIST[2]),
        .D4(data_BIST[3]),
        .D5(data_BIST[4]),
        .D6(data_BIST[5]),
        .D7(data_BIST[6]),
        .D8(data_BIST[7]),
        .OCE(CE0),
        .OFB(data_FB),
        .OQ(Sample),
        .RST(RESET_SER),
        .SHIFTIN1(NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_inst_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_inst_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "Serializer_8_1_primitive_v2" *) 
module DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_3
   (data_FB,
    Sample,
    HS_CLK,
    CLK,
    data_BIST,
    CE0,
    RESET_SER);
  output [0:0]data_FB;
  output [0:0]Sample;
  input HS_CLK;
  input CLK;
  input [7:0]data_BIST;
  input CE0;
  input RESET_SER;

  wire CE0;
  wire CLK;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]Sample;
  wire [7:0]data_BIST;
  wire [0:0]data_FB;
  wire NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(8),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_inst
       (.CLK(HS_CLK),
        .CLKDIV(CLK),
        .D1(data_BIST[0]),
        .D2(data_BIST[1]),
        .D3(data_BIST[2]),
        .D4(data_BIST[3]),
        .D5(data_BIST[4]),
        .D6(data_BIST[5]),
        .D7(data_BIST[6]),
        .D8(data_BIST[7]),
        .OCE(CE0),
        .OFB(data_FB),
        .OQ(Sample),
        .RST(RESET_SER),
        .SHIFTIN1(NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_inst_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_inst_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "Serializer_8_1_primitive_v2" *) 
module DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_4
   (data_FB,
    Sample,
    HS_CLK,
    CLK,
    data_BIST,
    CE0,
    RESET_SER);
  output [0:0]data_FB;
  output [0:0]Sample;
  input HS_CLK;
  input CLK;
  input [7:0]data_BIST;
  input CE0;
  input RESET_SER;

  wire CE0;
  wire CLK;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]Sample;
  wire [7:0]data_BIST;
  wire [0:0]data_FB;
  wire NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(8),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_inst
       (.CLK(HS_CLK),
        .CLKDIV(CLK),
        .D1(data_BIST[0]),
        .D2(data_BIST[1]),
        .D3(data_BIST[2]),
        .D4(data_BIST[3]),
        .D5(data_BIST[4]),
        .D6(data_BIST[5]),
        .D7(data_BIST[6]),
        .D8(data_BIST[7]),
        .OCE(CE0),
        .OFB(data_FB),
        .OQ(Sample),
        .RST(RESET_SER),
        .SHIFTIN1(NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_inst_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_inst_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "Serializer_8_1_primitive_v2" *) 
module DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_5
   (data_FB,
    Sample,
    HS_CLK,
    CLK,
    data_BIST,
    CE0,
    RESET_SER);
  output [0:0]data_FB;
  output [0:0]Sample;
  input HS_CLK;
  input CLK;
  input [7:0]data_BIST;
  input CE0;
  input RESET_SER;

  wire CE0;
  wire CLK;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]Sample;
  wire [7:0]data_BIST;
  wire [0:0]data_FB;
  wire NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(8),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_inst
       (.CLK(HS_CLK),
        .CLKDIV(CLK),
        .D1(data_BIST[0]),
        .D2(data_BIST[1]),
        .D3(data_BIST[2]),
        .D4(data_BIST[3]),
        .D5(data_BIST[4]),
        .D6(data_BIST[5]),
        .D7(data_BIST[6]),
        .D8(data_BIST[7]),
        .OCE(CE0),
        .OFB(data_FB),
        .OQ(Sample),
        .RST(RESET_SER),
        .SHIFTIN1(NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_inst_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_inst_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "Serializer_8_1_primitive_v2" *) 
module DDS_top_DDS_core_ip_0_1_Serializer_8_1_primitive_v2_6
   (data_FB,
    Sample,
    HS_CLK,
    CLK,
    data_BIST,
    CE0,
    RESET_SER);
  output [0:0]data_FB;
  output [0:0]Sample;
  input HS_CLK;
  input CLK;
  input [7:0]data_BIST;
  input CE0;
  input RESET_SER;

  wire CE0;
  wire CLK;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]Sample;
  wire [7:0]data_BIST;
  wire [0:0]data_FB;
  wire NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TFB_UNCONNECTED;
  wire NLW_OSERDESE2_inst_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("DDR"),
    .DATA_WIDTH(8),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    OSERDESE2_inst
       (.CLK(HS_CLK),
        .CLKDIV(CLK),
        .D1(data_BIST[0]),
        .D2(data_BIST[1]),
        .D3(data_BIST[2]),
        .D4(data_BIST[3]),
        .D5(data_BIST[4]),
        .D6(data_BIST[5]),
        .D7(data_BIST[6]),
        .D8(data_BIST[7]),
        .OCE(CE0),
        .OFB(data_FB),
        .OQ(Sample),
        .RST(RESET_SER),
        .SHIFTIN1(NLW_OSERDESE2_inst_SHIFTIN1_UNCONNECTED),
        .SHIFTIN2(NLW_OSERDESE2_inst_SHIFTIN2_UNCONNECTED),
        .SHIFTOUT1(NLW_OSERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_OSERDESE2_inst_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_OSERDESE2_inst_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_OSERDESE2_inst_TFB_UNCONNECTED),
        .TQ(NLW_OSERDESE2_inst_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "deserializer_1_8_primitive" *) 
module DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive
   (DES_out,
    int_CE,
    HS_CLK,
    nHS_CLK,
    CLK,
    data_FB,
    RESET_SER);
  output [7:0]DES_out;
  input int_CE;
  input HS_CLK;
  input nHS_CLK;
  input CLK;
  input [0:0]data_FB;
  input RESET_SER;

  wire CLK;
  wire [7:0]DES_out;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]data_FB;
  wire int_CE;
  wire nHS_CLK;
  wire NLW_ISERDESE2_inst_O_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLK_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLKB_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b0),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("TRUE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_inst
       (.BITSLIP(1'b0),
        .CE1(int_CE),
        .CE2(int_CE),
        .CLK(HS_CLK),
        .CLKB(nHS_CLK),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_inst_O_UNCONNECTED),
        .OCLK(NLW_ISERDESE2_inst_OCLK_UNCONNECTED),
        .OCLKB(NLW_ISERDESE2_inst_OCLKB_UNCONNECTED),
        .OFB(data_FB),
        .Q1(DES_out[7]),
        .Q2(DES_out[6]),
        .Q3(DES_out[5]),
        .Q4(DES_out[4]),
        .Q5(DES_out[3]),
        .Q6(DES_out[2]),
        .Q7(DES_out[1]),
        .Q8(DES_out[0]),
        .RST(RESET_SER),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "deserializer_1_8_primitive" *) 
module DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_10
   (DES_out,
    int_CE,
    HS_CLK,
    nHS_CLK,
    CLK,
    data_FB,
    RESET_SER);
  output [7:0]DES_out;
  input int_CE;
  input HS_CLK;
  input nHS_CLK;
  input CLK;
  input [0:0]data_FB;
  input RESET_SER;

  wire CLK;
  wire [7:0]DES_out;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]data_FB;
  wire int_CE;
  wire nHS_CLK;
  wire NLW_ISERDESE2_inst_O_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLK_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLKB_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b0),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("TRUE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_inst
       (.BITSLIP(1'b0),
        .CE1(int_CE),
        .CE2(int_CE),
        .CLK(HS_CLK),
        .CLKB(nHS_CLK),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_inst_O_UNCONNECTED),
        .OCLK(NLW_ISERDESE2_inst_OCLK_UNCONNECTED),
        .OCLKB(NLW_ISERDESE2_inst_OCLKB_UNCONNECTED),
        .OFB(data_FB),
        .Q1(DES_out[7]),
        .Q2(DES_out[6]),
        .Q3(DES_out[5]),
        .Q4(DES_out[4]),
        .Q5(DES_out[3]),
        .Q6(DES_out[2]),
        .Q7(DES_out[1]),
        .Q8(DES_out[0]),
        .RST(RESET_SER),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "deserializer_1_8_primitive" *) 
module DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_11
   (DES_out,
    int_CE,
    HS_CLK,
    nHS_CLK,
    CLK,
    data_FB,
    RESET_SER);
  output [7:0]DES_out;
  input int_CE;
  input HS_CLK;
  input nHS_CLK;
  input CLK;
  input [0:0]data_FB;
  input RESET_SER;

  wire CLK;
  wire [7:0]DES_out;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]data_FB;
  wire int_CE;
  wire nHS_CLK;
  wire NLW_ISERDESE2_inst_O_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLK_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLKB_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b0),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("TRUE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_inst
       (.BITSLIP(1'b0),
        .CE1(int_CE),
        .CE2(int_CE),
        .CLK(HS_CLK),
        .CLKB(nHS_CLK),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_inst_O_UNCONNECTED),
        .OCLK(NLW_ISERDESE2_inst_OCLK_UNCONNECTED),
        .OCLKB(NLW_ISERDESE2_inst_OCLKB_UNCONNECTED),
        .OFB(data_FB),
        .Q1(DES_out[7]),
        .Q2(DES_out[6]),
        .Q3(DES_out[5]),
        .Q4(DES_out[4]),
        .Q5(DES_out[3]),
        .Q6(DES_out[2]),
        .Q7(DES_out[1]),
        .Q8(DES_out[0]),
        .RST(RESET_SER),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "deserializer_1_8_primitive" *) 
module DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_12
   (DES_out,
    int_CE,
    HS_CLK,
    nHS_CLK,
    CLK,
    data_FB,
    RESET_SER);
  output [7:0]DES_out;
  input int_CE;
  input HS_CLK;
  input nHS_CLK;
  input CLK;
  input [0:0]data_FB;
  input RESET_SER;

  wire CLK;
  wire [7:0]DES_out;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]data_FB;
  wire int_CE;
  wire nHS_CLK;
  wire NLW_ISERDESE2_inst_O_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLK_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLKB_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b0),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("TRUE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_inst
       (.BITSLIP(1'b0),
        .CE1(int_CE),
        .CE2(int_CE),
        .CLK(HS_CLK),
        .CLKB(nHS_CLK),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_inst_O_UNCONNECTED),
        .OCLK(NLW_ISERDESE2_inst_OCLK_UNCONNECTED),
        .OCLKB(NLW_ISERDESE2_inst_OCLKB_UNCONNECTED),
        .OFB(data_FB),
        .Q1(DES_out[7]),
        .Q2(DES_out[6]),
        .Q3(DES_out[5]),
        .Q4(DES_out[4]),
        .Q5(DES_out[3]),
        .Q6(DES_out[2]),
        .Q7(DES_out[1]),
        .Q8(DES_out[0]),
        .RST(RESET_SER),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "deserializer_1_8_primitive" *) 
module DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_13
   (\slv_reg0_reg[0] ,
    S,
    int_CE,
    HS_CLK,
    nHS_CLK,
    CLK,
    data_FB,
    RESET_SER,
    Din_del4);
  output [6:0]\slv_reg0_reg[0] ;
  output [0:0]S;
  input int_CE;
  input HS_CLK;
  input nHS_CLK;
  input CLK;
  input [0:0]data_FB;
  input RESET_SER;
  input [0:0]Din_del4;

  wire CLK;
  wire [39:39]DES_out;
  wire [0:0]Din_del4;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]S;
  wire [0:0]data_FB;
  wire int_CE;
  wire nHS_CLK;
  wire [6:0]\slv_reg0_reg[0] ;
  wire NLW_ISERDESE2_inst_O_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLK_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLKB_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b0),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("TRUE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_inst
       (.BITSLIP(1'b0),
        .CE1(int_CE),
        .CE2(int_CE),
        .CLK(HS_CLK),
        .CLKB(nHS_CLK),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_inst_O_UNCONNECTED),
        .OCLK(NLW_ISERDESE2_inst_OCLK_UNCONNECTED),
        .OCLKB(NLW_ISERDESE2_inst_OCLKB_UNCONNECTED),
        .OFB(data_FB),
        .Q1(\slv_reg0_reg[0] [6]),
        .Q2(\slv_reg0_reg[0] [5]),
        .Q3(\slv_reg0_reg[0] [4]),
        .Q4(DES_out),
        .Q5(\slv_reg0_reg[0] [3]),
        .Q6(\slv_reg0_reg[0] [2]),
        .Q7(\slv_reg0_reg[0] [1]),
        .Q8(\slv_reg0_reg[0] [0]),
        .RST(RESET_SER),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED));
  LUT2 #(
    .INIT(4'h9)) 
    correct_i_5
       (.I0(DES_out),
        .I1(Din_del4),
        .O(S));
endmodule

(* ORIG_REF_NAME = "deserializer_1_8_primitive" *) 
module DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_7
   (DES_out,
    int_CE,
    HS_CLK,
    nHS_CLK,
    CLK,
    data_FB,
    RESET_SER);
  output [7:0]DES_out;
  input int_CE;
  input HS_CLK;
  input nHS_CLK;
  input CLK;
  input [0:0]data_FB;
  input RESET_SER;

  wire CLK;
  wire [7:0]DES_out;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]data_FB;
  wire int_CE;
  wire nHS_CLK;
  wire NLW_ISERDESE2_inst_O_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLK_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLKB_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b0),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("TRUE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_inst
       (.BITSLIP(1'b0),
        .CE1(int_CE),
        .CE2(int_CE),
        .CLK(HS_CLK),
        .CLKB(nHS_CLK),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_inst_O_UNCONNECTED),
        .OCLK(NLW_ISERDESE2_inst_OCLK_UNCONNECTED),
        .OCLKB(NLW_ISERDESE2_inst_OCLKB_UNCONNECTED),
        .OFB(data_FB),
        .Q1(DES_out[7]),
        .Q2(DES_out[6]),
        .Q3(DES_out[5]),
        .Q4(DES_out[4]),
        .Q5(DES_out[3]),
        .Q6(DES_out[2]),
        .Q7(DES_out[1]),
        .Q8(DES_out[0]),
        .RST(RESET_SER),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "deserializer_1_8_primitive" *) 
module DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_8
   (DES_out,
    int_CE,
    HS_CLK,
    nHS_CLK,
    CLK,
    data_FB,
    RESET_SER);
  output [7:0]DES_out;
  input int_CE;
  input HS_CLK;
  input nHS_CLK;
  input CLK;
  input [0:0]data_FB;
  input RESET_SER;

  wire CLK;
  wire [7:0]DES_out;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]data_FB;
  wire int_CE;
  wire nHS_CLK;
  wire NLW_ISERDESE2_inst_O_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLK_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLKB_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b0),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("TRUE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_inst
       (.BITSLIP(1'b0),
        .CE1(int_CE),
        .CE2(int_CE),
        .CLK(HS_CLK),
        .CLKB(nHS_CLK),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_inst_O_UNCONNECTED),
        .OCLK(NLW_ISERDESE2_inst_OCLK_UNCONNECTED),
        .OCLKB(NLW_ISERDESE2_inst_OCLKB_UNCONNECTED),
        .OFB(data_FB),
        .Q1(DES_out[7]),
        .Q2(DES_out[6]),
        .Q3(DES_out[5]),
        .Q4(DES_out[4]),
        .Q5(DES_out[3]),
        .Q6(DES_out[2]),
        .Q7(DES_out[1]),
        .Q8(DES_out[0]),
        .RST(RESET_SER),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "deserializer_1_8_primitive" *) 
module DDS_top_DDS_core_ip_0_1_deserializer_1_8_primitive_9
   (DES_out,
    int_CE,
    HS_CLK,
    nHS_CLK,
    CLK,
    data_FB,
    RESET_SER);
  output [7:0]DES_out;
  input int_CE;
  input HS_CLK;
  input nHS_CLK;
  input CLK;
  input [0:0]data_FB;
  input RESET_SER;

  wire CLK;
  wire [7:0]DES_out;
  wire HS_CLK;
  wire RESET_SER;
  wire [0:0]data_FB;
  wire int_CE;
  wire nHS_CLK;
  wire NLW_ISERDESE2_inst_O_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLK_UNCONNECTED;
  wire NLW_ISERDESE2_inst_OCLKB_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED;
  wire NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(8),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b0),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(1),
    .OFB_USED("TRUE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    ISERDESE2_inst
       (.BITSLIP(1'b0),
        .CE1(int_CE),
        .CE2(int_CE),
        .CLK(HS_CLK),
        .CLKB(nHS_CLK),
        .CLKDIV(CLK),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_ISERDESE2_inst_O_UNCONNECTED),
        .OCLK(NLW_ISERDESE2_inst_OCLK_UNCONNECTED),
        .OCLKB(NLW_ISERDESE2_inst_OCLKB_UNCONNECTED),
        .OFB(data_FB),
        .Q1(DES_out[7]),
        .Q2(DES_out[6]),
        .Q3(DES_out[5]),
        .Q4(DES_out[4]),
        .Q5(DES_out[3]),
        .Q6(DES_out[2]),
        .Q7(DES_out[1]),
        .Q8(DES_out[0]),
        .RST(RESET_SER),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_ISERDESE2_inst_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_ISERDESE2_inst_SHIFTOUT2_UNCONNECTED));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
