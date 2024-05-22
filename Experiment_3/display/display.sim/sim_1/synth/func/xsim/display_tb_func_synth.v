// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu May  9 14:15:46 2024
// Host        : Peng0v0 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/project/display_multi/display/display.sim/sim_1/synth/func/xsim/display_tb_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_wiz_0
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  wire clk_in1_n;
  wire clk_in1_p;
  wire clk_out1;
  wire clk_out2;
  wire locked;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1_n(clk_in1_n),
        .clk_in1_p(clk_in1_p),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1_p,
    clk_in1_n);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;

  wire clk_in1_clk_wiz_0;
  wire clk_in1_n;
  wire clk_in1_p;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clk_out2;
  wire clk_out2_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufgds
       (.I(clk_in1_p),
        .IB(clk_in1_n),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_clk_wiz_0),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(5.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(5.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(20.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(100),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_clk_wiz_0),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module display
   (p_0_in_0,
    O,
    \digit1[2]_i_32_0 ,
    \digit4[2]_i_134_0 ,
    \digit4[2]_i_216_0 ,
    \digit4[2]_i_266_0 ,
    \digit4[2]_i_357_0 ,
    \digit4[2]_i_406_0 ,
    \digit4[2]_i_423_0 ,
    \digit1[3]_i_27_0 ,
    \digit1[3]_i_33_0 ,
    \digit2[3]_i_29_0 ,
    \digit2[3]_i_37_0 ,
    \digit3[3]_i_25_0 ,
    \digit3[3]_i_35_0 ,
    \digit4[3]_i_18_0 ,
    \digit4[2]_i_42_0 ,
    p_0_in,
    abs_a,
    abs_b,
    p,
    \b[0] ,
    \b[0]_0 ,
    seg1_OBUF,
    seg2_OBUF,
    seg3_OBUF,
    seg4_OBUF,
    ans_OBUF,
    clk_out1,
    p_1,
    \digit4_reg[1]_0 ,
    \digit4_reg[1]_1 ,
    b_IBUF,
    a_IBUF,
    c0,
    D,
    \digit2_reg[3]_0 ,
    \digit3_reg[3]_0 ,
    \digit4_reg[3]_0 );
  output p_0_in_0;
  output [3:0]O;
  output [3:0]\digit1[2]_i_32_0 ;
  output [3:0]\digit4[2]_i_134_0 ;
  output [3:0]\digit4[2]_i_216_0 ;
  output [3:0]\digit4[2]_i_266_0 ;
  output [3:0]\digit4[2]_i_357_0 ;
  output [3:0]\digit4[2]_i_406_0 ;
  output [1:0]\digit4[2]_i_423_0 ;
  output [3:0]\digit1[3]_i_27_0 ;
  output [3:0]\digit1[3]_i_33_0 ;
  output [3:0]\digit2[3]_i_29_0 ;
  output [3:0]\digit2[3]_i_37_0 ;
  output [3:0]\digit3[3]_i_25_0 ;
  output [3:0]\digit3[3]_i_35_0 ;
  output [3:0]\digit4[3]_i_18_0 ;
  output [1:0]\digit4[2]_i_42_0 ;
  output [2:0]p_0_in;
  output [28:0]abs_a;
  output [25:0]abs_b;
  output [0:0]p;
  output \b[0] ;
  output \b[0]_0 ;
  output [6:0]seg1_OBUF;
  output [6:0]seg2_OBUF;
  output [6:0]seg3_OBUF;
  output [6:0]seg4_OBUF;
  output [1:0]ans_OBUF;
  input clk_out1;
  input [0:0]p_1;
  input \digit4_reg[1]_0 ;
  input \digit4_reg[1]_1 ;
  input [31:0]b_IBUF;
  input [31:0]a_IBUF;
  input [1:0]c0;
  input [3:0]D;
  input [3:0]\digit2_reg[3]_0 ;
  input [3:0]\digit3_reg[3]_0 ;
  input [2:0]\digit4_reg[3]_0 ;

  wire [3:0]D;
  wire [3:0]O;
  wire [31:0]a_IBUF;
  wire [28:0]abs_a;
  wire [30:0]abs_a1;
  wire [25:0]abs_b;
  wire [30:0]abs_b1;
  wire \ans[6]_i_1_n_0 ;
  wire [1:0]ans_OBUF;
  wire \b[0] ;
  wire \b[0]_0 ;
  wire [31:0]b_IBUF;
  wire [1:0]c0;
  wire clk_out1;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [3:0]\digit1[2]_i_32_0 ;
  wire [3:0]\digit1[3]_i_27_0 ;
  wire [3:0]\digit1[3]_i_33_0 ;
  wire \digit1_reg[1]_i_4_n_0 ;
  wire \digit1_reg[1]_i_4_n_1 ;
  wire \digit1_reg[1]_i_4_n_2 ;
  wire \digit1_reg[1]_i_4_n_3 ;
  wire \digit1_reg[2]_i_28_n_0 ;
  wire \digit1_reg[2]_i_28_n_1 ;
  wire \digit1_reg[2]_i_28_n_2 ;
  wire \digit1_reg[2]_i_28_n_3 ;
  wire \digit1_reg[3]_i_18_n_0 ;
  wire \digit1_reg[3]_i_18_n_1 ;
  wire \digit1_reg[3]_i_18_n_2 ;
  wire \digit1_reg[3]_i_18_n_3 ;
  wire \digit1_reg[3]_i_20_n_0 ;
  wire \digit1_reg[3]_i_20_n_1 ;
  wire \digit1_reg[3]_i_20_n_2 ;
  wire \digit1_reg[3]_i_20_n_3 ;
  wire \digit1_reg_n_0_[0] ;
  wire \digit1_reg_n_0_[1] ;
  wire \digit1_reg_n_0_[2] ;
  wire \digit1_reg_n_0_[3] ;
  wire [3:0]\digit2[3]_i_29_0 ;
  wire [3:0]\digit2[3]_i_37_0 ;
  wire [3:0]\digit2_reg[3]_0 ;
  wire \digit2_reg[3]_i_16_n_0 ;
  wire \digit2_reg[3]_i_16_n_1 ;
  wire \digit2_reg[3]_i_16_n_2 ;
  wire \digit2_reg[3]_i_16_n_3 ;
  wire \digit2_reg[3]_i_18_n_0 ;
  wire \digit2_reg[3]_i_18_n_1 ;
  wire \digit2_reg[3]_i_18_n_2 ;
  wire \digit2_reg[3]_i_18_n_3 ;
  wire \digit2_reg_n_0_[0] ;
  wire \digit2_reg_n_0_[1] ;
  wire \digit2_reg_n_0_[2] ;
  wire \digit2_reg_n_0_[3] ;
  wire [3:0]\digit3[3]_i_25_0 ;
  wire [3:0]\digit3[3]_i_35_0 ;
  wire [3:0]\digit3_reg[3]_0 ;
  wire \digit3_reg[3]_i_16_n_0 ;
  wire \digit3_reg[3]_i_16_n_1 ;
  wire \digit3_reg[3]_i_16_n_2 ;
  wire \digit3_reg[3]_i_16_n_3 ;
  wire \digit3_reg[3]_i_19_n_0 ;
  wire \digit3_reg[3]_i_19_n_1 ;
  wire \digit3_reg[3]_i_19_n_2 ;
  wire \digit3_reg[3]_i_19_n_3 ;
  wire \digit3_reg_n_0_[0] ;
  wire \digit3_reg_n_0_[1] ;
  wire \digit3_reg_n_0_[2] ;
  wire \digit3_reg_n_0_[3] ;
  wire \digit4[1]_i_1_n_0 ;
  wire \digit4[1]_i_2_n_0 ;
  wire \digit4[1]_i_3_n_0 ;
  wire \digit4[1]_i_5_n_0 ;
  wire [3:0]\digit4[2]_i_134_0 ;
  wire [3:0]\digit4[2]_i_216_0 ;
  wire [3:0]\digit4[2]_i_266_0 ;
  wire [3:0]\digit4[2]_i_357_0 ;
  wire [3:0]\digit4[2]_i_406_0 ;
  wire [1:0]\digit4[2]_i_423_0 ;
  wire [1:0]\digit4[2]_i_42_0 ;
  wire [3:0]\digit4[3]_i_18_0 ;
  wire \digit4_reg[1]_0 ;
  wire \digit4_reg[1]_1 ;
  wire \digit4_reg[2]_i_109_n_0 ;
  wire \digit4_reg[2]_i_109_n_1 ;
  wire \digit4_reg[2]_i_109_n_2 ;
  wire \digit4_reg[2]_i_109_n_3 ;
  wire \digit4_reg[2]_i_183_n_0 ;
  wire \digit4_reg[2]_i_183_n_1 ;
  wire \digit4_reg[2]_i_183_n_2 ;
  wire \digit4_reg[2]_i_183_n_3 ;
  wire \digit4_reg[2]_i_239_n_0 ;
  wire \digit4_reg[2]_i_239_n_1 ;
  wire \digit4_reg[2]_i_239_n_2 ;
  wire \digit4_reg[2]_i_239_n_3 ;
  wire \digit4_reg[2]_i_23_n_3 ;
  wire \digit4_reg[2]_i_330_n_0 ;
  wire \digit4_reg[2]_i_330_n_1 ;
  wire \digit4_reg[2]_i_330_n_2 ;
  wire \digit4_reg[2]_i_330_n_3 ;
  wire \digit4_reg[2]_i_387_n_0 ;
  wire \digit4_reg[2]_i_387_n_1 ;
  wire \digit4_reg[2]_i_387_n_2 ;
  wire \digit4_reg[2]_i_387_n_3 ;
  wire \digit4_reg[2]_i_415_n_3 ;
  wire [2:0]\digit4_reg[3]_0 ;
  wire \digit4_reg[3]_i_9_n_0 ;
  wire \digit4_reg[3]_i_9_n_1 ;
  wire \digit4_reg[3]_i_9_n_2 ;
  wire \digit4_reg[3]_i_9_n_3 ;
  wire \digit4_reg_n_0_[0] ;
  wire \digit4_reg_n_0_[1] ;
  wire \digit4_reg_n_0_[2] ;
  wire \digit4_reg_n_0_[3] ;
  wire [0:0]p;
  wire [2:0]p_0_in;
  wire p_0_in_0;
  wire [0:0]p_1;
  wire [6:0]seg1_OBUF;
  wire [6:0]seg2_OBUF;
  wire [6:0]seg3_OBUF;
  wire [6:0]seg4_OBUF;
  wire [3:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_digit4_reg[2]_i_23_CO_UNCONNECTED ;
  wire [3:2]\NLW_digit4_reg[2]_i_23_O_UNCONNECTED ;
  wire [3:1]\NLW_digit4_reg[2]_i_415_CO_UNCONNECTED ;
  wire [3:2]\NLW_digit4_reg[2]_i_415_O_UNCONNECTED ;

  seg7 SEG1
       (.Q({\digit1_reg_n_0_[3] ,\digit1_reg_n_0_[2] ,\digit1_reg_n_0_[1] ,\digit1_reg_n_0_[0] }),
        .seg1_OBUF(seg1_OBUF));
  seg7_0 SEG2
       (.Q({\digit2_reg_n_0_[3] ,\digit2_reg_n_0_[2] ,\digit2_reg_n_0_[1] ,\digit2_reg_n_0_[0] }),
        .seg2_OBUF(seg2_OBUF));
  seg7_1 SEG3
       (.Q({\digit3_reg_n_0_[3] ,\digit3_reg_n_0_[2] ,\digit3_reg_n_0_[1] ,\digit3_reg_n_0_[0] }),
        .seg3_OBUF(seg3_OBUF));
  seg7_2 SEG4
       (.Q({\digit4_reg_n_0_[3] ,\digit4_reg_n_0_[2] ,\digit4_reg_n_0_[1] ,\digit4_reg_n_0_[0] }),
        .seg4_OBUF(seg4_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \ans[6]_i_1 
       (.I0(p_0_in_0),
        .O(\ans[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b1),
        .Q(ans_OBUF[0]),
        .R(\ans[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\ans[6]_i_1_n_0 ),
        .Q(ans_OBUF[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(\count_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(\count_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(\count_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] ,\count_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(\count_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(\count_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(\count_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(p_0_in_0),
        .R(1'b0));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [3:1],\count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,p_0_in_0}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[1]_i_10 
       (.I0(a_IBUF[2]),
        .O(abs_a1[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[1]_i_11 
       (.I0(a_IBUF[1]),
        .O(abs_a1[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[1]_i_16 
       (.I0(O[3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[4]),
        .O(abs_a[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[1]_i_17 
       (.I0(\digit1[3]_i_27_0 [2]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[3]),
        .O(abs_b[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[1]_i_7 
       (.I0(a_IBUF[0]),
        .O(abs_a1[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[1]_i_8 
       (.I0(a_IBUF[4]),
        .O(abs_a1[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[1]_i_9 
       (.I0(a_IBUF[3]),
        .O(abs_a1[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[2]_i_10 
       (.I0(\digit1[3]_i_27_0 [3]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[4]),
        .O(abs_b[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[2]_i_18 
       (.I0(\digit1[3]_i_33_0 [0]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[5]),
        .O(abs_b[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[2]_i_25 
       (.I0(\digit1[2]_i_32_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[5]),
        .O(abs_a[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[2]_i_26 
       (.I0(\digit1[2]_i_32_0 [1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[6]),
        .O(abs_a[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[2]_i_29 
       (.I0(a_IBUF[8]),
        .O(abs_a1[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[2]_i_30 
       (.I0(a_IBUF[7]),
        .O(abs_a1[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[2]_i_31 
       (.I0(a_IBUF[6]),
        .O(abs_a1[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[2]_i_32 
       (.I0(a_IBUF[5]),
        .O(abs_a1[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[2]_i_4 
       (.I0(\digit1[3]_i_27_0 [1]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[2]),
        .O(abs_b[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[2]_i_5 
       (.I0(O[1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[2]),
        .O(abs_a[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[2]_i_6 
       (.I0(\digit1[3]_i_27_0 [0]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[1]),
        .O(abs_b[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[2]_i_7 
       (.I0(O[0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[1]),
        .O(abs_a[0]));
  LUT6 #(
    .INIT(64'hF80807F787778777)) 
    \digit1[3]_i_10 
       (.I0(abs_a[0]),
        .I1(abs_b[0]),
        .I2(b_IBUF[0]),
        .I3(abs_a[1]),
        .I4(abs_b[1]),
        .I5(a_IBUF[0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h8787877777778777)) 
    \digit1[3]_i_11 
       (.I0(a_IBUF[0]),
        .I1(abs_b[0]),
        .I2(b_IBUF[0]),
        .I3(a_IBUF[1]),
        .I4(a_IBUF[31]),
        .I5(O[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[3]_i_22 
       (.I0(O[2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[3]),
        .O(abs_a[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_23 
       (.I0(b_IBUF[0]),
        .O(abs_b1[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_24 
       (.I0(b_IBUF[4]),
        .O(abs_b1[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_25 
       (.I0(b_IBUF[3]),
        .O(abs_b1[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_26 
       (.I0(b_IBUF[2]),
        .O(abs_b1[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_27 
       (.I0(b_IBUF[1]),
        .O(abs_b1[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_30 
       (.I0(b_IBUF[8]),
        .O(abs_b1[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_31 
       (.I0(b_IBUF[7]),
        .O(abs_b1[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_32 
       (.I0(b_IBUF[6]),
        .O(abs_b1[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_33 
       (.I0(b_IBUF[5]),
        .O(abs_b1[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit1[3]_i_4 
       (.I0(b_IBUF[31]),
        .I1(a_IBUF[31]),
        .O(p));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[3]_i_44 
       (.I0(\digit1[2]_i_32_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[7]),
        .O(abs_a[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \digit1[3]_i_7 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[0]),
        .Q(\digit1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[1]),
        .Q(\digit1_reg_n_0_[1] ),
        .R(1'b0));
  CARRY4 \digit1_reg[1]_i_4 
       (.CI(1'b0),
        .CO({\digit1_reg[1]_i_4_n_0 ,\digit1_reg[1]_i_4_n_1 ,\digit1_reg[1]_i_4_n_2 ,\digit1_reg[1]_i_4_n_3 }),
        .CYINIT(abs_a1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O),
        .S(abs_a1[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[2]),
        .Q(\digit1_reg_n_0_[2] ),
        .R(1'b0));
  CARRY4 \digit1_reg[2]_i_28 
       (.CI(\digit1_reg[1]_i_4_n_0 ),
        .CO({\digit1_reg[2]_i_28_n_0 ,\digit1_reg[2]_i_28_n_1 ,\digit1_reg[2]_i_28_n_2 ,\digit1_reg[2]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit1[2]_i_32_0 ),
        .S(abs_a1[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D[3]),
        .Q(\digit1_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \digit1_reg[3]_i_18 
       (.CI(1'b0),
        .CO({\digit1_reg[3]_i_18_n_0 ,\digit1_reg[3]_i_18_n_1 ,\digit1_reg[3]_i_18_n_2 ,\digit1_reg[3]_i_18_n_3 }),
        .CYINIT(abs_b1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit1[3]_i_27_0 ),
        .S(abs_b1[4:1]));
  CARRY4 \digit1_reg[3]_i_20 
       (.CI(\digit1_reg[3]_i_18_n_0 ),
        .CO({\digit1_reg[3]_i_20_n_0 ,\digit1_reg[3]_i_20_n_1 ,\digit1_reg[3]_i_20_n_2 ,\digit1_reg[3]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit1[3]_i_33_0 ),
        .S(abs_b1[8:5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[0]_i_11 
       (.I0(\digit2[3]_i_29_0 [1]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[10]),
        .O(abs_b[9]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[0]_i_17 
       (.I0(\digit2[3]_i_29_0 [2]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[11]),
        .O(abs_b[10]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[0]_i_18 
       (.I0(\digit1[3]_i_33_0 [1]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[6]),
        .O(abs_b[5]));
  LUT6 #(
    .INIT(64'hB888477787778777)) 
    \digit2[0]_i_39 
       (.I0(abs_b[1]),
        .I1(abs_a[9]),
        .I2(abs_a[10]),
        .I3(abs_b[0]),
        .I4(abs_a[11]),
        .I5(b_IBUF[0]),
        .O(\b[0] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[1]_i_11 
       (.I0(\digit1[3]_i_33_0 [3]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[8]),
        .O(abs_b[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[1]_i_42 
       (.I0(\digit4[2]_i_134_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[9]),
        .O(abs_a[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[2]_i_10 
       (.I0(\digit2[3]_i_37_0 [1]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[14]),
        .O(abs_b[13]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[2]_i_8 
       (.I0(\digit2[3]_i_37_0 [0]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[13]),
        .O(abs_b[12]));
  LUT6 #(
    .INIT(64'hF0880F7787778777)) 
    \digit2[3]_i_144 
       (.I0(abs_a[13]),
        .I1(abs_b[0]),
        .I2(abs_a[14]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[12]),
        .O(\b[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[3]_i_147 
       (.I0(\digit4[2]_i_216_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[15]),
        .O(abs_a[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_26 
       (.I0(b_IBUF[12]),
        .O(abs_b1[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_27 
       (.I0(b_IBUF[11]),
        .O(abs_b1[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_28 
       (.I0(b_IBUF[10]),
        .O(abs_b1[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_29 
       (.I0(b_IBUF[9]),
        .O(abs_b1[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_34 
       (.I0(b_IBUF[16]),
        .O(abs_b1[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_35 
       (.I0(b_IBUF[15]),
        .O(abs_b1[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_36 
       (.I0(b_IBUF[14]),
        .O(abs_b1[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_37 
       (.I0(b_IBUF[13]),
        .O(abs_b1[13]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[3]_i_45 
       (.I0(\digit1[3]_i_33_0 [2]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[7]),
        .O(abs_b[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[3]_i_49 
       (.I0(\digit2[3]_i_29_0 [0]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[9]),
        .O(abs_b[8]));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit2_reg[3]_0 [0]),
        .Q(\digit2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit2_reg[3]_0 [1]),
        .Q(\digit2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit2_reg[3]_0 [2]),
        .Q(\digit2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit2_reg[3]_0 [3]),
        .Q(\digit2_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \digit2_reg[3]_i_16 
       (.CI(\digit1_reg[3]_i_20_n_0 ),
        .CO({\digit2_reg[3]_i_16_n_0 ,\digit2_reg[3]_i_16_n_1 ,\digit2_reg[3]_i_16_n_2 ,\digit2_reg[3]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit2[3]_i_29_0 ),
        .S(abs_b1[12:9]));
  CARRY4 \digit2_reg[3]_i_18 
       (.CI(\digit2_reg[3]_i_16_n_0 ),
        .CO({\digit2_reg[3]_i_18_n_0 ,\digit2_reg[3]_i_18_n_1 ,\digit2_reg[3]_i_18_n_2 ,\digit2_reg[3]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit2[3]_i_37_0 ),
        .S(abs_b1[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[1]_i_14 
       (.I0(\digit3[3]_i_25_0 [2]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[19]),
        .O(abs_b[18]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[1]_i_21 
       (.I0(\digit3[3]_i_25_0 [3]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[20]),
        .O(abs_b[19]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[1]_i_6 
       (.I0(\digit2[3]_i_37_0 [3]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[16]),
        .O(abs_b[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[1]_i_8 
       (.I0(\digit3[3]_i_25_0 [0]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[17]),
        .O(abs_b[16]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[2]_i_97 
       (.I0(\digit4[2]_i_266_0 [1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[18]),
        .O(abs_a[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[3]_i_178 
       (.I0(\digit4[2]_i_266_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[19]),
        .O(abs_a[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[3]_i_202 
       (.I0(\digit4[2]_i_357_0 [1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[22]),
        .O(abs_a[21]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_22 
       (.I0(b_IBUF[20]),
        .O(abs_b1[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_23 
       (.I0(b_IBUF[19]),
        .O(abs_b1[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_24 
       (.I0(b_IBUF[18]),
        .O(abs_b1[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_25 
       (.I0(b_IBUF[17]),
        .O(abs_b1[17]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_32 
       (.I0(b_IBUF[24]),
        .O(abs_b1[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_33 
       (.I0(b_IBUF[23]),
        .O(abs_b1[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_34 
       (.I0(b_IBUF[22]),
        .O(abs_b1[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_35 
       (.I0(b_IBUF[21]),
        .O(abs_b1[21]));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit3_reg[3]_0 [0]),
        .Q(\digit3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit3_reg[3]_0 [1]),
        .Q(\digit3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit3_reg[3]_0 [2]),
        .Q(\digit3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit3_reg[3]_0 [3]),
        .Q(\digit3_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \digit3_reg[3]_i_16 
       (.CI(\digit2_reg[3]_i_18_n_0 ),
        .CO({\digit3_reg[3]_i_16_n_0 ,\digit3_reg[3]_i_16_n_1 ,\digit3_reg[3]_i_16_n_2 ,\digit3_reg[3]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit3[3]_i_25_0 ),
        .S(abs_b1[20:17]));
  CARRY4 \digit3_reg[3]_i_19 
       (.CI(\digit3_reg[3]_i_16_n_0 ),
        .CO({\digit3_reg[3]_i_19_n_0 ,\digit3_reg[3]_i_19_n_1 ,\digit3_reg[3]_i_19_n_2 ,\digit3_reg[3]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit3[3]_i_35_0 ),
        .S(abs_b1[24:21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[0]_i_12 
       (.I0(\digit3[3]_i_35_0 [2]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[23]),
        .O(abs_b[21]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[0]_i_6 
       (.I0(\digit3[3]_i_35_0 [1]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[22]),
        .O(abs_b[20]));
  LUT6 #(
    .INIT(64'hEAEAFFEAFFEAEAEA)) 
    \digit4[1]_i_1 
       (.I0(\digit4[1]_i_2_n_0 ),
        .I1(\digit4[1]_i_3_n_0 ),
        .I2(p_1),
        .I3(\digit4[1]_i_5_n_0 ),
        .I4(\digit4_reg[1]_0 ),
        .I5(\digit4_reg[1]_1 ),
        .O(\digit4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0AA00CC0)) 
    \digit4[1]_i_2 
       (.I0(c0[1]),
        .I1(c0[0]),
        .I2(a_IBUF[31]),
        .I3(b_IBUF[31]),
        .I4(p_0_in_0),
        .O(\digit4[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \digit4[1]_i_3 
       (.I0(a_IBUF[31]),
        .I1(b_IBUF[31]),
        .I2(p_0_in_0),
        .O(\digit4[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \digit4[1]_i_5 
       (.I0(p_0_in_0),
        .I1(a_IBUF[31]),
        .I2(b_IBUF[31]),
        .O(\digit4[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_107 
       (.I0(\digit4[2]_i_134_0 [1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[10]),
        .O(abs_a[9]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_11 
       (.I0(\digit4[3]_i_18_0 [1]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[26]),
        .O(abs_b[24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_129 
       (.I0(\digit4[2]_i_134_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[11]),
        .O(abs_a[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_131 
       (.I0(a_IBUF[12]),
        .O(abs_a1[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_132 
       (.I0(a_IBUF[11]),
        .O(abs_a1[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_133 
       (.I0(a_IBUF[10]),
        .O(abs_a1[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_134 
       (.I0(a_IBUF[9]),
        .O(abs_a1[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_138 
       (.I0(\digit4[2]_i_134_0 [3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[12]),
        .O(abs_a[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_151 
       (.I0(\digit3[3]_i_25_0 [1]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[18]),
        .O(abs_b[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_158 
       (.I0(\digit4[2]_i_216_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[13]),
        .O(abs_a[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_182 
       (.I0(\digit4[2]_i_216_0 [1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[14]),
        .O(abs_a[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_206 
       (.I0(\digit2[3]_i_29_0 [3]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[12]),
        .O(abs_b[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_208 
       (.I0(\digit4[2]_i_216_0 [3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[16]),
        .O(abs_a[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_213 
       (.I0(a_IBUF[16]),
        .O(abs_a1[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_214 
       (.I0(a_IBUF[15]),
        .O(abs_a1[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_215 
       (.I0(a_IBUF[14]),
        .O(abs_a1[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_216 
       (.I0(a_IBUF[13]),
        .O(abs_a1[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_252 
       (.I0(\digit4[2]_i_266_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[17]),
        .O(abs_a[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_263 
       (.I0(a_IBUF[20]),
        .O(abs_a1[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_264 
       (.I0(a_IBUF[19]),
        .O(abs_a1[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_265 
       (.I0(a_IBUF[18]),
        .O(abs_a1[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_266 
       (.I0(a_IBUF[17]),
        .O(abs_a1[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_306 
       (.I0(\digit4[2]_i_357_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[21]),
        .O(abs_a[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_308 
       (.I0(\digit4[2]_i_266_0 [3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[20]),
        .O(abs_a[19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_312 
       (.I0(\digit2[3]_i_37_0 [2]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[15]),
        .O(abs_b[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_354 
       (.I0(a_IBUF[24]),
        .O(abs_a1[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_355 
       (.I0(a_IBUF[23]),
        .O(abs_a1[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_356 
       (.I0(a_IBUF[22]),
        .O(abs_a1[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_357 
       (.I0(a_IBUF[21]),
        .O(abs_a1[21]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_361 
       (.I0(\digit4[2]_i_357_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[23]),
        .O(abs_a[22]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_366 
       (.I0(\digit4[2]_i_357_0 [3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[24]),
        .O(abs_a[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_395 
       (.I0(\digit4[2]_i_406_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[25]),
        .O(abs_a[24]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_396 
       (.I0(\digit4[2]_i_406_0 [1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[26]),
        .O(abs_a[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_401 
       (.I0(\digit4[2]_i_406_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[27]),
        .O(abs_a[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_402 
       (.I0(\digit4[2]_i_406_0 [3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[28]),
        .O(abs_a[27]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_403 
       (.I0(a_IBUF[28]),
        .O(abs_a1[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_404 
       (.I0(a_IBUF[27]),
        .O(abs_a1[27]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_405 
       (.I0(a_IBUF[26]),
        .O(abs_a1[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_406 
       (.I0(a_IBUF[25]),
        .O(abs_a1[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_408 
       (.I0(\digit4[2]_i_423_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[29]),
        .O(abs_a[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_41 
       (.I0(b_IBUF[30]),
        .O(abs_b1[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_42 
       (.I0(b_IBUF[29]),
        .O(abs_b1[29]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_422 
       (.I0(a_IBUF[30]),
        .O(abs_a1[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_423 
       (.I0(a_IBUF[29]),
        .O(abs_a1[29]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_64 
       (.I0(\digit4[3]_i_18_0 [3]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[28]),
        .O(abs_b[25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_65 
       (.I0(\digit3[3]_i_35_0 [3]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[24]),
        .O(abs_b[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_88 
       (.I0(\digit1[2]_i_32_0 [3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[8]),
        .O(abs_a[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_9 
       (.I0(\digit4[3]_i_18_0 [0]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[25]),
        .O(abs_b[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[3]_i_15 
       (.I0(b_IBUF[28]),
        .O(abs_b1[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[3]_i_16 
       (.I0(b_IBUF[27]),
        .O(abs_b1[27]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[3]_i_17 
       (.I0(b_IBUF[26]),
        .O(abs_b1[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[3]_i_18 
       (.I0(b_IBUF[25]),
        .O(abs_b1[25]));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit4_reg[3]_0 [0]),
        .Q(\digit4_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit4[1]_i_1_n_0 ),
        .Q(\digit4_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit4_reg[3]_0 [1]),
        .Q(\digit4_reg_n_0_[2] ),
        .R(1'b0));
  CARRY4 \digit4_reg[2]_i_109 
       (.CI(\digit1_reg[2]_i_28_n_0 ),
        .CO({\digit4_reg[2]_i_109_n_0 ,\digit4_reg[2]_i_109_n_1 ,\digit4_reg[2]_i_109_n_2 ,\digit4_reg[2]_i_109_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit4[2]_i_134_0 ),
        .S(abs_a1[12:9]));
  CARRY4 \digit4_reg[2]_i_183 
       (.CI(\digit4_reg[2]_i_109_n_0 ),
        .CO({\digit4_reg[2]_i_183_n_0 ,\digit4_reg[2]_i_183_n_1 ,\digit4_reg[2]_i_183_n_2 ,\digit4_reg[2]_i_183_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit4[2]_i_216_0 ),
        .S(abs_a1[16:13]));
  CARRY4 \digit4_reg[2]_i_23 
       (.CI(\digit4_reg[3]_i_9_n_0 ),
        .CO({\NLW_digit4_reg[2]_i_23_CO_UNCONNECTED [3:1],\digit4_reg[2]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_digit4_reg[2]_i_23_O_UNCONNECTED [3:2],\digit4[2]_i_42_0 }),
        .S({1'b0,1'b0,abs_b1[30:29]}));
  CARRY4 \digit4_reg[2]_i_239 
       (.CI(\digit4_reg[2]_i_183_n_0 ),
        .CO({\digit4_reg[2]_i_239_n_0 ,\digit4_reg[2]_i_239_n_1 ,\digit4_reg[2]_i_239_n_2 ,\digit4_reg[2]_i_239_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit4[2]_i_266_0 ),
        .S(abs_a1[20:17]));
  CARRY4 \digit4_reg[2]_i_330 
       (.CI(\digit4_reg[2]_i_239_n_0 ),
        .CO({\digit4_reg[2]_i_330_n_0 ,\digit4_reg[2]_i_330_n_1 ,\digit4_reg[2]_i_330_n_2 ,\digit4_reg[2]_i_330_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit4[2]_i_357_0 ),
        .S(abs_a1[24:21]));
  CARRY4 \digit4_reg[2]_i_387 
       (.CI(\digit4_reg[2]_i_330_n_0 ),
        .CO({\digit4_reg[2]_i_387_n_0 ,\digit4_reg[2]_i_387_n_1 ,\digit4_reg[2]_i_387_n_2 ,\digit4_reg[2]_i_387_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit4[2]_i_406_0 ),
        .S(abs_a1[28:25]));
  CARRY4 \digit4_reg[2]_i_415 
       (.CI(\digit4_reg[2]_i_387_n_0 ),
        .CO({\NLW_digit4_reg[2]_i_415_CO_UNCONNECTED [3:1],\digit4_reg[2]_i_415_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_digit4_reg[2]_i_415_O_UNCONNECTED [3:2],\digit4[2]_i_423_0 }),
        .S({1'b0,1'b0,abs_a1[30:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit4_reg[3]_0 [2]),
        .Q(\digit4_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \digit4_reg[3]_i_9 
       (.CI(\digit3_reg[3]_i_19_n_0 ),
        .CO({\digit4_reg[3]_i_9_n_0 ,\digit4_reg[3]_i_9_n_1 ,\digit4_reg[3]_i_9_n_2 ,\digit4_reg[3]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\digit4[3]_i_18_0 ),
        .S(abs_b1[28:25]));
endmodule

module multipleAB32
   (\digit4[2]_i_6 ,
    \count_reg[16] ,
    \a[0] ,
    \b[28] ,
    \count_reg[16]_0 ,
    \count_reg[16]_1 ,
    D,
    \i_/digit4[1]_i_10 ,
    \digit1_reg[0] ,
    p_0_in,
    p,
    a_IBUF,
    b_IBUF,
    \digit1_reg[0]_0 ,
    abs_b,
    abs_a,
    \digit4_reg[0] ,
    \digit3_reg[0] ,
    \digit2_reg[0] ,
    \digit3_reg[0]_0 ,
    \i_/digit3[3]_i_126 ,
    \i_/digit3[2]_i_71 ,
    \i_/digit4[2]_i_181 ,
    \i_/digit4[2]_i_348 ,
    \i_/digit4[2]_i_397 ,
    \i_/digit4[2]_i_14 ,
    \digit4_reg[1] ,
    O,
    \digit2_reg[0]_0 ,
    \i_/digit3[2]_i_54 ,
    \digit2[3]_i_119 ,
    \i_/digit4[2]_i_240 ,
    \i_/digit4[2]_i_411 );
  output [1:0]\digit4[2]_i_6 ;
  output [2:0]\count_reg[16] ;
  output [0:0]\a[0] ;
  output \b[28] ;
  output [3:0]\count_reg[16]_0 ;
  output [3:0]\count_reg[16]_1 ;
  output [3:0]D;
  output \i_/digit4[1]_i_10 ;
  input [2:0]\digit1_reg[0] ;
  input p_0_in;
  input [0:0]p;
  input [31:0]a_IBUF;
  input [31:0]b_IBUF;
  input [3:0]\digit1_reg[0]_0 ;
  input [25:0]abs_b;
  input [28:0]abs_a;
  input [3:0]\digit4_reg[0] ;
  input [3:0]\digit3_reg[0] ;
  input [3:0]\digit2_reg[0] ;
  input [3:0]\digit3_reg[0]_0 ;
  input [3:0]\i_/digit3[3]_i_126 ;
  input \i_/digit3[2]_i_71 ;
  input [3:0]\i_/digit4[2]_i_181 ;
  input [3:0]\i_/digit4[2]_i_348 ;
  input [3:0]\i_/digit4[2]_i_397 ;
  input [1:0]\i_/digit4[2]_i_14 ;
  input [3:0]\digit4_reg[1] ;
  input [3:0]O;
  input [3:0]\digit2_reg[0]_0 ;
  input [3:0]\i_/digit3[2]_i_54 ;
  input \digit2[3]_i_119 ;
  input [3:0]\i_/digit4[2]_i_240 ;
  input [1:0]\i_/digit4[2]_i_411 ;

  wire [3:0]D;
  wire [3:0]O;
  wire [0:0]\a[0] ;
  wire [31:0]a_IBUF;
  wire [28:0]abs_a;
  wire [25:0]abs_b;
  wire \b[28] ;
  wire [31:0]b_IBUF;
  wire [2:0]\count_reg[16] ;
  wire [3:0]\count_reg[16]_0 ;
  wire [3:0]\count_reg[16]_1 ;
  wire [2:0]\digit1_reg[0] ;
  wire [3:0]\digit1_reg[0]_0 ;
  wire \digit2[3]_i_119 ;
  wire [3:0]\digit2_reg[0] ;
  wire [3:0]\digit2_reg[0]_0 ;
  wire [3:0]\digit3_reg[0] ;
  wire [3:0]\digit3_reg[0]_0 ;
  wire [1:0]\digit4[2]_i_6 ;
  wire [3:0]\digit4_reg[0] ;
  wire [3:0]\digit4_reg[1] ;
  wire [3:0]\i_/digit3[2]_i_54 ;
  wire \i_/digit3[2]_i_71 ;
  wire [3:0]\i_/digit3[3]_i_126 ;
  wire \i_/digit4[1]_i_10 ;
  wire [1:0]\i_/digit4[2]_i_14 ;
  wire [3:0]\i_/digit4[2]_i_181 ;
  wire [3:0]\i_/digit4[2]_i_240 ;
  wire [3:0]\i_/digit4[2]_i_348 ;
  wire [3:0]\i_/digit4[2]_i_397 ;
  wire [1:0]\i_/digit4[2]_i_411 ;
  wire [0:0]p;
  wire p_0_in;

  multipler32 multipler32
       (.D(D),
        .O(O),
        .\a[0] (\a[0] ),
        .a_IBUF(a_IBUF),
        .abs_a(abs_a),
        .abs_b(abs_b),
        .\b[28] (\b[28] ),
        .b_IBUF(b_IBUF),
        .\count_reg[16] (\count_reg[16] ),
        .\count_reg[16]_0 (\count_reg[16]_0 ),
        .\count_reg[16]_1 (\count_reg[16]_1 ),
        .\digit1_reg[0] (\digit1_reg[0] ),
        .\digit1_reg[0]_0 (\digit1_reg[0]_0 ),
        .\digit2[3]_i_119_0 (\digit2[3]_i_119 ),
        .\digit2_reg[0] (\digit2_reg[0] ),
        .\digit2_reg[0]_0 (\digit2_reg[0]_0 ),
        .\digit3_reg[0] (\digit3_reg[0] ),
        .\digit3_reg[0]_0 (\digit3_reg[0]_0 ),
        .\digit4[2]_i_6_0 (\digit4[2]_i_6 ),
        .\digit4_reg[0] (\digit4_reg[0] ),
        .\digit4_reg[1] (\digit4_reg[1] ),
        .\i_/digit3[2]_i_54_0 (\i_/digit3[2]_i_54 ),
        .\i_/digit3[2]_i_71_0 (\i_/digit3[2]_i_71 ),
        .\i_/digit3[3]_i_126_0 (\i_/digit3[3]_i_126 ),
        .\i_/digit4[1]_i_10_0 (\i_/digit4[1]_i_10 ),
        .\i_/digit4[2]_i_14_0 (\i_/digit4[2]_i_14 ),
        .\i_/digit4[2]_i_181_0 (\i_/digit4[2]_i_181 ),
        .\i_/digit4[2]_i_240_0 (\i_/digit4[2]_i_240 ),
        .\i_/digit4[2]_i_348_0 (\i_/digit4[2]_i_348 ),
        .\i_/digit4[2]_i_397_0 (\i_/digit4[2]_i_397 ),
        .\i_/digit4[2]_i_411_0 (\i_/digit4[2]_i_411 ),
        .p(p),
        .p_0_in(p_0_in));
endmodule

module multipler32
   (\digit4[2]_i_6_0 ,
    \count_reg[16] ,
    \b[28] ,
    \count_reg[16]_0 ,
    \a[0] ,
    \count_reg[16]_1 ,
    D,
    \i_/digit4[1]_i_10_0 ,
    \digit1_reg[0] ,
    p_0_in,
    p,
    a_IBUF,
    b_IBUF,
    \digit1_reg[0]_0 ,
    abs_b,
    abs_a,
    \digit4_reg[0] ,
    \digit3_reg[0] ,
    \digit2_reg[0] ,
    \digit3_reg[0]_0 ,
    \i_/digit3[3]_i_126_0 ,
    \i_/digit3[2]_i_71_0 ,
    \i_/digit4[2]_i_181_0 ,
    \i_/digit4[2]_i_348_0 ,
    \i_/digit4[2]_i_397_0 ,
    \i_/digit4[2]_i_14_0 ,
    \digit4_reg[1] ,
    O,
    \digit2_reg[0]_0 ,
    \i_/digit3[2]_i_54_0 ,
    \digit2[3]_i_119_0 ,
    \i_/digit4[2]_i_240_0 ,
    \i_/digit4[2]_i_411_0 );
  output [1:0]\digit4[2]_i_6_0 ;
  output [2:0]\count_reg[16] ;
  output \b[28] ;
  output [3:0]\count_reg[16]_0 ;
  output [0:0]\a[0] ;
  output [3:0]\count_reg[16]_1 ;
  output [3:0]D;
  output \i_/digit4[1]_i_10_0 ;
  input [2:0]\digit1_reg[0] ;
  input p_0_in;
  input [0:0]p;
  input [31:0]a_IBUF;
  input [31:0]b_IBUF;
  input [3:0]\digit1_reg[0]_0 ;
  input [25:0]abs_b;
  input [28:0]abs_a;
  input [3:0]\digit4_reg[0] ;
  input [3:0]\digit3_reg[0] ;
  input [3:0]\digit2_reg[0] ;
  input [3:0]\digit3_reg[0]_0 ;
  input [3:0]\i_/digit3[3]_i_126_0 ;
  input \i_/digit3[2]_i_71_0 ;
  input [3:0]\i_/digit4[2]_i_181_0 ;
  input [3:0]\i_/digit4[2]_i_348_0 ;
  input [3:0]\i_/digit4[2]_i_397_0 ;
  input [1:0]\i_/digit4[2]_i_14_0 ;
  input [3:0]\digit4_reg[1] ;
  input [3:0]O;
  input [3:0]\digit2_reg[0]_0 ;
  input [3:0]\i_/digit3[2]_i_54_0 ;
  input \digit2[3]_i_119_0 ;
  input [3:0]\i_/digit4[2]_i_240_0 ;
  input [1:0]\i_/digit4[2]_i_411_0 ;

  wire [3:0]D;
  wire [3:0]O;
  wire [0:0]\a[0] ;
  wire [31:0]a_IBUF;
  wire [28:0]abs_a;
  wire [25:0]abs_b;
  wire \b[28] ;
  wire [31:0]b_IBUF;
  wire [30:1]c0;
  wire [2:0]\count_reg[16] ;
  wire [3:0]\count_reg[16]_0 ;
  wire [3:0]\count_reg[16]_1 ;
  wire [2:0]\digit1_reg[0] ;
  wire [3:0]\digit1_reg[0]_0 ;
  wire \digit1_reg[3]_i_2_n_0 ;
  wire \digit1_reg[3]_i_2_n_1 ;
  wire \digit1_reg[3]_i_2_n_2 ;
  wire \digit1_reg[3]_i_2_n_3 ;
  wire \digit1_reg[3]_i_3_n_0 ;
  wire \digit1_reg[3]_i_3_n_1 ;
  wire \digit1_reg[3]_i_3_n_2 ;
  wire \digit1_reg[3]_i_3_n_3 ;
  wire \digit2[0]_i_29_n_0 ;
  wire \digit2[0]_i_32_n_0 ;
  wire \digit2[0]_i_37_n_0 ;
  wire \digit2[1]_i_14_n_0 ;
  wire \digit2[1]_i_15_n_0 ;
  wire \digit2[1]_i_34_n_0 ;
  wire \digit2[3]_i_119_0 ;
  wire \digit2[3]_i_119_n_0 ;
  wire \digit2[3]_i_135_n_0 ;
  wire \digit2[3]_i_51_n_0 ;
  wire \digit2[3]_i_64_n_0 ;
  wire \digit2[3]_i_67_n_0 ;
  wire \digit2[3]_i_88_n_0 ;
  wire [3:0]\digit2_reg[0] ;
  wire [3:0]\digit2_reg[0]_0 ;
  wire \digit2_reg[3]_i_2_n_0 ;
  wire \digit2_reg[3]_i_2_n_1 ;
  wire \digit2_reg[3]_i_2_n_2 ;
  wire \digit2_reg[3]_i_2_n_3 ;
  wire \digit2_reg[3]_i_3_n_0 ;
  wire \digit2_reg[3]_i_3_n_1 ;
  wire \digit2_reg[3]_i_3_n_2 ;
  wire \digit2_reg[3]_i_3_n_3 ;
  wire \digit3[0]_i_6_n_0 ;
  wire \digit3[1]_i_115_n_0 ;
  wire \digit3[1]_i_31_n_0 ;
  wire \digit3[1]_i_34_n_0 ;
  wire \digit3[1]_i_35_n_0 ;
  wire \digit3[1]_i_61_n_0 ;
  wire \digit3[2]_i_64_n_0 ;
  wire \digit3[2]_i_68_n_0 ;
  wire \digit3[2]_i_80_n_0 ;
  wire \digit3[2]_i_83_n_0 ;
  wire \digit3[2]_i_92_n_0 ;
  wire \digit3[3]_i_111_n_0 ;
  wire \digit3[3]_i_116_n_0 ;
  wire \digit3[3]_i_124_n_0 ;
  wire \digit3[3]_i_154_n_0 ;
  wire \digit3[3]_i_159_n_0 ;
  wire \digit3[3]_i_29_n_0 ;
  wire \digit3[3]_i_75_n_0 ;
  wire \digit3[3]_i_91_n_0 ;
  wire [3:0]\digit3_reg[0] ;
  wire [3:0]\digit3_reg[0]_0 ;
  wire \digit3_reg[3]_i_2_n_0 ;
  wire \digit3_reg[3]_i_2_n_1 ;
  wire \digit3_reg[3]_i_2_n_2 ;
  wire \digit3_reg[3]_i_2_n_3 ;
  wire \digit3_reg[3]_i_3_n_0 ;
  wire \digit3_reg[3]_i_3_n_1 ;
  wire \digit3_reg[3]_i_3_n_2 ;
  wire \digit3_reg[3]_i_3_n_3 ;
  wire \digit4[0]_i_19_n_0 ;
  wire \digit4[0]_i_51_n_0 ;
  wire \digit4[2]_i_173_n_0 ;
  wire \digit4[2]_i_177_n_0 ;
  wire \digit4[2]_i_184_n_0 ;
  wire \digit4[2]_i_21_n_0 ;
  wire \digit4[2]_i_242_n_0 ;
  wire \digit4[2]_i_307_n_0 ;
  wire \digit4[2]_i_36_n_0 ;
  wire \digit4[2]_i_370_n_0 ;
  wire \digit4[2]_i_383_n_0 ;
  wire [1:0]\digit4[2]_i_6_0 ;
  wire \digit4[2]_i_92_n_0 ;
  wire \digit4[3]_i_25_n_0 ;
  wire [3:0]\digit4_reg[0] ;
  wire [3:0]\digit4_reg[1] ;
  wire \digit4_reg[2]_i_2_n_3 ;
  wire \digit4_reg[3]_i_2_n_0 ;
  wire \digit4_reg[3]_i_2_n_1 ;
  wire \digit4_reg[3]_i_2_n_2 ;
  wire \digit4_reg[3]_i_2_n_3 ;
  wire \i_/digit1[0]_i_3_n_0 ;
  wire \i_/digit1[0]_i_4_n_0 ;
  wire \i_/digit1[0]_i_5_n_0 ;
  wire \i_/digit1[1]_i_12_n_0 ;
  wire \i_/digit1[1]_i_13_n_0 ;
  wire \i_/digit1[1]_i_14_n_0 ;
  wire \i_/digit1[1]_i_15_n_0 ;
  wire \i_/digit1[1]_i_18_n_0 ;
  wire \i_/digit1[1]_i_5_n_0 ;
  wire \i_/digit1[1]_i_6_n_0 ;
  wire \i_/digit1[2]_i_11_n_0 ;
  wire \i_/digit1[2]_i_12_n_0 ;
  wire \i_/digit1[2]_i_13_n_0 ;
  wire \i_/digit1[2]_i_14_n_0 ;
  wire \i_/digit1[2]_i_15_n_0 ;
  wire \i_/digit1[2]_i_16_n_0 ;
  wire \i_/digit1[2]_i_17_n_0 ;
  wire \i_/digit1[2]_i_19_n_0 ;
  wire \i_/digit1[2]_i_20_n_0 ;
  wire \i_/digit1[2]_i_21_n_0 ;
  wire \i_/digit1[2]_i_22_n_0 ;
  wire \i_/digit1[2]_i_23_n_0 ;
  wire \i_/digit1[2]_i_24_n_0 ;
  wire \i_/digit1[2]_i_27_n_0 ;
  wire \i_/digit1[2]_i_8_n_0 ;
  wire \i_/digit1[2]_i_9_n_0 ;
  wire \i_/digit1[3]_i_16_n_0 ;
  wire \i_/digit1[3]_i_17_n_0 ;
  wire \i_/digit1[3]_i_19_n_0 ;
  wire \i_/digit1[3]_i_21_n_0 ;
  wire \i_/digit1[3]_i_28_n_0 ;
  wire \i_/digit1[3]_i_29_n_0 ;
  wire \i_/digit1[3]_i_34_n_0 ;
  wire \i_/digit1[3]_i_35_n_0 ;
  wire \i_/digit1[3]_i_36_n_0 ;
  wire \i_/digit1[3]_i_37_n_0 ;
  wire \i_/digit1[3]_i_38_n_0 ;
  wire \i_/digit1[3]_i_39_n_0 ;
  wire \i_/digit1[3]_i_40_n_0 ;
  wire \i_/digit1[3]_i_41_n_0 ;
  wire \i_/digit1[3]_i_42_n_0 ;
  wire \i_/digit1[3]_i_43_n_0 ;
  wire \i_/digit2[0]_i_10_n_0 ;
  wire \i_/digit2[0]_i_12_n_0 ;
  wire \i_/digit2[0]_i_13_n_0 ;
  wire \i_/digit2[0]_i_14_n_0 ;
  wire \i_/digit2[0]_i_15_n_0 ;
  wire \i_/digit2[0]_i_16_n_0 ;
  wire \i_/digit2[0]_i_19_n_0 ;
  wire \i_/digit2[0]_i_20_n_0 ;
  wire \i_/digit2[0]_i_21_n_0 ;
  wire \i_/digit2[0]_i_22_n_0 ;
  wire \i_/digit2[0]_i_23_n_0 ;
  wire \i_/digit2[0]_i_24_n_0 ;
  wire \i_/digit2[0]_i_25_n_0 ;
  wire \i_/digit2[0]_i_26_n_0 ;
  wire \i_/digit2[0]_i_27_n_0 ;
  wire \i_/digit2[0]_i_28_n_0 ;
  wire \i_/digit2[0]_i_30_n_0 ;
  wire \i_/digit2[0]_i_31_n_0 ;
  wire \i_/digit2[0]_i_33_n_0 ;
  wire \i_/digit2[0]_i_34_n_0 ;
  wire \i_/digit2[0]_i_35_n_0 ;
  wire \i_/digit2[0]_i_36_n_0 ;
  wire \i_/digit2[0]_i_38_n_0 ;
  wire \i_/digit2[0]_i_40_n_0 ;
  wire \i_/digit2[0]_i_41_n_0 ;
  wire \i_/digit2[0]_i_42_n_0 ;
  wire \i_/digit2[0]_i_43_n_0 ;
  wire \i_/digit2[0]_i_4_n_0 ;
  wire \i_/digit2[0]_i_5_n_0 ;
  wire \i_/digit2[0]_i_6_n_0 ;
  wire \i_/digit2[0]_i_7_n_0 ;
  wire \i_/digit2[0]_i_8_n_0 ;
  wire \i_/digit2[0]_i_9_n_0 ;
  wire \i_/digit2[1]_i_10_n_0 ;
  wire \i_/digit2[1]_i_12_n_0 ;
  wire \i_/digit2[1]_i_13_n_0 ;
  wire \i_/digit2[1]_i_16_n_0 ;
  wire \i_/digit2[1]_i_17_n_0 ;
  wire \i_/digit2[1]_i_18_n_0 ;
  wire \i_/digit2[1]_i_19_n_0 ;
  wire \i_/digit2[1]_i_20_n_0 ;
  wire \i_/digit2[1]_i_21_n_0 ;
  wire \i_/digit2[1]_i_22_n_0 ;
  wire \i_/digit2[1]_i_23_n_0 ;
  wire \i_/digit2[1]_i_24_n_0 ;
  wire \i_/digit2[1]_i_25_n_0 ;
  wire \i_/digit2[1]_i_26_n_0 ;
  wire \i_/digit2[1]_i_27_n_0 ;
  wire \i_/digit2[1]_i_28_n_0 ;
  wire \i_/digit2[1]_i_29_n_0 ;
  wire \i_/digit2[1]_i_30_n_0 ;
  wire \i_/digit2[1]_i_31_n_0 ;
  wire \i_/digit2[1]_i_32_n_0 ;
  wire \i_/digit2[1]_i_33_n_0 ;
  wire \i_/digit2[1]_i_35_n_0 ;
  wire \i_/digit2[1]_i_36_n_0 ;
  wire \i_/digit2[1]_i_37_n_0 ;
  wire \i_/digit2[1]_i_38_n_0 ;
  wire \i_/digit2[1]_i_39_n_0 ;
  wire \i_/digit2[1]_i_40_n_0 ;
  wire \i_/digit2[1]_i_41_n_0 ;
  wire \i_/digit2[1]_i_4_n_0 ;
  wire \i_/digit2[1]_i_5_n_0 ;
  wire \i_/digit2[1]_i_6_n_0 ;
  wire \i_/digit2[1]_i_7_n_0 ;
  wire \i_/digit2[1]_i_8_n_0 ;
  wire \i_/digit2[1]_i_9_n_0 ;
  wire \i_/digit2[2]_i_11_n_0 ;
  wire \i_/digit2[2]_i_12_n_0 ;
  wire \i_/digit2[2]_i_13_n_0 ;
  wire \i_/digit2[2]_i_14_n_0 ;
  wire \i_/digit2[2]_i_15_n_0 ;
  wire \i_/digit2[2]_i_16_n_0 ;
  wire \i_/digit2[2]_i_17_n_0 ;
  wire \i_/digit2[2]_i_18_n_0 ;
  wire \i_/digit2[2]_i_19_n_0 ;
  wire \i_/digit2[2]_i_20_n_0 ;
  wire \i_/digit2[2]_i_21_n_0 ;
  wire \i_/digit2[2]_i_22_n_0 ;
  wire \i_/digit2[2]_i_23_n_0 ;
  wire \i_/digit2[2]_i_24_n_0 ;
  wire \i_/digit2[2]_i_25_n_0 ;
  wire \i_/digit2[2]_i_26_n_0 ;
  wire \i_/digit2[2]_i_27_n_0 ;
  wire \i_/digit2[2]_i_28_n_0 ;
  wire \i_/digit2[2]_i_29_n_0 ;
  wire \i_/digit2[2]_i_30_n_0 ;
  wire \i_/digit2[2]_i_31_n_0 ;
  wire \i_/digit2[2]_i_32_n_0 ;
  wire \i_/digit2[2]_i_33_n_0 ;
  wire \i_/digit2[2]_i_34_n_0 ;
  wire \i_/digit2[2]_i_35_n_0 ;
  wire \i_/digit2[2]_i_36_n_0 ;
  wire \i_/digit2[2]_i_37_n_0 ;
  wire \i_/digit2[2]_i_4_n_0 ;
  wire \i_/digit2[2]_i_5_n_0 ;
  wire \i_/digit2[2]_i_6_n_0 ;
  wire \i_/digit2[2]_i_7_n_0 ;
  wire \i_/digit2[2]_i_9_n_0 ;
  wire \i_/digit2[3]_i_100_n_0 ;
  wire \i_/digit2[3]_i_101_n_0 ;
  wire \i_/digit2[3]_i_102_n_0 ;
  wire \i_/digit2[3]_i_103_n_0 ;
  wire \i_/digit2[3]_i_104_n_0 ;
  wire \i_/digit2[3]_i_105_n_0 ;
  wire \i_/digit2[3]_i_106_n_0 ;
  wire \i_/digit2[3]_i_107_n_0 ;
  wire \i_/digit2[3]_i_108_n_0 ;
  wire \i_/digit2[3]_i_109_n_0 ;
  wire \i_/digit2[3]_i_110_n_0 ;
  wire \i_/digit2[3]_i_111_n_0 ;
  wire \i_/digit2[3]_i_112_n_0 ;
  wire \i_/digit2[3]_i_113_n_0 ;
  wire \i_/digit2[3]_i_114_n_0 ;
  wire \i_/digit2[3]_i_115_n_0 ;
  wire \i_/digit2[3]_i_116_n_0 ;
  wire \i_/digit2[3]_i_117_n_0 ;
  wire \i_/digit2[3]_i_118_n_0 ;
  wire \i_/digit2[3]_i_120_n_0 ;
  wire \i_/digit2[3]_i_121_n_0 ;
  wire \i_/digit2[3]_i_122_n_0 ;
  wire \i_/digit2[3]_i_123_n_0 ;
  wire \i_/digit2[3]_i_124_n_0 ;
  wire \i_/digit2[3]_i_125_n_0 ;
  wire \i_/digit2[3]_i_126_n_0 ;
  wire \i_/digit2[3]_i_127_n_0 ;
  wire \i_/digit2[3]_i_128_n_0 ;
  wire \i_/digit2[3]_i_129_n_0 ;
  wire \i_/digit2[3]_i_130_n_0 ;
  wire \i_/digit2[3]_i_131_n_0 ;
  wire \i_/digit2[3]_i_132_n_0 ;
  wire \i_/digit2[3]_i_133_n_0 ;
  wire \i_/digit2[3]_i_134_n_0 ;
  wire \i_/digit2[3]_i_136_n_0 ;
  wire \i_/digit2[3]_i_137_n_0 ;
  wire \i_/digit2[3]_i_138_n_0 ;
  wire \i_/digit2[3]_i_139_n_0 ;
  wire \i_/digit2[3]_i_140_n_0 ;
  wire \i_/digit2[3]_i_141_n_0 ;
  wire \i_/digit2[3]_i_142_n_0 ;
  wire \i_/digit2[3]_i_143_n_0 ;
  wire \i_/digit2[3]_i_145_n_0 ;
  wire \i_/digit2[3]_i_146_n_0 ;
  wire \i_/digit2[3]_i_14_n_0 ;
  wire \i_/digit2[3]_i_15_n_0 ;
  wire \i_/digit2[3]_i_17_n_0 ;
  wire \i_/digit2[3]_i_19_n_0 ;
  wire \i_/digit2[3]_i_20_n_0 ;
  wire \i_/digit2[3]_i_21_n_0 ;
  wire \i_/digit2[3]_i_22_n_0 ;
  wire \i_/digit2[3]_i_23_n_0 ;
  wire \i_/digit2[3]_i_24_n_0 ;
  wire \i_/digit2[3]_i_25_n_0 ;
  wire \i_/digit2[3]_i_30_n_0 ;
  wire \i_/digit2[3]_i_31_n_0 ;
  wire \i_/digit2[3]_i_32_n_0 ;
  wire \i_/digit2[3]_i_33_n_0 ;
  wire \i_/digit2[3]_i_38_n_0 ;
  wire \i_/digit2[3]_i_39_n_0 ;
  wire \i_/digit2[3]_i_40_n_0 ;
  wire \i_/digit2[3]_i_41_n_0 ;
  wire \i_/digit2[3]_i_42_n_0 ;
  wire \i_/digit2[3]_i_43_n_0 ;
  wire \i_/digit2[3]_i_44_n_0 ;
  wire \i_/digit2[3]_i_46_n_0 ;
  wire \i_/digit2[3]_i_47_n_0 ;
  wire \i_/digit2[3]_i_48_n_0 ;
  wire \i_/digit2[3]_i_50_n_0 ;
  wire \i_/digit2[3]_i_52_n_0 ;
  wire \i_/digit2[3]_i_53_n_0 ;
  wire \i_/digit2[3]_i_54_n_0 ;
  wire \i_/digit2[3]_i_55_n_0 ;
  wire \i_/digit2[3]_i_56_n_0 ;
  wire \i_/digit2[3]_i_57_n_0 ;
  wire \i_/digit2[3]_i_58_n_0 ;
  wire \i_/digit2[3]_i_59_n_0 ;
  wire \i_/digit2[3]_i_60_n_0 ;
  wire \i_/digit2[3]_i_61_n_0 ;
  wire \i_/digit2[3]_i_62_n_0 ;
  wire \i_/digit2[3]_i_63_n_0 ;
  wire \i_/digit2[3]_i_65_n_0 ;
  wire \i_/digit2[3]_i_66_n_0 ;
  wire \i_/digit2[3]_i_68_n_0 ;
  wire \i_/digit2[3]_i_69_n_0 ;
  wire \i_/digit2[3]_i_70_n_0 ;
  wire \i_/digit2[3]_i_71_n_0 ;
  wire \i_/digit2[3]_i_72_n_0 ;
  wire \i_/digit2[3]_i_73_n_0 ;
  wire \i_/digit2[3]_i_74_n_0 ;
  wire \i_/digit2[3]_i_75_n_0 ;
  wire \i_/digit2[3]_i_76_n_0 ;
  wire \i_/digit2[3]_i_77_n_0 ;
  wire \i_/digit2[3]_i_78_n_0 ;
  wire \i_/digit2[3]_i_79_n_0 ;
  wire \i_/digit2[3]_i_80_n_0 ;
  wire \i_/digit2[3]_i_81_n_0 ;
  wire \i_/digit2[3]_i_82_n_0 ;
  wire \i_/digit2[3]_i_83_n_0 ;
  wire \i_/digit2[3]_i_84_n_0 ;
  wire \i_/digit2[3]_i_85_n_0 ;
  wire \i_/digit2[3]_i_86_n_0 ;
  wire \i_/digit2[3]_i_87_n_0 ;
  wire \i_/digit2[3]_i_89_n_0 ;
  wire \i_/digit2[3]_i_90_n_0 ;
  wire \i_/digit2[3]_i_91_n_0 ;
  wire \i_/digit2[3]_i_92_n_0 ;
  wire \i_/digit2[3]_i_93_n_0 ;
  wire \i_/digit2[3]_i_94_n_0 ;
  wire \i_/digit2[3]_i_95_n_0 ;
  wire \i_/digit2[3]_i_96_n_0 ;
  wire \i_/digit2[3]_i_97_n_0 ;
  wire \i_/digit2[3]_i_98_n_0 ;
  wire \i_/digit2[3]_i_99_n_0 ;
  wire \i_/digit3[0]_i_4_n_0 ;
  wire \i_/digit3[0]_i_5_n_0 ;
  wire \i_/digit3[0]_i_7_n_0 ;
  wire \i_/digit3[0]_i_8_n_0 ;
  wire \i_/digit3[0]_i_9_n_0 ;
  wire \i_/digit3[1]_i_100_n_0 ;
  wire \i_/digit3[1]_i_101_n_0 ;
  wire \i_/digit3[1]_i_102_n_0 ;
  wire \i_/digit3[1]_i_103_n_0 ;
  wire \i_/digit3[1]_i_104_n_0 ;
  wire \i_/digit3[1]_i_105_n_0 ;
  wire \i_/digit3[1]_i_106_n_0 ;
  wire \i_/digit3[1]_i_107_n_0 ;
  wire \i_/digit3[1]_i_108_n_0 ;
  wire \i_/digit3[1]_i_109_n_0 ;
  wire \i_/digit3[1]_i_10_n_0 ;
  wire \i_/digit3[1]_i_110_n_0 ;
  wire \i_/digit3[1]_i_111_n_0 ;
  wire \i_/digit3[1]_i_112_n_0 ;
  wire \i_/digit3[1]_i_113_n_0 ;
  wire \i_/digit3[1]_i_114_n_0 ;
  wire \i_/digit3[1]_i_116_n_0 ;
  wire \i_/digit3[1]_i_117_n_0 ;
  wire \i_/digit3[1]_i_118_n_0 ;
  wire \i_/digit3[1]_i_119_n_0 ;
  wire \i_/digit3[1]_i_11_n_0 ;
  wire \i_/digit3[1]_i_120_n_0 ;
  wire \i_/digit3[1]_i_121_n_0 ;
  wire \i_/digit3[1]_i_122_n_0 ;
  wire \i_/digit3[1]_i_123_n_0 ;
  wire \i_/digit3[1]_i_124_n_0 ;
  wire \i_/digit3[1]_i_125_n_0 ;
  wire \i_/digit3[1]_i_126_n_0 ;
  wire \i_/digit3[1]_i_127_n_0 ;
  wire \i_/digit3[1]_i_128_n_0 ;
  wire \i_/digit3[1]_i_129_n_0 ;
  wire \i_/digit3[1]_i_12_n_0 ;
  wire \i_/digit3[1]_i_130_n_0 ;
  wire \i_/digit3[1]_i_13_n_0 ;
  wire \i_/digit3[1]_i_15_n_0 ;
  wire \i_/digit3[1]_i_16_n_0 ;
  wire \i_/digit3[1]_i_17_n_0 ;
  wire \i_/digit3[1]_i_18_n_0 ;
  wire \i_/digit3[1]_i_19_n_0 ;
  wire \i_/digit3[1]_i_20_n_0 ;
  wire \i_/digit3[1]_i_22_n_0 ;
  wire \i_/digit3[1]_i_23_n_0 ;
  wire \i_/digit3[1]_i_24_n_0 ;
  wire \i_/digit3[1]_i_25_n_0 ;
  wire \i_/digit3[1]_i_26_n_0 ;
  wire \i_/digit3[1]_i_27_n_0 ;
  wire \i_/digit3[1]_i_28_n_0 ;
  wire \i_/digit3[1]_i_29_n_0 ;
  wire \i_/digit3[1]_i_30_n_0 ;
  wire \i_/digit3[1]_i_32_n_0 ;
  wire \i_/digit3[1]_i_33_n_0 ;
  wire \i_/digit3[1]_i_36_n_0 ;
  wire \i_/digit3[1]_i_37_n_0 ;
  wire \i_/digit3[1]_i_38_n_0 ;
  wire \i_/digit3[1]_i_39_n_0 ;
  wire \i_/digit3[1]_i_40_n_0 ;
  wire \i_/digit3[1]_i_41_n_0 ;
  wire \i_/digit3[1]_i_42_n_0 ;
  wire \i_/digit3[1]_i_43_n_0 ;
  wire \i_/digit3[1]_i_44_n_0 ;
  wire \i_/digit3[1]_i_45_n_0 ;
  wire \i_/digit3[1]_i_46_n_0 ;
  wire \i_/digit3[1]_i_47_n_0 ;
  wire \i_/digit3[1]_i_48_n_0 ;
  wire \i_/digit3[1]_i_49_n_0 ;
  wire \i_/digit3[1]_i_4_n_0 ;
  wire \i_/digit3[1]_i_50_n_0 ;
  wire \i_/digit3[1]_i_51_n_0 ;
  wire \i_/digit3[1]_i_52_n_0 ;
  wire \i_/digit3[1]_i_53_n_0 ;
  wire \i_/digit3[1]_i_54_n_0 ;
  wire \i_/digit3[1]_i_55_n_0 ;
  wire \i_/digit3[1]_i_56_n_0 ;
  wire \i_/digit3[1]_i_57_n_0 ;
  wire \i_/digit3[1]_i_58_n_0 ;
  wire \i_/digit3[1]_i_59_n_0 ;
  wire \i_/digit3[1]_i_5_n_0 ;
  wire \i_/digit3[1]_i_60_n_0 ;
  wire \i_/digit3[1]_i_62_n_0 ;
  wire \i_/digit3[1]_i_63_n_0 ;
  wire \i_/digit3[1]_i_64_n_0 ;
  wire \i_/digit3[1]_i_65_n_0 ;
  wire \i_/digit3[1]_i_66_n_0 ;
  wire \i_/digit3[1]_i_67_n_0 ;
  wire \i_/digit3[1]_i_68_n_0 ;
  wire \i_/digit3[1]_i_69_n_0 ;
  wire \i_/digit3[1]_i_70_n_0 ;
  wire \i_/digit3[1]_i_71_n_0 ;
  wire \i_/digit3[1]_i_72_n_0 ;
  wire \i_/digit3[1]_i_73_n_0 ;
  wire \i_/digit3[1]_i_74_n_0 ;
  wire \i_/digit3[1]_i_75_n_0 ;
  wire \i_/digit3[1]_i_76_n_0 ;
  wire \i_/digit3[1]_i_77_n_0 ;
  wire \i_/digit3[1]_i_78_n_0 ;
  wire \i_/digit3[1]_i_79_n_0 ;
  wire \i_/digit3[1]_i_7_n_0 ;
  wire \i_/digit3[1]_i_80_n_0 ;
  wire \i_/digit3[1]_i_81_n_0 ;
  wire \i_/digit3[1]_i_82_n_0 ;
  wire \i_/digit3[1]_i_83_n_0 ;
  wire \i_/digit3[1]_i_84_n_0 ;
  wire \i_/digit3[1]_i_85_n_0 ;
  wire \i_/digit3[1]_i_86_n_0 ;
  wire \i_/digit3[1]_i_87_n_0 ;
  wire \i_/digit3[1]_i_88_n_0 ;
  wire \i_/digit3[1]_i_89_n_0 ;
  wire \i_/digit3[1]_i_90_n_0 ;
  wire \i_/digit3[1]_i_91_n_0 ;
  wire \i_/digit3[1]_i_92_n_0 ;
  wire \i_/digit3[1]_i_93_n_0 ;
  wire \i_/digit3[1]_i_94_n_0 ;
  wire \i_/digit3[1]_i_95_n_0 ;
  wire \i_/digit3[1]_i_96_n_0 ;
  wire \i_/digit3[1]_i_97_n_0 ;
  wire \i_/digit3[1]_i_98_n_0 ;
  wire \i_/digit3[1]_i_99_n_0 ;
  wire \i_/digit3[1]_i_9_n_0 ;
  wire \i_/digit3[2]_i_10_n_0 ;
  wire \i_/digit3[2]_i_11_n_0 ;
  wire \i_/digit3[2]_i_12_n_0 ;
  wire \i_/digit3[2]_i_13_n_0 ;
  wire \i_/digit3[2]_i_14_n_0 ;
  wire \i_/digit3[2]_i_15_n_0 ;
  wire \i_/digit3[2]_i_16_n_0 ;
  wire \i_/digit3[2]_i_17_n_0 ;
  wire \i_/digit3[2]_i_18_n_0 ;
  wire \i_/digit3[2]_i_19_n_0 ;
  wire \i_/digit3[2]_i_20_n_0 ;
  wire \i_/digit3[2]_i_21_n_0 ;
  wire \i_/digit3[2]_i_22_n_0 ;
  wire \i_/digit3[2]_i_23_n_0 ;
  wire \i_/digit3[2]_i_24_n_0 ;
  wire \i_/digit3[2]_i_25_n_0 ;
  wire \i_/digit3[2]_i_26_n_0 ;
  wire \i_/digit3[2]_i_27_n_0 ;
  wire \i_/digit3[2]_i_28_n_0 ;
  wire \i_/digit3[2]_i_29_n_0 ;
  wire \i_/digit3[2]_i_30_n_0 ;
  wire \i_/digit3[2]_i_31_n_0 ;
  wire \i_/digit3[2]_i_32_n_0 ;
  wire \i_/digit3[2]_i_33_n_0 ;
  wire \i_/digit3[2]_i_34_n_0 ;
  wire \i_/digit3[2]_i_35_n_0 ;
  wire \i_/digit3[2]_i_36_n_0 ;
  wire \i_/digit3[2]_i_37_n_0 ;
  wire \i_/digit3[2]_i_38_n_0 ;
  wire \i_/digit3[2]_i_39_n_0 ;
  wire \i_/digit3[2]_i_40_n_0 ;
  wire \i_/digit3[2]_i_41_n_0 ;
  wire \i_/digit3[2]_i_42_n_0 ;
  wire \i_/digit3[2]_i_43_n_0 ;
  wire \i_/digit3[2]_i_44_n_0 ;
  wire \i_/digit3[2]_i_45_n_0 ;
  wire \i_/digit3[2]_i_46_n_0 ;
  wire \i_/digit3[2]_i_47_n_0 ;
  wire \i_/digit3[2]_i_48_n_0 ;
  wire \i_/digit3[2]_i_49_n_0 ;
  wire \i_/digit3[2]_i_4_n_0 ;
  wire \i_/digit3[2]_i_50_n_0 ;
  wire \i_/digit3[2]_i_51_n_0 ;
  wire \i_/digit3[2]_i_52_n_0 ;
  wire \i_/digit3[2]_i_53_n_0 ;
  wire [3:0]\i_/digit3[2]_i_54_0 ;
  wire \i_/digit3[2]_i_54_n_0 ;
  wire \i_/digit3[2]_i_55_n_0 ;
  wire \i_/digit3[2]_i_56_n_0 ;
  wire \i_/digit3[2]_i_57_n_0 ;
  wire \i_/digit3[2]_i_58_n_0 ;
  wire \i_/digit3[2]_i_59_n_0 ;
  wire \i_/digit3[2]_i_5_n_0 ;
  wire \i_/digit3[2]_i_60_n_0 ;
  wire \i_/digit3[2]_i_61_n_0 ;
  wire \i_/digit3[2]_i_62_n_0 ;
  wire \i_/digit3[2]_i_63_n_0 ;
  wire \i_/digit3[2]_i_65_n_0 ;
  wire \i_/digit3[2]_i_66_n_0 ;
  wire \i_/digit3[2]_i_67_n_0 ;
  wire \i_/digit3[2]_i_69_n_0 ;
  wire \i_/digit3[2]_i_6_n_0 ;
  wire \i_/digit3[2]_i_70_n_0 ;
  wire \i_/digit3[2]_i_71_0 ;
  wire \i_/digit3[2]_i_71_n_0 ;
  wire \i_/digit3[2]_i_72_n_0 ;
  wire \i_/digit3[2]_i_73_n_0 ;
  wire \i_/digit3[2]_i_74_n_0 ;
  wire \i_/digit3[2]_i_75_n_0 ;
  wire \i_/digit3[2]_i_76_n_0 ;
  wire \i_/digit3[2]_i_77_n_0 ;
  wire \i_/digit3[2]_i_78_n_0 ;
  wire \i_/digit3[2]_i_79_n_0 ;
  wire \i_/digit3[2]_i_7_n_0 ;
  wire \i_/digit3[2]_i_81_n_0 ;
  wire \i_/digit3[2]_i_82_n_0 ;
  wire \i_/digit3[2]_i_84_n_0 ;
  wire \i_/digit3[2]_i_85_n_0 ;
  wire \i_/digit3[2]_i_86_n_0 ;
  wire \i_/digit3[2]_i_87_n_0 ;
  wire \i_/digit3[2]_i_88_n_0 ;
  wire \i_/digit3[2]_i_89_n_0 ;
  wire \i_/digit3[2]_i_8_n_0 ;
  wire \i_/digit3[2]_i_90_n_0 ;
  wire \i_/digit3[2]_i_91_n_0 ;
  wire \i_/digit3[2]_i_93_n_0 ;
  wire \i_/digit3[2]_i_94_n_0 ;
  wire \i_/digit3[2]_i_95_n_0 ;
  wire \i_/digit3[2]_i_96_n_0 ;
  wire \i_/digit3[2]_i_9_n_0 ;
  wire \i_/digit3[3]_i_100_n_0 ;
  wire \i_/digit3[3]_i_101_n_0 ;
  wire \i_/digit3[3]_i_102_n_0 ;
  wire \i_/digit3[3]_i_103_n_0 ;
  wire \i_/digit3[3]_i_104_n_0 ;
  wire \i_/digit3[3]_i_105_n_0 ;
  wire \i_/digit3[3]_i_106_n_0 ;
  wire \i_/digit3[3]_i_107_n_0 ;
  wire \i_/digit3[3]_i_108_n_0 ;
  wire \i_/digit3[3]_i_109_n_0 ;
  wire \i_/digit3[3]_i_110_n_0 ;
  wire \i_/digit3[3]_i_112_n_0 ;
  wire \i_/digit3[3]_i_113_n_0 ;
  wire \i_/digit3[3]_i_114_n_0 ;
  wire \i_/digit3[3]_i_115_n_0 ;
  wire \i_/digit3[3]_i_117_n_0 ;
  wire \i_/digit3[3]_i_118_n_0 ;
  wire \i_/digit3[3]_i_119_n_0 ;
  wire \i_/digit3[3]_i_120_n_0 ;
  wire \i_/digit3[3]_i_121_n_0 ;
  wire \i_/digit3[3]_i_122_n_0 ;
  wire \i_/digit3[3]_i_123_n_0 ;
  wire \i_/digit3[3]_i_125_n_0 ;
  wire [3:0]\i_/digit3[3]_i_126_0 ;
  wire \i_/digit3[3]_i_126_n_0 ;
  wire \i_/digit3[3]_i_127_n_0 ;
  wire \i_/digit3[3]_i_128_n_0 ;
  wire \i_/digit3[3]_i_129_n_0 ;
  wire \i_/digit3[3]_i_130_n_0 ;
  wire \i_/digit3[3]_i_131_n_0 ;
  wire \i_/digit3[3]_i_132_n_0 ;
  wire \i_/digit3[3]_i_133_n_0 ;
  wire \i_/digit3[3]_i_134_n_0 ;
  wire \i_/digit3[3]_i_135_n_0 ;
  wire \i_/digit3[3]_i_136_n_0 ;
  wire \i_/digit3[3]_i_137_n_0 ;
  wire \i_/digit3[3]_i_138_n_0 ;
  wire \i_/digit3[3]_i_139_n_0 ;
  wire \i_/digit3[3]_i_140_n_0 ;
  wire \i_/digit3[3]_i_141_n_0 ;
  wire \i_/digit3[3]_i_142_n_0 ;
  wire \i_/digit3[3]_i_143_n_0 ;
  wire \i_/digit3[3]_i_144_n_0 ;
  wire \i_/digit3[3]_i_145_n_0 ;
  wire \i_/digit3[3]_i_146_n_0 ;
  wire \i_/digit3[3]_i_147_n_0 ;
  wire \i_/digit3[3]_i_148_n_0 ;
  wire \i_/digit3[3]_i_149_n_0 ;
  wire \i_/digit3[3]_i_14_n_0 ;
  wire \i_/digit3[3]_i_150_n_0 ;
  wire \i_/digit3[3]_i_151_n_0 ;
  wire \i_/digit3[3]_i_152_n_0 ;
  wire \i_/digit3[3]_i_153_n_0 ;
  wire \i_/digit3[3]_i_155_n_0 ;
  wire \i_/digit3[3]_i_156_n_0 ;
  wire \i_/digit3[3]_i_157_n_0 ;
  wire \i_/digit3[3]_i_158_n_0 ;
  wire \i_/digit3[3]_i_15_n_0 ;
  wire \i_/digit3[3]_i_160_n_0 ;
  wire \i_/digit3[3]_i_161_n_0 ;
  wire \i_/digit3[3]_i_162_n_0 ;
  wire \i_/digit3[3]_i_163_n_0 ;
  wire \i_/digit3[3]_i_164_n_0 ;
  wire \i_/digit3[3]_i_165_n_0 ;
  wire \i_/digit3[3]_i_166_n_0 ;
  wire \i_/digit3[3]_i_167_n_0 ;
  wire \i_/digit3[3]_i_168_n_0 ;
  wire \i_/digit3[3]_i_169_n_0 ;
  wire \i_/digit3[3]_i_170_n_0 ;
  wire \i_/digit3[3]_i_171_n_0 ;
  wire \i_/digit3[3]_i_172_n_0 ;
  wire \i_/digit3[3]_i_173_n_0 ;
  wire \i_/digit3[3]_i_174_n_0 ;
  wire \i_/digit3[3]_i_175_n_0 ;
  wire \i_/digit3[3]_i_176_n_0 ;
  wire \i_/digit3[3]_i_177_n_0 ;
  wire \i_/digit3[3]_i_179_n_0 ;
  wire \i_/digit3[3]_i_17_n_0 ;
  wire \i_/digit3[3]_i_180_n_0 ;
  wire \i_/digit3[3]_i_181_n_0 ;
  wire \i_/digit3[3]_i_182_n_0 ;
  wire \i_/digit3[3]_i_183_n_0 ;
  wire \i_/digit3[3]_i_184_n_0 ;
  wire \i_/digit3[3]_i_185_n_0 ;
  wire \i_/digit3[3]_i_186_n_0 ;
  wire \i_/digit3[3]_i_187_n_0 ;
  wire \i_/digit3[3]_i_188_n_0 ;
  wire \i_/digit3[3]_i_189_n_0 ;
  wire \i_/digit3[3]_i_18_n_0 ;
  wire \i_/digit3[3]_i_190_n_0 ;
  wire \i_/digit3[3]_i_191_n_0 ;
  wire \i_/digit3[3]_i_192_n_0 ;
  wire \i_/digit3[3]_i_193_n_0 ;
  wire \i_/digit3[3]_i_194_n_0 ;
  wire \i_/digit3[3]_i_195_n_0 ;
  wire \i_/digit3[3]_i_196_n_0 ;
  wire \i_/digit3[3]_i_197_n_0 ;
  wire \i_/digit3[3]_i_198_n_0 ;
  wire \i_/digit3[3]_i_199_n_0 ;
  wire \i_/digit3[3]_i_200_n_0 ;
  wire \i_/digit3[3]_i_201_n_0 ;
  wire \i_/digit3[3]_i_203_n_0 ;
  wire \i_/digit3[3]_i_20_n_0 ;
  wire \i_/digit3[3]_i_21_n_0 ;
  wire \i_/digit3[3]_i_26_n_0 ;
  wire \i_/digit3[3]_i_27_n_0 ;
  wire \i_/digit3[3]_i_28_n_0 ;
  wire \i_/digit3[3]_i_30_n_0 ;
  wire \i_/digit3[3]_i_31_n_0 ;
  wire \i_/digit3[3]_i_36_n_0 ;
  wire \i_/digit3[3]_i_37_n_0 ;
  wire \i_/digit3[3]_i_38_n_0 ;
  wire \i_/digit3[3]_i_39_n_0 ;
  wire \i_/digit3[3]_i_40_n_0 ;
  wire \i_/digit3[3]_i_41_n_0 ;
  wire \i_/digit3[3]_i_42_n_0 ;
  wire \i_/digit3[3]_i_43_n_0 ;
  wire \i_/digit3[3]_i_44_n_0 ;
  wire \i_/digit3[3]_i_45_n_0 ;
  wire \i_/digit3[3]_i_46_n_0 ;
  wire \i_/digit3[3]_i_47_n_0 ;
  wire \i_/digit3[3]_i_48_n_0 ;
  wire \i_/digit3[3]_i_49_n_0 ;
  wire \i_/digit3[3]_i_50_n_0 ;
  wire \i_/digit3[3]_i_51_n_0 ;
  wire \i_/digit3[3]_i_52_n_0 ;
  wire \i_/digit3[3]_i_53_n_0 ;
  wire \i_/digit3[3]_i_54_n_0 ;
  wire \i_/digit3[3]_i_55_n_0 ;
  wire \i_/digit3[3]_i_56_n_0 ;
  wire \i_/digit3[3]_i_57_n_0 ;
  wire \i_/digit3[3]_i_58_n_0 ;
  wire \i_/digit3[3]_i_59_n_0 ;
  wire \i_/digit3[3]_i_60_n_0 ;
  wire \i_/digit3[3]_i_61_n_0 ;
  wire \i_/digit3[3]_i_62_n_0 ;
  wire \i_/digit3[3]_i_63_n_0 ;
  wire \i_/digit3[3]_i_64_n_0 ;
  wire \i_/digit3[3]_i_65_n_0 ;
  wire \i_/digit3[3]_i_66_n_0 ;
  wire \i_/digit3[3]_i_67_n_0 ;
  wire \i_/digit3[3]_i_68_n_0 ;
  wire \i_/digit3[3]_i_69_n_0 ;
  wire \i_/digit3[3]_i_70_n_0 ;
  wire \i_/digit3[3]_i_71_n_0 ;
  wire \i_/digit3[3]_i_72_n_0 ;
  wire \i_/digit3[3]_i_73_n_0 ;
  wire \i_/digit3[3]_i_74_n_0 ;
  wire \i_/digit3[3]_i_76_n_0 ;
  wire \i_/digit3[3]_i_77_n_0 ;
  wire \i_/digit3[3]_i_78_n_0 ;
  wire \i_/digit3[3]_i_79_n_0 ;
  wire \i_/digit3[3]_i_80_n_0 ;
  wire \i_/digit3[3]_i_81_n_0 ;
  wire \i_/digit3[3]_i_82_n_0 ;
  wire \i_/digit3[3]_i_83_n_0 ;
  wire \i_/digit3[3]_i_84_n_0 ;
  wire \i_/digit3[3]_i_85_n_0 ;
  wire \i_/digit3[3]_i_86_n_0 ;
  wire \i_/digit3[3]_i_87_n_0 ;
  wire \i_/digit3[3]_i_88_n_0 ;
  wire \i_/digit3[3]_i_89_n_0 ;
  wire \i_/digit3[3]_i_90_n_0 ;
  wire \i_/digit3[3]_i_92_n_0 ;
  wire \i_/digit3[3]_i_93_n_0 ;
  wire \i_/digit3[3]_i_94_n_0 ;
  wire \i_/digit3[3]_i_95_n_0 ;
  wire \i_/digit3[3]_i_96_n_0 ;
  wire \i_/digit3[3]_i_97_n_0 ;
  wire \i_/digit3[3]_i_98_n_0 ;
  wire \i_/digit3[3]_i_99_n_0 ;
  wire \i_/digit4[0]_i_10_n_0 ;
  wire \i_/digit4[0]_i_11_n_0 ;
  wire \i_/digit4[0]_i_13_n_0 ;
  wire \i_/digit4[0]_i_14_n_0 ;
  wire \i_/digit4[0]_i_15_n_0 ;
  wire \i_/digit4[0]_i_16_n_0 ;
  wire \i_/digit4[0]_i_17_n_0 ;
  wire \i_/digit4[0]_i_18_n_0 ;
  wire \i_/digit4[0]_i_20_n_0 ;
  wire \i_/digit4[0]_i_21_n_0 ;
  wire \i_/digit4[0]_i_22_n_0 ;
  wire \i_/digit4[0]_i_23_n_0 ;
  wire \i_/digit4[0]_i_24_n_0 ;
  wire \i_/digit4[0]_i_25_n_0 ;
  wire \i_/digit4[0]_i_26_n_0 ;
  wire \i_/digit4[0]_i_27_n_0 ;
  wire \i_/digit4[0]_i_28_n_0 ;
  wire \i_/digit4[0]_i_29_n_0 ;
  wire \i_/digit4[0]_i_30_n_0 ;
  wire \i_/digit4[0]_i_31_n_0 ;
  wire \i_/digit4[0]_i_32_n_0 ;
  wire \i_/digit4[0]_i_33_n_0 ;
  wire \i_/digit4[0]_i_34_n_0 ;
  wire \i_/digit4[0]_i_35_n_0 ;
  wire \i_/digit4[0]_i_36_n_0 ;
  wire \i_/digit4[0]_i_37_n_0 ;
  wire \i_/digit4[0]_i_38_n_0 ;
  wire \i_/digit4[0]_i_39_n_0 ;
  wire \i_/digit4[0]_i_40_n_0 ;
  wire \i_/digit4[0]_i_41_n_0 ;
  wire \i_/digit4[0]_i_42_n_0 ;
  wire \i_/digit4[0]_i_43_n_0 ;
  wire \i_/digit4[0]_i_44_n_0 ;
  wire \i_/digit4[0]_i_45_n_0 ;
  wire \i_/digit4[0]_i_46_n_0 ;
  wire \i_/digit4[0]_i_47_n_0 ;
  wire \i_/digit4[0]_i_48_n_0 ;
  wire \i_/digit4[0]_i_49_n_0 ;
  wire \i_/digit4[0]_i_4_n_0 ;
  wire \i_/digit4[0]_i_50_n_0 ;
  wire \i_/digit4[0]_i_52_n_0 ;
  wire \i_/digit4[0]_i_53_n_0 ;
  wire \i_/digit4[0]_i_54_n_0 ;
  wire \i_/digit4[0]_i_55_n_0 ;
  wire \i_/digit4[0]_i_56_n_0 ;
  wire \i_/digit4[0]_i_5_n_0 ;
  wire \i_/digit4[0]_i_7_n_0 ;
  wire \i_/digit4[0]_i_8_n_0 ;
  wire \i_/digit4[0]_i_9_n_0 ;
  wire \i_/digit4[1]_i_10_0 ;
  wire \i_/digit4[1]_i_10_n_0 ;
  wire \i_/digit4[1]_i_8_n_0 ;
  wire \i_/digit4[1]_i_9_n_0 ;
  wire \i_/digit4[2]_i_100_n_0 ;
  wire \i_/digit4[2]_i_101_n_0 ;
  wire \i_/digit4[2]_i_102_n_0 ;
  wire \i_/digit4[2]_i_103_n_0 ;
  wire \i_/digit4[2]_i_104_n_0 ;
  wire \i_/digit4[2]_i_105_n_0 ;
  wire \i_/digit4[2]_i_106_n_0 ;
  wire \i_/digit4[2]_i_108_n_0 ;
  wire \i_/digit4[2]_i_10_n_0 ;
  wire \i_/digit4[2]_i_110_n_0 ;
  wire \i_/digit4[2]_i_111_n_0 ;
  wire \i_/digit4[2]_i_112_n_0 ;
  wire \i_/digit4[2]_i_113_n_0 ;
  wire \i_/digit4[2]_i_114_n_0 ;
  wire \i_/digit4[2]_i_115_n_0 ;
  wire \i_/digit4[2]_i_116_n_0 ;
  wire \i_/digit4[2]_i_117_n_0 ;
  wire \i_/digit4[2]_i_118_n_0 ;
  wire \i_/digit4[2]_i_119_n_0 ;
  wire \i_/digit4[2]_i_120_n_0 ;
  wire \i_/digit4[2]_i_121_n_0 ;
  wire \i_/digit4[2]_i_122_n_0 ;
  wire \i_/digit4[2]_i_123_n_0 ;
  wire \i_/digit4[2]_i_124_n_0 ;
  wire \i_/digit4[2]_i_125_n_0 ;
  wire \i_/digit4[2]_i_126_n_0 ;
  wire \i_/digit4[2]_i_127_n_0 ;
  wire \i_/digit4[2]_i_128_n_0 ;
  wire \i_/digit4[2]_i_12_n_0 ;
  wire \i_/digit4[2]_i_130_n_0 ;
  wire \i_/digit4[2]_i_135_n_0 ;
  wire \i_/digit4[2]_i_136_n_0 ;
  wire \i_/digit4[2]_i_137_n_0 ;
  wire \i_/digit4[2]_i_139_n_0 ;
  wire \i_/digit4[2]_i_13_n_0 ;
  wire \i_/digit4[2]_i_140_n_0 ;
  wire \i_/digit4[2]_i_141_n_0 ;
  wire \i_/digit4[2]_i_142_n_0 ;
  wire \i_/digit4[2]_i_143_n_0 ;
  wire \i_/digit4[2]_i_144_n_0 ;
  wire \i_/digit4[2]_i_145_n_0 ;
  wire \i_/digit4[2]_i_146_n_0 ;
  wire \i_/digit4[2]_i_147_n_0 ;
  wire \i_/digit4[2]_i_148_n_0 ;
  wire \i_/digit4[2]_i_149_n_0 ;
  wire [1:0]\i_/digit4[2]_i_14_0 ;
  wire \i_/digit4[2]_i_14_n_0 ;
  wire \i_/digit4[2]_i_150_n_0 ;
  wire \i_/digit4[2]_i_152_n_0 ;
  wire \i_/digit4[2]_i_153_n_0 ;
  wire \i_/digit4[2]_i_154_n_0 ;
  wire \i_/digit4[2]_i_155_n_0 ;
  wire \i_/digit4[2]_i_156_n_0 ;
  wire \i_/digit4[2]_i_157_n_0 ;
  wire \i_/digit4[2]_i_159_n_0 ;
  wire \i_/digit4[2]_i_15_n_0 ;
  wire \i_/digit4[2]_i_160_n_0 ;
  wire \i_/digit4[2]_i_161_n_0 ;
  wire \i_/digit4[2]_i_162_n_0 ;
  wire \i_/digit4[2]_i_163_n_0 ;
  wire \i_/digit4[2]_i_164_n_0 ;
  wire \i_/digit4[2]_i_165_n_0 ;
  wire \i_/digit4[2]_i_166_n_0 ;
  wire \i_/digit4[2]_i_167_n_0 ;
  wire \i_/digit4[2]_i_168_n_0 ;
  wire \i_/digit4[2]_i_169_n_0 ;
  wire \i_/digit4[2]_i_16_n_0 ;
  wire \i_/digit4[2]_i_170_n_0 ;
  wire \i_/digit4[2]_i_171_n_0 ;
  wire \i_/digit4[2]_i_172_n_0 ;
  wire \i_/digit4[2]_i_174_n_0 ;
  wire \i_/digit4[2]_i_175_n_0 ;
  wire \i_/digit4[2]_i_176_n_0 ;
  wire \i_/digit4[2]_i_178_n_0 ;
  wire \i_/digit4[2]_i_179_n_0 ;
  wire \i_/digit4[2]_i_17_n_0 ;
  wire \i_/digit4[2]_i_180_n_0 ;
  wire [3:0]\i_/digit4[2]_i_181_0 ;
  wire \i_/digit4[2]_i_181_n_0 ;
  wire \i_/digit4[2]_i_185_n_0 ;
  wire \i_/digit4[2]_i_186_n_0 ;
  wire \i_/digit4[2]_i_187_n_0 ;
  wire \i_/digit4[2]_i_188_n_0 ;
  wire \i_/digit4[2]_i_189_n_0 ;
  wire \i_/digit4[2]_i_18_n_0 ;
  wire \i_/digit4[2]_i_190_n_0 ;
  wire \i_/digit4[2]_i_191_n_0 ;
  wire \i_/digit4[2]_i_192_n_0 ;
  wire \i_/digit4[2]_i_193_n_0 ;
  wire \i_/digit4[2]_i_194_n_0 ;
  wire \i_/digit4[2]_i_195_n_0 ;
  wire \i_/digit4[2]_i_196_n_0 ;
  wire \i_/digit4[2]_i_197_n_0 ;
  wire \i_/digit4[2]_i_198_n_0 ;
  wire \i_/digit4[2]_i_199_n_0 ;
  wire \i_/digit4[2]_i_19_n_0 ;
  wire \i_/digit4[2]_i_200_n_0 ;
  wire \i_/digit4[2]_i_201_n_0 ;
  wire \i_/digit4[2]_i_202_n_0 ;
  wire \i_/digit4[2]_i_203_n_0 ;
  wire \i_/digit4[2]_i_204_n_0 ;
  wire \i_/digit4[2]_i_205_n_0 ;
  wire \i_/digit4[2]_i_207_n_0 ;
  wire \i_/digit4[2]_i_209_n_0 ;
  wire \i_/digit4[2]_i_20_n_0 ;
  wire \i_/digit4[2]_i_210_n_0 ;
  wire \i_/digit4[2]_i_211_n_0 ;
  wire \i_/digit4[2]_i_212_n_0 ;
  wire \i_/digit4[2]_i_217_n_0 ;
  wire \i_/digit4[2]_i_218_n_0 ;
  wire \i_/digit4[2]_i_219_n_0 ;
  wire \i_/digit4[2]_i_220_n_0 ;
  wire \i_/digit4[2]_i_221_n_0 ;
  wire \i_/digit4[2]_i_222_n_0 ;
  wire \i_/digit4[2]_i_223_n_0 ;
  wire \i_/digit4[2]_i_224_n_0 ;
  wire \i_/digit4[2]_i_225_n_0 ;
  wire \i_/digit4[2]_i_226_n_0 ;
  wire \i_/digit4[2]_i_227_n_0 ;
  wire \i_/digit4[2]_i_228_n_0 ;
  wire \i_/digit4[2]_i_229_n_0 ;
  wire \i_/digit4[2]_i_22_n_0 ;
  wire \i_/digit4[2]_i_230_n_0 ;
  wire \i_/digit4[2]_i_231_n_0 ;
  wire \i_/digit4[2]_i_232_n_0 ;
  wire \i_/digit4[2]_i_233_n_0 ;
  wire \i_/digit4[2]_i_234_n_0 ;
  wire \i_/digit4[2]_i_235_n_0 ;
  wire \i_/digit4[2]_i_236_n_0 ;
  wire \i_/digit4[2]_i_237_n_0 ;
  wire \i_/digit4[2]_i_238_n_0 ;
  wire [3:0]\i_/digit4[2]_i_240_0 ;
  wire \i_/digit4[2]_i_240_n_0 ;
  wire \i_/digit4[2]_i_241_n_0 ;
  wire \i_/digit4[2]_i_243_n_0 ;
  wire \i_/digit4[2]_i_244_n_0 ;
  wire \i_/digit4[2]_i_245_n_0 ;
  wire \i_/digit4[2]_i_246_n_0 ;
  wire \i_/digit4[2]_i_247_n_0 ;
  wire \i_/digit4[2]_i_248_n_0 ;
  wire \i_/digit4[2]_i_249_n_0 ;
  wire \i_/digit4[2]_i_24_n_0 ;
  wire \i_/digit4[2]_i_250_n_0 ;
  wire \i_/digit4[2]_i_251_n_0 ;
  wire \i_/digit4[2]_i_253_n_0 ;
  wire \i_/digit4[2]_i_254_n_0 ;
  wire \i_/digit4[2]_i_255_n_0 ;
  wire \i_/digit4[2]_i_256_n_0 ;
  wire \i_/digit4[2]_i_257_n_0 ;
  wire \i_/digit4[2]_i_258_n_0 ;
  wire \i_/digit4[2]_i_259_n_0 ;
  wire \i_/digit4[2]_i_25_n_0 ;
  wire \i_/digit4[2]_i_260_n_0 ;
  wire \i_/digit4[2]_i_261_n_0 ;
  wire \i_/digit4[2]_i_262_n_0 ;
  wire \i_/digit4[2]_i_267_n_0 ;
  wire \i_/digit4[2]_i_268_n_0 ;
  wire \i_/digit4[2]_i_269_n_0 ;
  wire \i_/digit4[2]_i_26_n_0 ;
  wire \i_/digit4[2]_i_270_n_0 ;
  wire \i_/digit4[2]_i_271_n_0 ;
  wire \i_/digit4[2]_i_272_n_0 ;
  wire \i_/digit4[2]_i_273_n_0 ;
  wire \i_/digit4[2]_i_274_n_0 ;
  wire \i_/digit4[2]_i_275_n_0 ;
  wire \i_/digit4[2]_i_276_n_0 ;
  wire \i_/digit4[2]_i_277_n_0 ;
  wire \i_/digit4[2]_i_278_n_0 ;
  wire \i_/digit4[2]_i_279_n_0 ;
  wire \i_/digit4[2]_i_27_n_0 ;
  wire \i_/digit4[2]_i_280_n_0 ;
  wire \i_/digit4[2]_i_281_n_0 ;
  wire \i_/digit4[2]_i_282_n_0 ;
  wire \i_/digit4[2]_i_283_n_0 ;
  wire \i_/digit4[2]_i_284_n_0 ;
  wire \i_/digit4[2]_i_285_n_0 ;
  wire \i_/digit4[2]_i_286_n_0 ;
  wire \i_/digit4[2]_i_287_n_0 ;
  wire \i_/digit4[2]_i_288_n_0 ;
  wire \i_/digit4[2]_i_289_n_0 ;
  wire \i_/digit4[2]_i_28_n_0 ;
  wire \i_/digit4[2]_i_290_n_0 ;
  wire \i_/digit4[2]_i_291_n_0 ;
  wire \i_/digit4[2]_i_292_n_0 ;
  wire \i_/digit4[2]_i_293_n_0 ;
  wire \i_/digit4[2]_i_294_n_0 ;
  wire \i_/digit4[2]_i_295_n_0 ;
  wire \i_/digit4[2]_i_296_n_0 ;
  wire \i_/digit4[2]_i_297_n_0 ;
  wire \i_/digit4[2]_i_298_n_0 ;
  wire \i_/digit4[2]_i_299_n_0 ;
  wire \i_/digit4[2]_i_29_n_0 ;
  wire \i_/digit4[2]_i_300_n_0 ;
  wire \i_/digit4[2]_i_301_n_0 ;
  wire \i_/digit4[2]_i_302_n_0 ;
  wire \i_/digit4[2]_i_303_n_0 ;
  wire \i_/digit4[2]_i_304_n_0 ;
  wire \i_/digit4[2]_i_305_n_0 ;
  wire \i_/digit4[2]_i_309_n_0 ;
  wire \i_/digit4[2]_i_30_n_0 ;
  wire \i_/digit4[2]_i_310_n_0 ;
  wire \i_/digit4[2]_i_311_n_0 ;
  wire \i_/digit4[2]_i_313_n_0 ;
  wire \i_/digit4[2]_i_314_n_0 ;
  wire \i_/digit4[2]_i_315_n_0 ;
  wire \i_/digit4[2]_i_316_n_0 ;
  wire \i_/digit4[2]_i_317_n_0 ;
  wire \i_/digit4[2]_i_318_n_0 ;
  wire \i_/digit4[2]_i_319_n_0 ;
  wire \i_/digit4[2]_i_31_n_0 ;
  wire \i_/digit4[2]_i_320_n_0 ;
  wire \i_/digit4[2]_i_321_n_0 ;
  wire \i_/digit4[2]_i_322_n_0 ;
  wire \i_/digit4[2]_i_323_n_0 ;
  wire \i_/digit4[2]_i_324_n_0 ;
  wire \i_/digit4[2]_i_325_n_0 ;
  wire \i_/digit4[2]_i_326_n_0 ;
  wire \i_/digit4[2]_i_327_n_0 ;
  wire \i_/digit4[2]_i_328_n_0 ;
  wire \i_/digit4[2]_i_329_n_0 ;
  wire \i_/digit4[2]_i_32_n_0 ;
  wire \i_/digit4[2]_i_331_n_0 ;
  wire \i_/digit4[2]_i_332_n_0 ;
  wire \i_/digit4[2]_i_333_n_0 ;
  wire \i_/digit4[2]_i_334_n_0 ;
  wire \i_/digit4[2]_i_335_n_0 ;
  wire \i_/digit4[2]_i_336_n_0 ;
  wire \i_/digit4[2]_i_337_n_0 ;
  wire \i_/digit4[2]_i_338_n_0 ;
  wire \i_/digit4[2]_i_339_n_0 ;
  wire \i_/digit4[2]_i_33_n_0 ;
  wire \i_/digit4[2]_i_340_n_0 ;
  wire \i_/digit4[2]_i_341_n_0 ;
  wire \i_/digit4[2]_i_342_n_0 ;
  wire \i_/digit4[2]_i_343_n_0 ;
  wire \i_/digit4[2]_i_344_n_0 ;
  wire \i_/digit4[2]_i_345_n_0 ;
  wire \i_/digit4[2]_i_346_n_0 ;
  wire \i_/digit4[2]_i_347_n_0 ;
  wire [3:0]\i_/digit4[2]_i_348_0 ;
  wire \i_/digit4[2]_i_348_n_0 ;
  wire \i_/digit4[2]_i_349_n_0 ;
  wire \i_/digit4[2]_i_34_n_0 ;
  wire \i_/digit4[2]_i_350_n_0 ;
  wire \i_/digit4[2]_i_351_n_0 ;
  wire \i_/digit4[2]_i_352_n_0 ;
  wire \i_/digit4[2]_i_353_n_0 ;
  wire \i_/digit4[2]_i_358_n_0 ;
  wire \i_/digit4[2]_i_359_n_0 ;
  wire \i_/digit4[2]_i_35_n_0 ;
  wire \i_/digit4[2]_i_360_n_0 ;
  wire \i_/digit4[2]_i_362_n_0 ;
  wire \i_/digit4[2]_i_363_n_0 ;
  wire \i_/digit4[2]_i_364_n_0 ;
  wire \i_/digit4[2]_i_365_n_0 ;
  wire \i_/digit4[2]_i_367_n_0 ;
  wire \i_/digit4[2]_i_368_n_0 ;
  wire \i_/digit4[2]_i_369_n_0 ;
  wire \i_/digit4[2]_i_371_n_0 ;
  wire \i_/digit4[2]_i_372_n_0 ;
  wire \i_/digit4[2]_i_373_n_0 ;
  wire \i_/digit4[2]_i_374_n_0 ;
  wire \i_/digit4[2]_i_375_n_0 ;
  wire \i_/digit4[2]_i_376_n_0 ;
  wire \i_/digit4[2]_i_377_n_0 ;
  wire \i_/digit4[2]_i_378_n_0 ;
  wire \i_/digit4[2]_i_379_n_0 ;
  wire \i_/digit4[2]_i_37_n_0 ;
  wire \i_/digit4[2]_i_380_n_0 ;
  wire \i_/digit4[2]_i_381_n_0 ;
  wire \i_/digit4[2]_i_382_n_0 ;
  wire \i_/digit4[2]_i_384_n_0 ;
  wire \i_/digit4[2]_i_385_n_0 ;
  wire \i_/digit4[2]_i_386_n_0 ;
  wire \i_/digit4[2]_i_388_n_0 ;
  wire \i_/digit4[2]_i_389_n_0 ;
  wire \i_/digit4[2]_i_38_n_0 ;
  wire \i_/digit4[2]_i_390_n_0 ;
  wire \i_/digit4[2]_i_391_n_0 ;
  wire \i_/digit4[2]_i_392_n_0 ;
  wire \i_/digit4[2]_i_393_n_0 ;
  wire \i_/digit4[2]_i_394_n_0 ;
  wire [3:0]\i_/digit4[2]_i_397_0 ;
  wire \i_/digit4[2]_i_397_n_0 ;
  wire \i_/digit4[2]_i_398_n_0 ;
  wire \i_/digit4[2]_i_399_n_0 ;
  wire \i_/digit4[2]_i_39_n_0 ;
  wire \i_/digit4[2]_i_400_n_0 ;
  wire \i_/digit4[2]_i_407_n_0 ;
  wire \i_/digit4[2]_i_409_n_0 ;
  wire \i_/digit4[2]_i_40_n_0 ;
  wire \i_/digit4[2]_i_410_n_0 ;
  wire [1:0]\i_/digit4[2]_i_411_0 ;
  wire \i_/digit4[2]_i_411_n_0 ;
  wire \i_/digit4[2]_i_412_n_0 ;
  wire \i_/digit4[2]_i_413_n_0 ;
  wire \i_/digit4[2]_i_414_n_0 ;
  wire \i_/digit4[2]_i_416_n_0 ;
  wire \i_/digit4[2]_i_417_n_0 ;
  wire \i_/digit4[2]_i_418_n_0 ;
  wire \i_/digit4[2]_i_419_n_0 ;
  wire \i_/digit4[2]_i_420_n_0 ;
  wire \i_/digit4[2]_i_421_n_0 ;
  wire \i_/digit4[2]_i_43_n_0 ;
  wire \i_/digit4[2]_i_44_n_0 ;
  wire \i_/digit4[2]_i_45_n_0 ;
  wire \i_/digit4[2]_i_46_n_0 ;
  wire \i_/digit4[2]_i_47_n_0 ;
  wire \i_/digit4[2]_i_48_n_0 ;
  wire \i_/digit4[2]_i_49_n_0 ;
  wire \i_/digit4[2]_i_50_n_0 ;
  wire \i_/digit4[2]_i_51_n_0 ;
  wire \i_/digit4[2]_i_52_n_0 ;
  wire \i_/digit4[2]_i_53_n_0 ;
  wire \i_/digit4[2]_i_54_n_0 ;
  wire \i_/digit4[2]_i_55_n_0 ;
  wire \i_/digit4[2]_i_56_n_0 ;
  wire \i_/digit4[2]_i_57_n_0 ;
  wire \i_/digit4[2]_i_58_n_0 ;
  wire \i_/digit4[2]_i_59_n_0 ;
  wire \i_/digit4[2]_i_60_n_0 ;
  wire \i_/digit4[2]_i_61_n_0 ;
  wire \i_/digit4[2]_i_62_n_0 ;
  wire \i_/digit4[2]_i_63_n_0 ;
  wire \i_/digit4[2]_i_66_n_0 ;
  wire \i_/digit4[2]_i_67_n_0 ;
  wire \i_/digit4[2]_i_68_n_0 ;
  wire \i_/digit4[2]_i_69_n_0 ;
  wire \i_/digit4[2]_i_70_n_0 ;
  wire \i_/digit4[2]_i_71_n_0 ;
  wire \i_/digit4[2]_i_72_n_0 ;
  wire \i_/digit4[2]_i_73_n_0 ;
  wire \i_/digit4[2]_i_74_n_0 ;
  wire \i_/digit4[2]_i_75_n_0 ;
  wire \i_/digit4[2]_i_76_n_0 ;
  wire \i_/digit4[2]_i_77_n_0 ;
  wire \i_/digit4[2]_i_78_n_0 ;
  wire \i_/digit4[2]_i_79_n_0 ;
  wire \i_/digit4[2]_i_7_n_0 ;
  wire \i_/digit4[2]_i_80_n_0 ;
  wire \i_/digit4[2]_i_81_n_0 ;
  wire \i_/digit4[2]_i_82_n_0 ;
  wire \i_/digit4[2]_i_83_n_0 ;
  wire \i_/digit4[2]_i_84_n_0 ;
  wire \i_/digit4[2]_i_85_n_0 ;
  wire \i_/digit4[2]_i_86_n_0 ;
  wire \i_/digit4[2]_i_87_n_0 ;
  wire \i_/digit4[2]_i_89_n_0 ;
  wire \i_/digit4[2]_i_8_n_0 ;
  wire \i_/digit4[2]_i_90_n_0 ;
  wire \i_/digit4[2]_i_91_n_0 ;
  wire \i_/digit4[2]_i_93_n_0 ;
  wire \i_/digit4[2]_i_94_n_0 ;
  wire \i_/digit4[2]_i_95_n_0 ;
  wire \i_/digit4[2]_i_96_n_0 ;
  wire \i_/digit4[2]_i_97_n_0 ;
  wire \i_/digit4[2]_i_98_n_0 ;
  wire \i_/digit4[2]_i_99_n_0 ;
  wire \i_/digit4[3]_i_10_n_0 ;
  wire \i_/digit4[3]_i_11_n_0 ;
  wire \i_/digit4[3]_i_12_n_0 ;
  wire \i_/digit4[3]_i_13_n_0 ;
  wire \i_/digit4[3]_i_14_n_0 ;
  wire \i_/digit4[3]_i_19_n_0 ;
  wire \i_/digit4[3]_i_20_n_0 ;
  wire \i_/digit4[3]_i_21_n_0 ;
  wire \i_/digit4[3]_i_22_n_0 ;
  wire \i_/digit4[3]_i_23_n_0 ;
  wire \i_/digit4[3]_i_24_n_0 ;
  wire \i_/digit4[3]_i_26_n_0 ;
  wire \i_/digit4[3]_i_27_n_0 ;
  wire \i_/digit4[3]_i_28_n_0 ;
  wire \i_/digit4[3]_i_29_n_0 ;
  wire \i_/digit4[3]_i_30_n_0 ;
  wire \i_/digit4[3]_i_31_n_0 ;
  wire \i_/digit4[3]_i_32_n_0 ;
  wire \i_/digit4[3]_i_33_n_0 ;
  wire \i_/digit4[3]_i_34_n_0 ;
  wire \i_/digit4[3]_i_35_n_0 ;
  wire \i_/digit4[3]_i_36_n_0 ;
  wire \i_/digit4[3]_i_37_n_0 ;
  wire \i_/digit4[3]_i_38_n_0 ;
  wire \i_/digit4[3]_i_39_n_0 ;
  wire \i_/digit4[3]_i_40_n_0 ;
  wire \i_/digit4[3]_i_41_n_0 ;
  wire \i_/digit4[3]_i_42_n_0 ;
  wire \i_/digit4[3]_i_43_n_0 ;
  wire \i_/digit4[3]_i_44_n_0 ;
  wire \i_/digit4[3]_i_45_n_0 ;
  wire \i_/digit4[3]_i_46_n_0 ;
  wire \i_/digit4[3]_i_47_n_0 ;
  wire \i_/digit4[3]_i_48_n_0 ;
  wire \i_/digit4[3]_i_49_n_0 ;
  wire \i_/digit4[3]_i_50_n_0 ;
  wire \i_/digit4[3]_i_51_n_0 ;
  wire \i_/digit4[3]_i_52_n_0 ;
  wire \i_/digit4[3]_i_53_n_0 ;
  wire \i_/digit4[3]_i_54_n_0 ;
  wire \i_/digit4[3]_i_55_n_0 ;
  wire \i_/digit4[3]_i_56_n_0 ;
  wire \i_/digit4[3]_i_57_n_0 ;
  wire \i_/digit4[3]_i_58_n_0 ;
  wire \i_/digit4[3]_i_59_n_0 ;
  wire \i_/digit4[3]_i_60_n_0 ;
  wire \i_/digit4[3]_i_61_n_0 ;
  wire \i_/digit4[3]_i_62_n_0 ;
  wire \i_/digit4[3]_i_63_n_0 ;
  wire \i_/digit4[3]_i_64_n_0 ;
  wire \i_/digit4[3]_i_65_n_0 ;
  wire \i_/digit4[3]_i_66_n_0 ;
  wire \i_/digit4[3]_i_67_n_0 ;
  wire \i_/digit4[3]_i_68_n_0 ;
  wire \i_/digit4[3]_i_69_n_0 ;
  wire \i_/digit4[3]_i_70_n_0 ;
  wire \i_/digit4[3]_i_71_n_0 ;
  wire \i_/digit4[3]_i_8_n_0 ;
  wire [0:0]p;
  wire [30:1]p_0;
  wire p_0_in;
  wire [30:3]p_0_in__0;
  wire [3:1]\NLW_digit4_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_digit4_reg[2]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFF00F0F088888888)) 
    \digit1[0]_i_1 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[0]),
        .I2(p_0[4]),
        .I3(c0[4]),
        .I4(p),
        .I5(p_0_in),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit1[1]_i_1 
       (.I0(c0[1]),
        .I1(c0[5]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[1]),
        .I5(p_0[5]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit1[2]_i_1 
       (.I0(c0[2]),
        .I1(c0[6]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[2]),
        .I5(p_0[6]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit1[3]_i_1 
       (.I0(c0[3]),
        .I1(c0[7]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[3]),
        .I5(p_0[7]),
        .O(D[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_12 
       (.I0(p_0[8]),
        .O(p_0_in__0[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_13 
       (.I0(p_0[7]),
        .O(p_0_in__0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_14 
       (.I0(p_0[6]),
        .O(p_0_in__0[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_15 
       (.I0(p_0[5]),
        .O(p_0_in__0[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[3]_i_8 
       (.I0(p_0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hB80047FF47FFB800)) 
    \digit1[3]_i_9 
       (.I0(\digit1_reg[0]_0 [2]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[3]),
        .I3(a_IBUF[0]),
        .I4(\i_/digit1[3]_i_17_n_0 ),
        .I5(\i_/digit1[3]_i_16_n_0 ),
        .O(p_0_in__0[3]));
  CARRY4 \digit1_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\digit1_reg[3]_i_2_n_0 ,\digit1_reg[3]_i_2_n_1 ,\digit1_reg[3]_i_2_n_2 ,\digit1_reg[3]_i_2_n_3 }),
        .CYINIT(\digit1_reg[0] [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[4:1]),
        .S({p_0_in__0[4:3],\digit1_reg[0] [2:1]}));
  CARRY4 \digit1_reg[3]_i_3 
       (.CI(\digit1_reg[3]_i_2_n_0 ),
        .CO({\digit1_reg[3]_i_3_n_0 ,\digit1_reg[3]_i_3_n_1 ,\digit1_reg[3]_i_3_n_2 ,\digit1_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[8:5]),
        .S(p_0_in__0[8:5]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit2[0]_i_1 
       (.I0(c0[8]),
        .I1(c0[12]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[8]),
        .I5(p_0[12]),
        .O(\count_reg[16]_1 [0]));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \digit2[0]_i_29 
       (.I0(abs_a[7]),
        .I1(abs_b[3]),
        .I2(\i_/digit2[0]_i_33_n_0 ),
        .I3(\i_/digit2[0]_i_34_n_0 ),
        .I4(\i_/digit2[0]_i_35_n_0 ),
        .I5(\i_/digit2[0]_i_36_n_0 ),
        .O(\digit2[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h17C0E8C0)) 
    \digit2[0]_i_32 
       (.I0(abs_b[4]),
        .I1(\i_/digit2[3]_i_83_n_0 ),
        .I2(\digit2[0]_i_37_n_0 ),
        .I3(abs_a[4]),
        .I4(abs_b[5]),
        .O(\digit2[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9699669669669969)) 
    \digit2[0]_i_37 
       (.I0(\i_/digit2[3]_i_100_n_0 ),
        .I1(\i_/digit2[3]_i_114_n_0 ),
        .I2(\i_/digit2[3]_i_113_n_0 ),
        .I3(\i_/digit2[1]_i_39_n_0 ),
        .I4(\i_/digit2[1]_i_38_n_0 ),
        .I5(\i_/digit2[3]_i_112_n_0 ),
        .O(\digit2[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit2[1]_i_1 
       (.I0(c0[9]),
        .I1(c0[13]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[9]),
        .I5(p_0[13]),
        .O(\count_reg[16]_1 [1]));
  LUT5 #(
    .INIT(32'h9A005933)) 
    \digit2[1]_i_14 
       (.I0(abs_b[5]),
        .I1(\i_/digit2[1]_i_24_n_0 ),
        .I2(abs_b[4]),
        .I3(abs_a[1]),
        .I4(\i_/digit1[3]_i_35_n_0 ),
        .O(\digit2[1]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hA665CFCF)) 
    \digit2[1]_i_15 
       (.I0(abs_b[5]),
        .I1(\i_/digit2[1]_i_25_n_0 ),
        .I2(\i_/digit2[1]_i_22_n_0 ),
        .I3(abs_b[4]),
        .I4(abs_a[2]),
        .O(\digit2[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9F9FAF5F9F5F9F5F)) 
    \digit2[1]_i_34 
       (.I0(abs_b[2]),
        .I1(abs_b[1]),
        .I2(abs_a[3]),
        .I3(\i_/digit2[1]_i_40_n_0 ),
        .I4(abs_a[5]),
        .I5(b_IBUF[0]),
        .O(\digit2[1]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit2[2]_i_1 
       (.I0(c0[10]),
        .I1(c0[14]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[10]),
        .I5(p_0[14]),
        .O(\count_reg[16]_1 [2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit2[3]_i_1 
       (.I0(c0[11]),
        .I1(c0[15]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[11]),
        .I5(p_0[15]),
        .O(\count_reg[16]_1 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_10 
       (.I0(p_0[16]),
        .O(p_0_in__0[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_11 
       (.I0(p_0[15]),
        .O(p_0_in__0[15]));
  LUT5 #(
    .INIT(32'h9A005933)) 
    \digit2[3]_i_119 
       (.I0(abs_b[5]),
        .I1(\i_/digit2[2]_i_31_n_0 ),
        .I2(abs_b[4]),
        .I3(abs_a[7]),
        .I4(\i_/digit2[3]_i_129_n_0 ),
        .O(\digit2[3]_i_119_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_12 
       (.I0(p_0[14]),
        .O(p_0_in__0[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_13 
       (.I0(p_0[13]),
        .O(p_0_in__0[13]));
  LUT6 #(
    .INIT(64'h606050A060A060A0)) 
    \digit2[3]_i_135 
       (.I0(abs_b[2]),
        .I1(abs_b[1]),
        .I2(abs_a[10]),
        .I3(\i_/digit2[3]_i_145_n_0 ),
        .I4(abs_a[12]),
        .I5(b_IBUF[0]),
        .O(\digit2[3]_i_135_n_0 ));
  LUT6 #(
    .INIT(64'h555569966996AAAA)) 
    \digit2[3]_i_51 
       (.I0(\i_/digit2[3]_i_70_n_0 ),
        .I1(\i_/digit2[2]_i_14_n_0 ),
        .I2(\i_/digit2[3]_i_71_n_0 ),
        .I3(\i_/digit2[2]_i_15_n_0 ),
        .I4(\i_/digit2[2]_i_16_n_0 ),
        .I5(\i_/digit2[2]_i_17_n_0 ),
        .O(\digit2[3]_i_51_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_6 
       (.I0(p_0[12]),
        .O(p_0_in__0[12]));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \digit2[3]_i_64 
       (.I0(abs_a[5]),
        .I1(abs_b[3]),
        .I2(\i_/digit2[3]_i_81_n_0 ),
        .I3(\i_/digit2[3]_i_82_n_0 ),
        .I4(\i_/digit2[3]_i_83_n_0 ),
        .I5(\i_/digit2[3]_i_84_n_0 ),
        .O(\digit2[3]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \digit2[3]_i_67 
       (.I0(\i_/digit2[3]_i_85_n_0 ),
        .I1(\i_/digit2[3]_i_86_n_0 ),
        .I2(b_IBUF[9]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [0]),
        .I5(abs_a[4]),
        .O(\digit2[3]_i_67_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_7 
       (.I0(p_0[11]),
        .O(p_0_in__0[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_8 
       (.I0(p_0[10]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'h555569966996AAAA)) 
    \digit2[3]_i_88 
       (.I0(\i_/digit2[3]_i_92_n_0 ),
        .I1(\i_/digit2[3]_i_105_n_0 ),
        .I2(\i_/digit2[0]_i_24_n_0 ),
        .I3(\i_/digit2[0]_i_25_n_0 ),
        .I4(\i_/digit2[0]_i_26_n_0 ),
        .I5(\i_/digit2[0]_i_27_n_0 ),
        .O(\digit2[3]_i_88_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[3]_i_9 
       (.I0(p_0[9]),
        .O(p_0_in__0[9]));
  CARRY4 \digit2_reg[3]_i_2 
       (.CI(\digit1_reg[3]_i_3_n_0 ),
        .CO({\digit2_reg[3]_i_2_n_0 ,\digit2_reg[3]_i_2_n_1 ,\digit2_reg[3]_i_2_n_2 ,\digit2_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[12:9]),
        .S(p_0_in__0[12:9]));
  CARRY4 \digit2_reg[3]_i_3 
       (.CI(\digit2_reg[3]_i_2_n_0 ),
        .CO({\digit2_reg[3]_i_3_n_0 ,\digit2_reg[3]_i_3_n_1 ,\digit2_reg[3]_i_3_n_2 ,\digit2_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[16:13]),
        .S(p_0_in__0[16:13]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit3[0]_i_1 
       (.I0(c0[16]),
        .I1(c0[20]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[16]),
        .I5(p_0[20]),
        .O(\count_reg[16]_0 [0]));
  LUT6 #(
    .INIT(64'h555569966996AAAA)) 
    \digit3[0]_i_6 
       (.I0(\i_/digit3[1]_i_30_n_0 ),
        .I1(\i_/digit3[0]_i_9_n_0 ),
        .I2(\i_/digit3[2]_i_8_n_0 ),
        .I3(\i_/digit3[2]_i_9_n_0 ),
        .I4(\i_/digit3[2]_i_10_n_0 ),
        .I5(\i_/digit3[2]_i_11_n_0 ),
        .O(\digit3[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit3[1]_i_1 
       (.I0(c0[17]),
        .I1(c0[21]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[17]),
        .I5(p_0[21]),
        .O(\count_reg[16]_0 [1]));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    \digit3[1]_i_115 
       (.I0(\i_/digit3[1]_i_119_n_0 ),
        .I1(\i_/digit3[1]_i_120_n_0 ),
        .I2(\i_/digit3[1]_i_121_n_0 ),
        .I3(\i_/digit3[1]_i_122_n_0 ),
        .I4(abs_b[4]),
        .I5(abs_a[15]),
        .O(\digit3[1]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h555596699669AAAA)) 
    \digit3[1]_i_31 
       (.I0(\i_/digit3[3]_i_58_n_0 ),
        .I1(\i_/digit3[1]_i_43_n_0 ),
        .I2(\i_/digit3[3]_i_36_n_0 ),
        .I3(\i_/digit3[3]_i_37_n_0 ),
        .I4(\i_/digit3[3]_i_38_n_0 ),
        .I5(\i_/digit3[3]_i_39_n_0 ),
        .O(\digit3[1]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9669AAAA55559669)) 
    \digit3[1]_i_34 
       (.I0(\i_/digit3[2]_i_38_n_0 ),
        .I1(\i_/digit2[3]_i_93_n_0 ),
        .I2(\i_/digit2[3]_i_66_n_0 ),
        .I3(\digit2[3]_i_67_n_0 ),
        .I4(\i_/digit2[3]_i_68_n_0 ),
        .I5(\i_/digit2[3]_i_69_n_0 ),
        .O(\digit3[1]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \digit3[1]_i_35 
       (.I0(\i_/digit3[1]_i_48_n_0 ),
        .I1(\i_/digit3[1]_i_49_n_0 ),
        .I2(b_IBUF[15]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0] [2]),
        .I5(abs_a[4]),
        .O(\digit3[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \digit3[1]_i_61 
       (.I0(\i_/digit3[1]_i_75_n_0 ),
        .I1(\i_/digit3[1]_i_76_n_0 ),
        .I2(b_IBUF[12]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [3]),
        .I5(abs_a[8]),
        .O(\digit3[1]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit3[2]_i_1 
       (.I0(c0[18]),
        .I1(c0[22]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[18]),
        .I5(p_0[22]),
        .O(\count_reg[16]_0 [2]));
  LUT6 #(
    .INIT(64'h9699669669669969)) 
    \digit3[2]_i_64 
       (.I0(\i_/digit3[2]_i_72_n_0 ),
        .I1(\i_/digit3[2]_i_73_n_0 ),
        .I2(\digit3[2]_i_68_n_0 ),
        .I3(\i_/digit3[2]_i_74_n_0 ),
        .I4(\i_/digit3[2]_i_67_n_0 ),
        .I5(\i_/digit3[2]_i_75_n_0 ),
        .O(\digit3[2]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    \digit3[2]_i_68 
       (.I0(\i_/digit3[2]_i_76_n_0 ),
        .I1(\i_/digit3[2]_i_77_n_0 ),
        .I2(\i_/digit3[2]_i_78_n_0 ),
        .I3(\i_/digit3[2]_i_79_n_0 ),
        .I4(abs_b[4]),
        .I5(abs_a[11]),
        .O(\digit3[2]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h9699669669669969)) 
    \digit3[2]_i_80 
       (.I0(\i_/digit3[2]_i_71_0 ),
        .I1(\i_/digit3[2]_i_89_n_0 ),
        .I2(\i_/digit2[3]_i_134_n_0 ),
        .I3(\i_/digit2[3]_i_142_n_0 ),
        .I4(\i_/digit3[2]_i_90_n_0 ),
        .I5(\i_/digit2[3]_i_130_n_0 ),
        .O(\digit3[2]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \digit3[2]_i_83 
       (.I0(\i_/digit3[2]_i_93_n_0 ),
        .I1(\i_/digit3[2]_i_94_n_0 ),
        .I2(abs_b[2]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\digit3[2]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hB7B7BBB7B7777777)) 
    \digit3[2]_i_92 
       (.I0(abs_b[2]),
        .I1(abs_a[13]),
        .I2(abs_b[1]),
        .I3(b_IBUF[0]),
        .I4(abs_a[15]),
        .I5(\i_/digit3[2]_i_96_n_0 ),
        .O(\digit3[2]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit3[3]_i_1 
       (.I0(c0[19]),
        .I1(c0[23]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[19]),
        .I5(p_0[23]),
        .O(\count_reg[16]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_10 
       (.I0(p_0[24]),
        .O(p_0_in__0[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_11 
       (.I0(p_0[23]),
        .O(p_0_in__0[23]));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \digit3[3]_i_111 
       (.I0(\i_/digit3[3]_i_125_n_0 ),
        .I1(\i_/digit3[3]_i_126_n_0 ),
        .I2(b_IBUF[12]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [3]),
        .I5(abs_a[10]),
        .O(\digit3[3]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \digit3[3]_i_116 
       (.I0(abs_b[9]),
        .I1(abs_a[11]),
        .I2(\i_/digit3[3]_i_128_n_0 ),
        .I3(\i_/digit3[3]_i_129_n_0 ),
        .I4(\i_/digit3[3]_i_130_n_0 ),
        .I5(\i_/digit3[3]_i_131_n_0 ),
        .O(\digit3[3]_i_116_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_12 
       (.I0(p_0[22]),
        .O(p_0_in__0[22]));
  LUT6 #(
    .INIT(64'h9A59599A599A9A59)) 
    \digit3[3]_i_124 
       (.I0(\i_/digit3[3]_i_138_n_0 ),
        .I1(\i_/digit3[1]_i_83_n_0 ),
        .I2(\i_/digit3[3]_i_127_n_0 ),
        .I3(\i_/digit3[1]_i_84_n_0 ),
        .I4(\i_/digit3[1]_i_85_n_0 ),
        .I5(\i_/digit3[1]_i_86_n_0 ),
        .O(\digit3[3]_i_124_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_13 
       (.I0(p_0[21]),
        .O(p_0_in__0[21]));
  LUT6 #(
    .INIT(64'h9A59599A599A9A59)) 
    \digit3[3]_i_154 
       (.I0(\i_/digit3[3]_i_167_n_0 ),
        .I1(\i_/digit3[1]_i_105_n_0 ),
        .I2(\i_/digit3[1]_i_106_n_0 ),
        .I3(\i_/digit3[3]_i_168_n_0 ),
        .I4(\i_/digit3[1]_i_107_n_0 ),
        .I5(\i_/digit3[1]_i_108_n_0 ),
        .O(\digit3[3]_i_154_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \digit3[3]_i_159 
       (.I0(\i_/digit3[3]_i_173_n_0 ),
        .I1(\i_/digit3[3]_i_174_n_0 ),
        .I2(abs_b[5]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\digit3[3]_i_159_n_0 ));
  LUT6 #(
    .INIT(64'h96695555AAAA9669)) 
    \digit3[3]_i_29 
       (.I0(\i_/digit3[3]_i_46_n_0 ),
        .I1(\i_/digit3[1]_i_13_n_0 ),
        .I2(\i_/digit3[3]_i_47_n_0 ),
        .I3(\i_/digit3[1]_i_15_n_0 ),
        .I4(\i_/digit3[1]_i_16_n_0 ),
        .I5(\i_/digit3[1]_i_17_n_0 ),
        .O(\digit3[3]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_6 
       (.I0(p_0[20]),
        .O(p_0_in__0[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_7 
       (.I0(p_0[19]),
        .O(p_0_in__0[19]));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \digit3[3]_i_75 
       (.I0(abs_a[8]),
        .I1(abs_b[9]),
        .I2(\i_/digit3[3]_i_90_n_0 ),
        .I3(\digit3[3]_i_91_n_0 ),
        .I4(\i_/digit3[3]_i_92_n_0 ),
        .I5(\i_/digit3[3]_i_93_n_0 ),
        .O(\digit3[3]_i_75_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_8 
       (.I0(p_0[18]),
        .O(p_0_in__0[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit3[3]_i_9 
       (.I0(p_0[17]),
        .O(p_0_in__0[17]));
  LUT6 #(
    .INIT(64'h666AAA6A99955595)) 
    \digit3[3]_i_91 
       (.I0(\i_/digit3[3]_i_107_n_0 ),
        .I1(abs_b[8]),
        .I2(a_IBUF[10]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit3[3]_i_126_0 [1]),
        .I5(\i_/digit3[3]_i_108_n_0 ),
        .O(\digit3[3]_i_91_n_0 ));
  CARRY4 \digit3_reg[3]_i_2 
       (.CI(\digit2_reg[3]_i_3_n_0 ),
        .CO({\digit3_reg[3]_i_2_n_0 ,\digit3_reg[3]_i_2_n_1 ,\digit3_reg[3]_i_2_n_2 ,\digit3_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[20:17]),
        .S(p_0_in__0[20:17]));
  CARRY4 \digit3_reg[3]_i_3 
       (.CI(\digit3_reg[3]_i_2_n_0 ),
        .CO({\digit3_reg[3]_i_3_n_0 ,\digit3_reg[3]_i_3_n_1 ,\digit3_reg[3]_i_3_n_2 ,\digit3_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(c0[24:21]),
        .S(p_0_in__0[24:21]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit4[0]_i_1 
       (.I0(c0[24]),
        .I1(c0[28]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[24]),
        .I5(p_0[28]),
        .O(\count_reg[16] [0]));
  LUT6 #(
    .INIT(64'h9669AAAA55559669)) 
    \digit4[0]_i_19 
       (.I0(\i_/digit4[0]_i_23_n_0 ),
        .I1(\i_/digit3[3]_i_80_n_0 ),
        .I2(\i_/digit3[3]_i_81_n_0 ),
        .I3(\i_/digit3[3]_i_82_n_0 ),
        .I4(\i_/digit4[0]_i_24_n_0 ),
        .I5(\i_/digit3[3]_i_83_n_0 ),
        .O(\digit4[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h9996966666696999)) 
    \digit4[0]_i_51 
       (.I0(\i_/digit3[3]_i_200_n_0 ),
        .I1(\i_/digit3[3]_i_195_n_0 ),
        .I2(\i_/digit3[1]_i_129_n_0 ),
        .I3(\i_/digit3[3]_i_199_n_0 ),
        .I4(\i_/digit3[1]_i_128_n_0 ),
        .I5(\i_/digit3[3]_i_184_n_0 ),
        .O(\digit4[0]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \digit4[2]_i_1 
       (.I0(c0[26]),
        .I1(c0[30]),
        .I2(p_0_in),
        .I3(p),
        .I4(p_0[26]),
        .I5(p_0[30]),
        .O(\count_reg[16] [1]));
  LUT6 #(
    .INIT(64'h5656566A566A6A6A)) 
    \digit4[2]_i_173 
       (.I0(\i_/digit4[2]_i_170_n_0 ),
        .I1(\i_/digit4[0]_i_30_n_0 ),
        .I2(\i_/digit4[2]_i_198_n_0 ),
        .I3(\i_/digit4[0]_i_29_n_0 ),
        .I4(\i_/digit3[3]_i_112_n_0 ),
        .I5(\digit3[3]_i_111_n_0 ),
        .O(\digit4[2]_i_173_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \digit4[2]_i_177 
       (.I0(\i_/digit4[2]_i_204_n_0 ),
        .I1(\i_/digit4[2]_i_205_n_0 ),
        .I2(abs_b[11]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\digit4[2]_i_177_n_0 ));
  LUT6 #(
    .INIT(64'h6A56AAAA55556A56)) 
    \digit4[2]_i_184 
       (.I0(\i_/digit4[2]_i_217_n_0 ),
        .I1(\i_/digit4[2]_i_190_n_0 ),
        .I2(\i_/digit4[2]_i_187_n_0 ),
        .I3(\i_/digit4[2]_i_188_n_0 ),
        .I4(\i_/digit4[2]_i_218_n_0 ),
        .I5(\i_/digit4[2]_i_189_n_0 ),
        .O(\digit4[2]_i_184_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA699669965555)) 
    \digit4[2]_i_21 
       (.I0(\i_/digit4[2]_i_39_n_0 ),
        .I1(\i_/digit4[2]_i_40_n_0 ),
        .I2(\i_/digit4[3]_i_19_n_0 ),
        .I3(\i_/digit4[3]_i_20_n_0 ),
        .I4(\i_/digit4[3]_i_21_n_0 ),
        .I5(\i_/digit4[3]_i_22_n_0 ),
        .O(\digit4[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5656566A566A6A6A)) 
    \digit4[2]_i_242 
       (.I0(\i_/digit4[2]_i_271_n_0 ),
        .I1(\i_/digit4[2]_i_247_n_0 ),
        .I2(\i_/digit4[2]_i_272_n_0 ),
        .I3(\i_/digit4[2]_i_243_n_0 ),
        .I4(\i_/digit4[2]_i_244_n_0 ),
        .I5(\i_/digit4[2]_i_245_n_0 ),
        .O(\digit4[2]_i_242_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \digit4[2]_i_307 
       (.I0(\i_/digit4[2]_i_334_n_0 ),
        .I1(\i_/digit4[2]_i_335_n_0 ),
        .I2(abs_b[5]),
        .I3(a_IBUF[22]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [1]),
        .O(\digit4[2]_i_307_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \digit4[2]_i_36 
       (.I0(\i_/digit4[2]_i_56_n_0 ),
        .I1(\i_/digit4[2]_i_57_n_0 ),
        .I2(b_IBUF[24]),
        .I3(b_IBUF[31]),
        .I4(\digit4_reg[0] [3]),
        .I5(abs_a[3]),
        .O(\digit4[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6A99955595)) 
    \digit4[2]_i_370 
       (.I0(\i_/digit4[2]_i_394_n_0 ),
        .I1(abs_b[2]),
        .I2(a_IBUF[26]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_397_0 [1]),
        .I5(\i_/digit4[2]_i_392_n_0 ),
        .O(\digit4[2]_i_370_n_0 ));
  LUT6 #(
    .INIT(64'h606050A060A060A0)) 
    \digit4[2]_i_383 
       (.I0(abs_b[2]),
        .I1(abs_b[1]),
        .I2(abs_a[23]),
        .I3(\i_/digit4[2]_i_400_n_0 ),
        .I4(abs_a[25]),
        .I5(b_IBUF[0]),
        .O(\digit4[2]_i_383_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[2]_i_5 
       (.I0(p_0[30]),
        .O(p_0_in__0[30]));
  LUT5 #(
    .INIT(32'h65A69A59)) 
    \digit4[2]_i_6 
       (.I0(\i_/digit4[2]_i_13_n_0 ),
        .I1(\i_/digit4[1]_i_8_n_0 ),
        .I2(\i_/digit4[1]_i_9_n_0 ),
        .I3(\i_/digit4[1]_i_10_n_0 ),
        .I4(\b[28] ),
        .O(p_0_in__0[29]));
  LUT6 #(
    .INIT(64'h56A6AAAAA9595555)) 
    \digit4[2]_i_92 
       (.I0(\i_/digit4[2]_i_108_n_0 ),
        .I1(b_IBUF[19]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0]_0 [2]),
        .I4(abs_a[9]),
        .I5(\i_/digit4[2]_i_106_n_0 ),
        .O(\digit4[2]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'h0FF0CAAC)) 
    \digit4[3]_i_1 
       (.I0(c0[27]),
        .I1(p_0[27]),
        .I2(a_IBUF[31]),
        .I3(b_IBUF[31]),
        .I4(p_0_in),
        .O(\count_reg[16] [2]));
  LUT6 #(
    .INIT(64'h9669AAAA55559669)) 
    \digit4[3]_i_25 
       (.I0(\i_/digit4[3]_i_30_n_0 ),
        .I1(\i_/digit4[3]_i_37_n_0 ),
        .I2(\i_/digit4[0]_i_7_n_0 ),
        .I3(\i_/digit4[0]_i_8_n_0 ),
        .I4(\i_/digit4[0]_i_9_n_0 ),
        .I5(\i_/digit4[0]_i_10_n_0 ),
        .O(\digit4[3]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[3]_i_4 
       (.I0(p_0[28]),
        .O(p_0_in__0[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[3]_i_5 
       (.I0(p_0[27]),
        .O(p_0_in__0[27]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[3]_i_6 
       (.I0(p_0[26]),
        .O(p_0_in__0[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \digit4[3]_i_7 
       (.I0(\a[0] ),
        .O(p_0_in__0[25]));
  CARRY4 \digit4_reg[2]_i_2 
       (.CI(\digit4_reg[3]_i_2_n_0 ),
        .CO({\NLW_digit4_reg[2]_i_2_CO_UNCONNECTED [3:1],\digit4_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_digit4_reg[2]_i_2_O_UNCONNECTED [3:2],c0[30],\digit4[2]_i_6_0 [1]}),
        .S({1'b0,1'b0,p_0_in__0[30:29]}));
  CARRY4 \digit4_reg[3]_i_2 
       (.CI(\digit3_reg[3]_i_3_n_0 ),
        .CO({\digit4_reg[3]_i_2_n_0 ,\digit4_reg[3]_i_2_n_1 ,\digit4_reg[3]_i_2_n_2 ,\digit4_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({c0[28:26],\digit4[2]_i_6_0 [0]}),
        .S(p_0_in__0[28:25]));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit1[0]_i_2 
       (.I0(\i_/digit1[0]_i_3_n_0 ),
        .I1(\digit1_reg[0]_0 [3]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[4]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit1[0]_i_4_n_0 ),
        .O(p_0[4]));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit1[0]_i_3 
       (.I0(\i_/digit1[1]_i_12_n_0 ),
        .I1(\i_/digit1[0]_i_5_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[31]),
        .I5(\digit1_reg[0]_0 [2]),
        .O(\i_/digit1[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit1[0]_i_4 
       (.I0(\i_/digit1[3]_i_16_n_0 ),
        .I1(\digit1_reg[0]_0 [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[3]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit1[3]_i_17_n_0 ),
        .O(\i_/digit1[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0808080E0000000)) 
    \i_/digit1[0]_i_5 
       (.I0(abs_b[1]),
        .I1(b_IBUF[0]),
        .I2(abs_a[0]),
        .I3(abs_b[0]),
        .I4(abs_a[1]),
        .I5(abs_a[2]),
        .O(\i_/digit1[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0880F7787778777)) 
    \i_/digit1[1]_i_12 
       (.I0(abs_a[2]),
        .I1(abs_b[0]),
        .I2(abs_a[3]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[1]),
        .O(\i_/digit1[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h6500A500A900AA00)) 
    \i_/digit1[1]_i_13 
       (.I0(abs_b[2]),
        .I1(abs_a[2]),
        .I2(\i_/digit1[1]_i_18_n_0 ),
        .I3(abs_a[0]),
        .I4(b_IBUF[0]),
        .I5(abs_b[1]),
        .O(\i_/digit1[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit1[1]_i_14 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[4]),
        .I2(b_IBUF[31]),
        .I3(\digit1_reg[0]_0 [3]),
        .O(\i_/digit1[1]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    \i_/digit1[1]_i_15 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[3]),
        .I2(b_IBUF[31]),
        .I3(\digit1_reg[0]_0 [2]),
        .O(\i_/digit1[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    \i_/digit1[1]_i_18 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit1[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h47FFB800B800B800)) 
    \i_/digit1[1]_i_2 
       (.I0(O[0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[1]),
        .I3(b_IBUF[0]),
        .I4(abs_b[0]),
        .I5(a_IBUF[0]),
        .O(p_0[1]));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit1[1]_i_3 
       (.I0(\i_/digit1[1]_i_5_n_0 ),
        .I1(\i_/digit1[1]_i_6_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0]_0 [0]),
        .O(p_0[5]));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit1[1]_i_5 
       (.I0(\i_/digit1[2]_i_15_n_0 ),
        .I1(\i_/digit1[2]_i_16_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[4]),
        .I4(b_IBUF[31]),
        .I5(\digit1_reg[0]_0 [3]),
        .O(\i_/digit1[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6F0606066F6F6F06)) 
    \i_/digit1[1]_i_6 
       (.I0(\i_/digit1[1]_i_12_n_0 ),
        .I1(\i_/digit1[1]_i_13_n_0 ),
        .I2(\i_/digit1[1]_i_14_n_0 ),
        .I3(\i_/digit1[3]_i_17_n_0 ),
        .I4(\i_/digit1[1]_i_15_n_0 ),
        .I5(\i_/digit1[3]_i_16_n_0 ),
        .O(\i_/digit1[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit1[2]_i_11 
       (.I0(abs_a[1]),
        .I1(\digit1_reg[0]_0 [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[3]),
        .I4(\i_/digit1[2]_i_19_n_0 ),
        .I5(\i_/digit1[2]_i_20_n_0 ),
        .O(\i_/digit1[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit1[2]_i_12 
       (.I0(\i_/digit1[2]_i_21_n_0 ),
        .I1(\i_/digit1[2]_i_22_n_0 ),
        .I2(b_IBUF[3]),
        .I3(b_IBUF[31]),
        .I4(\digit1_reg[0]_0 [2]),
        .I5(abs_a[2]),
        .O(\i_/digit1[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5DDF044504455DDF)) 
    \i_/digit1[2]_i_13 
       (.I0(\i_/digit1[2]_i_17_n_0 ),
        .I1(\i_/digit1[1]_i_12_n_0 ),
        .I2(\i_/digit1[0]_i_5_n_0 ),
        .I3(\i_/digit1[2]_i_23_n_0 ),
        .I4(\i_/digit1[2]_i_20_n_0 ),
        .I5(\i_/digit1[2]_i_24_n_0 ),
        .O(\i_/digit1[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit1[2]_i_14 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[5]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0]_0 [0]),
        .O(\i_/digit1[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit1[2]_i_15 
       (.I0(\i_/digit1[2]_i_20_n_0 ),
        .I1(\i_/digit1[2]_i_19_n_0 ),
        .I2(b_IBUF[3]),
        .I3(b_IBUF[31]),
        .I4(\digit1_reg[0]_0 [2]),
        .I5(abs_a[1]),
        .O(\i_/digit1[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000FFFFB800)) 
    \i_/digit1[2]_i_16 
       (.I0(\digit1_reg[0]_0 [2]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[3]),
        .I3(abs_a[0]),
        .I4(\i_/digit1[0]_i_5_n_0 ),
        .I5(\i_/digit1[1]_i_12_n_0 ),
        .O(\i_/digit1[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit1[2]_i_17 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[4]),
        .I4(b_IBUF[31]),
        .I5(\digit1_reg[0]_0 [3]),
        .O(\i_/digit1[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h5777FFFF5FFF7FFF)) 
    \i_/digit1[2]_i_19 
       (.I0(abs_a[1]),
        .I1(b_IBUF[0]),
        .I2(abs_a[2]),
        .I3(abs_b[0]),
        .I4(abs_b[1]),
        .I5(abs_a[3]),
        .O(\i_/digit1[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2D77788878887888)) 
    \i_/digit1[2]_i_2 
       (.I0(a_IBUF[0]),
        .I1(abs_b[1]),
        .I2(abs_a[1]),
        .I3(b_IBUF[0]),
        .I4(abs_b[0]),
        .I5(abs_a[0]),
        .O(p_0[2]));
  LUT6 #(
    .INIT(64'hD828877787778777)) 
    \i_/digit1[2]_i_20 
       (.I0(abs_a[2]),
        .I1(abs_b[1]),
        .I2(b_IBUF[0]),
        .I3(abs_a[4]),
        .I4(abs_b[0]),
        .I5(abs_a[3]),
        .O(\i_/digit1[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0F77F08878887888)) 
    \i_/digit1[2]_i_21 
       (.I0(abs_a[4]),
        .I1(abs_b[0]),
        .I2(abs_a[5]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[3]),
        .O(\i_/digit1[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0777FFFFDFFFFFFF)) 
    \i_/digit1[2]_i_22 
       (.I0(b_IBUF[0]),
        .I1(abs_a[4]),
        .I2(abs_b[0]),
        .I3(abs_a[3]),
        .I4(abs_a[2]),
        .I5(abs_b[1]),
        .O(\i_/digit1[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit1[2]_i_23 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[31]),
        .I5(\digit1_reg[0]_0 [2]),
        .O(\i_/digit1[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA695A555FFFFFFFF)) 
    \i_/digit1[2]_i_24 
       (.I0(abs_b[2]),
        .I1(abs_a[3]),
        .I2(abs_b[1]),
        .I3(\i_/digit1[2]_i_27_n_0 ),
        .I4(b_IBUF[0]),
        .I5(abs_a[1]),
        .O(\i_/digit1[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit1[2]_i_27 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit1[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit1[2]_i_3 
       (.I0(\i_/digit1[2]_i_8_n_0 ),
        .I1(\i_/digit1[2]_i_9_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[6]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0]_0 [1]),
        .O(p_0[6]));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit1[2]_i_8 
       (.I0(abs_a[1]),
        .I1(abs_b[3]),
        .I2(\i_/digit1[2]_i_11_n_0 ),
        .I3(\i_/digit1[2]_i_12_n_0 ),
        .I4(\i_/digit1[2]_i_13_n_0 ),
        .I5(\i_/digit1[2]_i_14_n_0 ),
        .O(\i_/digit1[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h96FF009600960096)) 
    \i_/digit1[2]_i_9 
       (.I0(\i_/digit1[2]_i_15_n_0 ),
        .I1(\i_/digit1[2]_i_16_n_0 ),
        .I2(\i_/digit1[2]_i_17_n_0 ),
        .I3(\i_/digit1[1]_i_6_n_0 ),
        .I4(abs_b[4]),
        .I5(a_IBUF[0]),
        .O(\i_/digit1[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h596A6A6A3FC0C0C0)) 
    \i_/digit1[3]_i_16 
       (.I0(abs_a[2]),
        .I1(abs_a[0]),
        .I2(abs_b[1]),
        .I3(abs_a[1]),
        .I4(abs_b[0]),
        .I5(b_IBUF[0]),
        .O(\i_/digit1[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h13FFFFFF5FFF7FFF)) 
    \i_/digit1[3]_i_17 
       (.I0(abs_a[0]),
        .I1(b_IBUF[0]),
        .I2(abs_b[0]),
        .I3(a_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[1]),
        .O(\i_/digit1[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit1[3]_i_19 
       (.I0(\i_/digit1[3]_i_28_n_0 ),
        .I1(\i_/digit1[3]_i_29_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[6]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0]_0 [1]),
        .O(\i_/digit1[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAAAAA8A800000)) 
    \i_/digit1[3]_i_21 
       (.I0(\i_/digit1[2]_i_8_n_0 ),
        .I1(\digit2_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[6]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit1[2]_i_9_n_0 ),
        .O(\i_/digit1[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \i_/digit1[3]_i_28 
       (.I0(\i_/digit1[3]_i_34_n_0 ),
        .I1(\i_/digit1[3]_i_35_n_0 ),
        .I2(abs_a[2]),
        .I3(abs_b[3]),
        .I4(\i_/digit1[3]_i_36_n_0 ),
        .I5(\i_/digit1[3]_i_37_n_0 ),
        .O(\i_/digit1[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h2BB2B22BB22BB22B)) 
    \i_/digit1[3]_i_29 
       (.I0(\i_/digit1[2]_i_14_n_0 ),
        .I1(\i_/digit1[2]_i_13_n_0 ),
        .I2(\i_/digit1[2]_i_12_n_0 ),
        .I3(\i_/digit1[2]_i_11_n_0 ),
        .I4(abs_b[3]),
        .I5(abs_a[1]),
        .O(\i_/digit1[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit1[3]_i_34 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit1[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h66060600FF6F6F66)) 
    \i_/digit1[3]_i_35 
       (.I0(\i_/digit1[2]_i_21_n_0 ),
        .I1(\i_/digit1[3]_i_38_n_0 ),
        .I2(\i_/digit1[3]_i_39_n_0 ),
        .I3(\i_/digit1[2]_i_19_n_0 ),
        .I4(\i_/digit1[2]_i_20_n_0 ),
        .I5(\i_/digit1[3]_i_40_n_0 ),
        .O(\i_/digit1[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit1[3]_i_36 
       (.I0(\i_/digit1[2]_i_22_n_0 ),
        .I1(abs_a[2]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[3]),
        .I5(\i_/digit1[2]_i_21_n_0 ),
        .O(\i_/digit1[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit1[3]_i_37 
       (.I0(\i_/digit1[3]_i_41_n_0 ),
        .I1(\i_/digit1[3]_i_42_n_0 ),
        .I2(abs_b[2]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit1[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9F9F5FAF5F9F5F9F)) 
    \i_/digit1[3]_i_38 
       (.I0(abs_b[2]),
        .I1(abs_b[1]),
        .I2(abs_a[2]),
        .I3(\i_/digit1[3]_i_43_n_0 ),
        .I4(abs_a[4]),
        .I5(b_IBUF[0]),
        .O(\i_/digit1[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit1[3]_i_39 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit1[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit1[3]_i_40 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit1[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h0F77F08878887888)) 
    \i_/digit1[3]_i_41 
       (.I0(abs_a[5]),
        .I1(abs_b[0]),
        .I2(abs_a[6]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[4]),
        .O(\i_/digit1[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hF888000020000000)) 
    \i_/digit1[3]_i_42 
       (.I0(b_IBUF[0]),
        .I1(abs_a[5]),
        .I2(abs_b[0]),
        .I3(abs_a[4]),
        .I4(abs_a[3]),
        .I5(abs_b[1]),
        .O(\i_/digit1[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    \i_/digit1[3]_i_43 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit1[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit1[3]_i_5 
       (.I0(\i_/digit1[3]_i_16_n_0 ),
        .I1(\i_/digit1[3]_i_17_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[3]),
        .I4(b_IBUF[31]),
        .I5(\digit1_reg[0]_0 [2]),
        .O(p_0[3]));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit1[3]_i_6 
       (.I0(\i_/digit1[3]_i_19_n_0 ),
        .I1(\digit2_reg[0]_0 [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[7]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit1[3]_i_21_n_0 ),
        .O(p_0[7]));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit2[0]_i_10 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[6]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0]_0 [1]),
        .O(\i_/digit2[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit2[0]_i_12 
       (.I0(abs_a[1]),
        .I1(\digit2_reg[0] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[9]),
        .I4(\i_/digit2[3]_i_43_n_0 ),
        .I5(\i_/digit2[3]_i_42_n_0 ),
        .O(\i_/digit2[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h6999696969999999)) 
    \i_/digit2[0]_i_13 
       (.I0(\i_/digit2[0]_i_20_n_0 ),
        .I1(\i_/digit2[0]_i_21_n_0 ),
        .I2(abs_a[2]),
        .I3(\digit2_reg[0] [0]),
        .I4(b_IBUF[31]),
        .I5(b_IBUF[9]),
        .O(\i_/digit2[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5DDF044504455DDF)) 
    \i_/digit2[0]_i_14 
       (.I0(\i_/digit2[0]_i_16_n_0 ),
        .I1(\i_/digit2[3]_i_22_n_0 ),
        .I2(\i_/digit2[0]_i_22_n_0 ),
        .I3(\i_/digit2[2]_i_11_n_0 ),
        .I4(\i_/digit2[3]_i_42_n_0 ),
        .I5(\i_/digit2[0]_i_23_n_0 ),
        .O(\i_/digit2[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_15 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[11]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0] [2]),
        .O(\i_/digit2[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_16 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[10]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0] [1]),
        .O(\i_/digit2[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9969696666969699)) 
    \i_/digit2[0]_i_19 
       (.I0(\i_/digit1[3]_i_38_n_0 ),
        .I1(\i_/digit1[2]_i_21_n_0 ),
        .I2(\i_/digit1[3]_i_39_n_0 ),
        .I3(\i_/digit1[2]_i_19_n_0 ),
        .I4(\i_/digit1[2]_i_20_n_0 ),
        .I5(\i_/digit1[3]_i_40_n_0 ),
        .O(\i_/digit2[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit2[0]_i_2 
       (.I0(\i_/digit2[0]_i_4_n_0 ),
        .I1(\i_/digit2[0]_i_5_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[8]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0]_0 [3]),
        .O(p_0[8]));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit2[0]_i_20 
       (.I0(abs_a[4]),
        .I1(abs_b[6]),
        .I2(\i_/digit2[0]_i_24_n_0 ),
        .I3(\i_/digit2[0]_i_25_n_0 ),
        .I4(\i_/digit2[0]_i_26_n_0 ),
        .I5(\i_/digit2[0]_i_27_n_0 ),
        .O(\i_/digit2[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h7117177117711771)) 
    \i_/digit2[0]_i_21 
       (.I0(\i_/digit2[3]_i_62_n_0 ),
        .I1(\i_/digit2[3]_i_61_n_0 ),
        .I2(\i_/digit2[3]_i_60_n_0 ),
        .I3(\i_/digit2[3]_i_59_n_0 ),
        .I4(abs_b[6]),
        .I5(abs_a[3]),
        .O(\i_/digit2[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_22 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[9]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0] [0]),
        .O(\i_/digit2[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA966996695555)) 
    \i_/digit2[0]_i_23 
       (.I0(\i_/digit2[2]_i_20_n_0 ),
        .I1(\i_/digit2[3]_i_44_n_0 ),
        .I2(\i_/digit2[0]_i_28_n_0 ),
        .I3(\i_/digit2[3]_i_46_n_0 ),
        .I4(\i_/digit2[3]_i_47_n_0 ),
        .I5(\i_/digit2[3]_i_48_n_0 ),
        .O(\i_/digit2[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBFFF2A222AAA)) 
    \i_/digit2[0]_i_24 
       (.I0(\i_/digit2[3]_i_78_n_0 ),
        .I1(abs_a[4]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[6]),
        .I5(\i_/digit2[3]_i_77_n_0 ),
        .O(\i_/digit2[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6A666AAA95999555)) 
    \i_/digit2[0]_i_25 
       (.I0(\digit2[0]_i_29_n_0 ),
        .I1(abs_a[5]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[6]),
        .I5(\i_/digit2[0]_i_30_n_0 ),
        .O(\i_/digit2[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFF7171007100FF71)) 
    \i_/digit2[0]_i_26 
       (.I0(\digit2[3]_i_64_n_0 ),
        .I1(\i_/digit2[3]_i_65_n_0 ),
        .I2(\i_/digit2[0]_i_31_n_0 ),
        .I3(\i_/digit2[2]_i_26_n_0 ),
        .I4(\i_/digit2[3]_i_77_n_0 ),
        .I5(\digit2[0]_i_32_n_0 ),
        .O(\i_/digit2[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_27 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit2[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_28 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit2[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h6966699999999999)) 
    \i_/digit2[0]_i_3 
       (.I0(\i_/digit2[0]_i_6_n_0 ),
        .I1(\i_/digit2[0]_i_7_n_0 ),
        .I2(\digit2_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[12]),
        .I5(a_IBUF[0]),
        .O(p_0[12]));
  LUT6 #(
    .INIT(64'h6A95FFFF00006A95)) 
    \i_/digit2[0]_i_30 
       (.I0(\i_/digit2[3]_i_97_n_0 ),
        .I1(abs_a[6]),
        .I2(abs_b[3]),
        .I3(\i_/digit2[3]_i_96_n_0 ),
        .I4(\i_/digit2[3]_i_95_n_0 ),
        .I5(\i_/digit2[3]_i_94_n_0 ),
        .O(\i_/digit2[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_31 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit2[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit2[0]_i_33 
       (.I0(\i_/digit2[3]_i_116_n_0 ),
        .I1(\i_/digit3[2]_i_54_0 [3]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[8]),
        .I4(abs_b[2]),
        .I5(\i_/digit2[3]_i_115_n_0 ),
        .O(\i_/digit2[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit2[0]_i_34 
       (.I0(\i_/digit2[0]_i_38_n_0 ),
        .I1(abs_b[2]),
        .I2(a_IBUF[9]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit3[3]_i_126_0 [0]),
        .I5(\digit2[3]_i_119_0 ),
        .O(\i_/digit2[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hEAFE80A880A8EAFE)) 
    \i_/digit2[0]_i_35 
       (.I0(\i_/digit2[0]_i_40_n_0 ),
        .I1(\i_/digit2[3]_i_99_n_0 ),
        .I2(\i_/digit2[0]_i_41_n_0 ),
        .I3(\i_/digit2[3]_i_100_n_0 ),
        .I4(\i_/digit2[0]_i_42_n_0 ),
        .I5(\i_/digit2[3]_i_116_n_0 ),
        .O(\i_/digit2[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_36 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit2[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hF888080000000000)) 
    \i_/digit2[0]_i_38 
       (.I0(abs_a[9]),
        .I1(abs_b[0]),
        .I2(abs_a[10]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[8]),
        .O(\i_/digit2[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit2[0]_i_4 
       (.I0(\i_/digit2[1]_i_8_n_0 ),
        .I1(\i_/digit2[1]_i_9_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[7]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0]_0 [2]),
        .O(\i_/digit2[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_40 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit2[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_41 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit2[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h9F9FAF5F9F5F9F5F)) 
    \i_/digit2[0]_i_42 
       (.I0(abs_b[2]),
        .I1(abs_b[1]),
        .I2(abs_a[7]),
        .I3(\i_/digit2[0]_i_43_n_0 ),
        .I4(abs_a[9]),
        .I5(b_IBUF[0]),
        .O(\i_/digit2[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[0]_i_43 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit2[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0606066F066F6F6F)) 
    \i_/digit2[0]_i_5 
       (.I0(\i_/digit1[3]_i_28_n_0 ),
        .I1(\i_/digit2[0]_i_8_n_0 ),
        .I2(\i_/digit2[0]_i_9_n_0 ),
        .I3(\i_/digit1[2]_i_9_n_0 ),
        .I4(\i_/digit2[0]_i_10_n_0 ),
        .I5(\i_/digit1[2]_i_8_n_0 ),
        .O(\i_/digit2[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit2[0]_i_6 
       (.I0(abs_a[1]),
        .I1(abs_b[9]),
        .I2(\i_/digit2[0]_i_12_n_0 ),
        .I3(\i_/digit2[0]_i_13_n_0 ),
        .I4(\i_/digit2[0]_i_14_n_0 ),
        .I5(\i_/digit2[0]_i_15_n_0 ),
        .O(\i_/digit2[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6900FF69FF69FF69)) 
    \i_/digit2[0]_i_7 
       (.I0(\i_/digit2[3]_i_20_n_0 ),
        .I1(\i_/digit2[3]_i_21_n_0 ),
        .I2(\i_/digit2[0]_i_16_n_0 ),
        .I3(\i_/digit2[3]_i_15_n_0 ),
        .I4(a_IBUF[0]),
        .I5(abs_b[10]),
        .O(\i_/digit2[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h9503A903)) 
    \i_/digit2[0]_i_8 
       (.I0(abs_b[5]),
        .I1(\i_/digit2[0]_i_19_n_0 ),
        .I2(\i_/digit1[2]_i_13_n_0 ),
        .I3(abs_a[0]),
        .I4(abs_b[4]),
        .O(\i_/digit2[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit2[0]_i_9 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[7]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0]_0 [2]),
        .O(\i_/digit2[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_10 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[7]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0]_0 [2]),
        .O(\i_/digit2[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_12 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[6]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0]_0 [1]),
        .O(\i_/digit2[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \i_/digit2[1]_i_13 
       (.I0(\i_/digit2[1]_i_20_n_0 ),
        .I1(\i_/digit2[1]_i_21_n_0 ),
        .I2(abs_b[3]),
        .I3(abs_a[3]),
        .I4(\i_/digit2[1]_i_22_n_0 ),
        .I5(\i_/digit2[1]_i_23_n_0 ),
        .O(\i_/digit2[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit2[1]_i_16 
       (.I0(abs_a[4]),
        .I1(abs_b[3]),
        .I2(\i_/digit2[1]_i_26_n_0 ),
        .I3(\i_/digit2[1]_i_27_n_0 ),
        .I4(\i_/digit2[1]_i_28_n_0 ),
        .I5(\i_/digit2[1]_i_29_n_0 ),
        .O(\i_/digit2[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2BB2B22BB22BB22B)) 
    \i_/digit2[1]_i_17 
       (.I0(\i_/digit1[3]_i_35_n_0 ),
        .I1(\i_/digit1[3]_i_34_n_0 ),
        .I2(\i_/digit1[3]_i_37_n_0 ),
        .I3(\i_/digit1[3]_i_36_n_0 ),
        .I4(abs_b[3]),
        .I5(abs_a[2]),
        .O(\i_/digit2[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_18 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit2[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_19 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit2[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit2[1]_i_2 
       (.I0(\i_/digit2[1]_i_4_n_0 ),
        .I1(\i_/digit2[1]_i_5_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[9]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0] [0]),
        .O(p_0[9]));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit2[1]_i_20 
       (.I0(\i_/digit2[1]_i_30_n_0 ),
        .I1(\i_/digit2[1]_i_31_n_0 ),
        .I2(abs_b[2]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit2[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000047FF47FFFFFF)) 
    \i_/digit2[1]_i_21 
       (.I0(O[3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[4]),
        .I3(abs_b[2]),
        .I4(\i_/digit1[3]_i_42_n_0 ),
        .I5(\i_/digit1[3]_i_41_n_0 ),
        .O(\i_/digit2[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hEAFE80A880A8EAFE)) 
    \i_/digit2[1]_i_22 
       (.I0(\i_/digit2[1]_i_32_n_0 ),
        .I1(\i_/digit1[2]_i_21_n_0 ),
        .I2(\i_/digit2[1]_i_33_n_0 ),
        .I3(\i_/digit1[2]_i_22_n_0 ),
        .I4(\i_/digit1[3]_i_41_n_0 ),
        .I5(\digit2[1]_i_34_n_0 ),
        .O(\i_/digit2[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_23 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit2[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6696969999696966)) 
    \i_/digit2[1]_i_24 
       (.I0(\digit2[1]_i_34_n_0 ),
        .I1(\i_/digit1[3]_i_41_n_0 ),
        .I2(\i_/digit1[2]_i_22_n_0 ),
        .I3(\i_/digit2[1]_i_33_n_0 ),
        .I4(\i_/digit1[2]_i_21_n_0 ),
        .I5(\i_/digit2[1]_i_32_n_0 ),
        .O(\i_/digit2[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \i_/digit2[1]_i_25 
       (.I0(\i_/digit2[1]_i_35_n_0 ),
        .I1(\i_/digit1[3]_i_41_n_0 ),
        .I2(\i_/digit1[3]_i_42_n_0 ),
        .I3(\i_/digit2[1]_i_36_n_0 ),
        .I4(\i_/digit2[1]_i_30_n_0 ),
        .I5(\i_/digit2[1]_i_37_n_0 ),
        .O(\i_/digit2[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h000047FF47FFFFFF)) 
    \i_/digit2[1]_i_26 
       (.I0(\i_/digit3[2]_i_54_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[5]),
        .I3(abs_b[2]),
        .I4(\i_/digit2[1]_i_31_n_0 ),
        .I5(\i_/digit2[1]_i_30_n_0 ),
        .O(\i_/digit2[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit2[1]_i_27 
       (.I0(\i_/digit2[1]_i_38_n_0 ),
        .I1(\i_/digit3[2]_i_54_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[6]),
        .I4(abs_b[2]),
        .I5(\i_/digit2[1]_i_39_n_0 ),
        .O(\i_/digit2[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6F66666606000)) 
    \i_/digit2[1]_i_28 
       (.I0(\i_/digit2[1]_i_30_n_0 ),
        .I1(\i_/digit2[1]_i_37_n_0 ),
        .I2(\i_/digit1[3]_i_41_n_0 ),
        .I3(\i_/digit1[3]_i_42_n_0 ),
        .I4(\i_/digit2[1]_i_36_n_0 ),
        .I5(\i_/digit2[1]_i_35_n_0 ),
        .O(\i_/digit2[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_29 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit2[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit2[1]_i_3 
       (.I0(\i_/digit2[2]_i_7_n_0 ),
        .I1(\i_/digit2[2]_i_9_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[13]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0] [0]),
        .O(p_0[13]));
  LUT6 #(
    .INIT(64'h0F77F08878887888)) 
    \i_/digit2[1]_i_30 
       (.I0(abs_a[6]),
        .I1(abs_b[0]),
        .I2(abs_a[7]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[5]),
        .O(\i_/digit2[1]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h88A8800080008000)) 
    \i_/digit2[1]_i_31 
       (.I0(abs_a[4]),
        .I1(abs_b[1]),
        .I2(b_IBUF[0]),
        .I3(abs_a[6]),
        .I4(abs_b[0]),
        .I5(abs_a[5]),
        .O(\i_/digit2[1]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_32 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit2[1]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_33 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit2[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_35 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit2[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_36 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit2[1]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h5666A6AA00000000)) 
    \i_/digit2[1]_i_37 
       (.I0(abs_b[2]),
        .I1(\i_/digit2[1]_i_41_n_0 ),
        .I2(abs_a[6]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[4]),
        .O(\i_/digit2[1]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h653F6AC06AC06AC0)) 
    \i_/digit2[1]_i_38 
       (.I0(abs_a[8]),
        .I1(abs_b[1]),
        .I2(abs_a[6]),
        .I3(b_IBUF[0]),
        .I4(abs_a[7]),
        .I5(abs_b[0]),
        .O(\i_/digit2[1]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h77577FFF7FFF7FFF)) 
    \i_/digit2[1]_i_39 
       (.I0(abs_a[5]),
        .I1(abs_b[1]),
        .I2(b_IBUF[0]),
        .I3(abs_a[7]),
        .I4(abs_b[0]),
        .I5(abs_a[6]),
        .O(\i_/digit2[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hA80857F757F7A808)) 
    \i_/digit2[1]_i_4 
       (.I0(abs_a[0]),
        .I1(b_IBUF[8]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0]_0 [3]),
        .I4(\i_/digit2[1]_i_6_n_0 ),
        .I5(\i_/digit2[1]_i_7_n_0 ),
        .O(\i_/digit2[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_40 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit2[1]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[1]_i_41 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit2[1]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h69FF006900690069)) 
    \i_/digit2[1]_i_5 
       (.I0(\i_/digit2[1]_i_8_n_0 ),
        .I1(\i_/digit2[1]_i_9_n_0 ),
        .I2(\i_/digit2[1]_i_10_n_0 ),
        .I3(\i_/digit2[0]_i_5_n_0 ),
        .I4(abs_b[7]),
        .I5(a_IBUF[0]),
        .O(\i_/digit2[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFD4D400D400FFD4)) 
    \i_/digit2[1]_i_6 
       (.I0(\i_/digit1[3]_i_28_n_0 ),
        .I1(\i_/digit1[3]_i_29_n_0 ),
        .I2(\i_/digit2[1]_i_12_n_0 ),
        .I3(\i_/digit2[1]_i_10_n_0 ),
        .I4(\i_/digit2[1]_i_13_n_0 ),
        .I5(\digit2[1]_i_14_n_0 ),
        .O(\i_/digit2[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6966996996996696)) 
    \i_/digit2[1]_i_7 
       (.I0(\digit2[1]_i_15_n_0 ),
        .I1(\i_/digit2[1]_i_16_n_0 ),
        .I2(\i_/digit2[1]_i_17_n_0 ),
        .I3(\i_/digit2[1]_i_18_n_0 ),
        .I4(\i_/digit2[1]_i_13_n_0 ),
        .I5(\i_/digit2[1]_i_19_n_0 ),
        .O(\i_/digit2[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \i_/digit2[1]_i_8 
       (.I0(\i_/digit2[1]_i_13_n_0 ),
        .I1(\i_/digit2[1]_i_17_n_0 ),
        .I2(b_IBUF[6]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0]_0 [1]),
        .I5(abs_a[1]),
        .O(\i_/digit2[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8000000FFFFB800)) 
    \i_/digit2[1]_i_9 
       (.I0(\digit2_reg[0]_0 [1]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[6]),
        .I3(abs_a[0]),
        .I4(\i_/digit1[3]_i_29_n_0 ),
        .I5(\i_/digit1[3]_i_28_n_0 ),
        .O(\i_/digit2[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B8000000)) 
    \i_/digit2[2]_i_11 
       (.I0(\digit2_reg[0]_0 [3]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[8]),
        .I3(abs_a[0]),
        .I4(\i_/digit2[1]_i_6_n_0 ),
        .I5(\i_/digit2[1]_i_7_n_0 ),
        .O(\i_/digit2[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \i_/digit2[2]_i_12 
       (.I0(\i_/digit2[2]_i_14_n_0 ),
        .I1(abs_a[2]),
        .I2(abs_b[9]),
        .I3(\i_/digit2[2]_i_15_n_0 ),
        .I4(\i_/digit2[2]_i_16_n_0 ),
        .I5(\i_/digit2[2]_i_17_n_0 ),
        .O(\i_/digit2[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB22B2BB22BB22BB2)) 
    \i_/digit2[2]_i_13 
       (.I0(\i_/digit2[0]_i_14_n_0 ),
        .I1(\i_/digit2[0]_i_15_n_0 ),
        .I2(\i_/digit2[0]_i_13_n_0 ),
        .I3(\i_/digit2[0]_i_12_n_0 ),
        .I4(abs_b[9]),
        .I5(abs_a[1]),
        .O(\i_/digit2[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit2[2]_i_14 
       (.I0(abs_a[2]),
        .I1(\digit2_reg[0] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[9]),
        .I4(\i_/digit2[0]_i_21_n_0 ),
        .I5(\i_/digit2[0]_i_20_n_0 ),
        .O(\i_/digit2[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \i_/digit2[2]_i_15 
       (.I0(\i_/digit2[2]_i_18_n_0 ),
        .I1(\i_/digit2[2]_i_19_n_0 ),
        .I2(b_IBUF[9]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [0]),
        .I5(abs_a[3]),
        .O(\i_/digit2[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF7171007100FF71)) 
    \i_/digit2[2]_i_16 
       (.I0(\i_/digit2[3]_i_42_n_0 ),
        .I1(\i_/digit2[3]_i_43_n_0 ),
        .I2(\i_/digit2[2]_i_20_n_0 ),
        .I3(\i_/digit2[3]_i_76_n_0 ),
        .I4(\i_/digit2[0]_i_20_n_0 ),
        .I5(\i_/digit2[2]_i_21_n_0 ),
        .O(\i_/digit2[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[2]_i_17 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit2[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit2[2]_i_18 
       (.I0(abs_a[5]),
        .I1(abs_b[6]),
        .I2(\i_/digit2[2]_i_22_n_0 ),
        .I3(\i_/digit2[2]_i_23_n_0 ),
        .I4(\i_/digit2[2]_i_24_n_0 ),
        .I5(\i_/digit2[2]_i_25_n_0 ),
        .O(\i_/digit2[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h1771711771177117)) 
    \i_/digit2[2]_i_19 
       (.I0(\i_/digit2[0]_i_27_n_0 ),
        .I1(\i_/digit2[0]_i_26_n_0 ),
        .I2(\i_/digit2[0]_i_25_n_0 ),
        .I3(\i_/digit2[0]_i_24_n_0 ),
        .I4(abs_b[6]),
        .I5(abs_a[4]),
        .O(\i_/digit2[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit2[2]_i_2 
       (.I0(\i_/digit2[2]_i_4_n_0 ),
        .I1(\digit2_reg[0] [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[10]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit2[2]_i_5_n_0 ),
        .O(p_0[10]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[2]_i_20 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit2[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h6A56566A566A6A56)) 
    \i_/digit2[2]_i_21 
       (.I0(\i_/digit2[3]_i_87_n_0 ),
        .I1(\i_/digit2[3]_i_62_n_0 ),
        .I2(\i_/digit2[3]_i_61_n_0 ),
        .I3(\i_/digit2[3]_i_60_n_0 ),
        .I4(\i_/digit2[3]_i_59_n_0 ),
        .I5(\i_/digit2[2]_i_26_n_0 ),
        .O(\i_/digit2[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit2[2]_i_22 
       (.I0(abs_a[5]),
        .I1(\digit2_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[6]),
        .I4(\i_/digit2[0]_i_30_n_0 ),
        .I5(\digit2[0]_i_29_n_0 ),
        .O(\i_/digit2[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit2[2]_i_23 
       (.I0(\i_/digit2[2]_i_27_n_0 ),
        .I1(abs_b[5]),
        .I2(a_IBUF[7]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit3[2]_i_54_0 [2]),
        .I5(\i_/digit2[2]_i_28_n_0 ),
        .O(\i_/digit2[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBAFB20A220A2BAFB)) 
    \i_/digit2[2]_i_24 
       (.I0(\i_/digit2[3]_i_105_n_0 ),
        .I1(\i_/digit2[3]_i_77_n_0 ),
        .I2(\i_/digit2[2]_i_29_n_0 ),
        .I3(\i_/digit2[3]_i_78_n_0 ),
        .I4(\digit2[0]_i_29_n_0 ),
        .I5(\i_/digit2[2]_i_30_n_0 ),
        .O(\i_/digit2[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[2]_i_25 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit2[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[2]_i_26 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit2[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8EE8E88EE88EE88E)) 
    \i_/digit2[2]_i_27 
       (.I0(\i_/digit2[0]_i_36_n_0 ),
        .I1(\i_/digit2[0]_i_35_n_0 ),
        .I2(\i_/digit2[0]_i_34_n_0 ),
        .I3(\i_/digit2[0]_i_33_n_0 ),
        .I4(abs_b[3]),
        .I5(abs_a[7]),
        .O(\i_/digit2[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h99696966A5AAA5AA)) 
    \i_/digit2[2]_i_28 
       (.I0(\i_/digit2[2]_i_31_n_0 ),
        .I1(abs_b[4]),
        .I2(\i_/digit2[0]_i_34_n_0 ),
        .I3(\i_/digit2[0]_i_33_n_0 ),
        .I4(abs_b[3]),
        .I5(abs_a[7]),
        .O(\i_/digit2[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[2]_i_29 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit2[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hA69965AA59999AAA)) 
    \i_/digit2[2]_i_3 
       (.I0(\i_/digit2[2]_i_6_n_0 ),
        .I1(\i_/digit2[2]_i_7_n_0 ),
        .I2(abs_b[12]),
        .I3(a_IBUF[0]),
        .I4(\i_/digit2[2]_i_9_n_0 ),
        .I5(abs_b[13]),
        .O(p_0[14]));
  LUT5 #(
    .INIT(32'h8C1940D5)) 
    \i_/digit2[2]_i_30 
       (.I0(\i_/digit2[2]_i_32_n_0 ),
        .I1(abs_a[5]),
        .I2(abs_b[4]),
        .I3(\i_/digit2[3]_i_94_n_0 ),
        .I4(abs_b[5]),
        .O(\i_/digit2[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hA665599A599AA665)) 
    \i_/digit2[2]_i_31 
       (.I0(\i_/digit2[2]_i_33_n_0 ),
        .I1(\digit2[3]_i_119_0 ),
        .I2(\i_/digit2[2]_i_34_n_0 ),
        .I3(\i_/digit2[0]_i_38_n_0 ),
        .I4(\i_/digit2[2]_i_35_n_0 ),
        .I5(\i_/digit2[2]_i_36_n_0 ),
        .O(\i_/digit2[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \i_/digit2[2]_i_32 
       (.I0(\i_/digit2[3]_i_116_n_0 ),
        .I1(\i_/digit2[0]_i_42_n_0 ),
        .I2(\i_/digit2[0]_i_40_n_0 ),
        .I3(\i_/digit2[3]_i_99_n_0 ),
        .I4(\i_/digit2[0]_i_41_n_0 ),
        .I5(\i_/digit2[3]_i_100_n_0 ),
        .O(\i_/digit2[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[2]_i_33 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit2[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[2]_i_34 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit2[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h4777B88878887888)) 
    \i_/digit2[2]_i_35 
       (.I0(abs_b[1]),
        .I1(abs_a[10]),
        .I2(abs_a[11]),
        .I3(abs_b[0]),
        .I4(abs_a[12]),
        .I5(b_IBUF[0]),
        .O(\i_/digit2[2]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h606050A060A060A0)) 
    \i_/digit2[2]_i_36 
       (.I0(abs_b[2]),
        .I1(abs_b[1]),
        .I2(abs_a[9]),
        .I3(\i_/digit2[2]_i_37_n_0 ),
        .I4(abs_a[11]),
        .I5(b_IBUF[0]),
        .O(\i_/digit2[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[2]_i_37 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit2[2]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit2[2]_i_4 
       (.I0(\i_/digit2[3]_i_22_n_0 ),
        .I1(abs_a[0]),
        .I2(b_IBUF[9]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [0]),
        .I5(\i_/digit2[2]_i_11_n_0 ),
        .O(\i_/digit2[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAAAAA8A800000)) 
    \i_/digit2[2]_i_5 
       (.I0(\i_/digit2[1]_i_4_n_0 ),
        .I1(\digit2_reg[0] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[9]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit2[1]_i_5_n_0 ),
        .O(\i_/digit2[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit2[2]_i_6 
       (.I0(\i_/digit2[3]_i_38_n_0 ),
        .I1(\i_/digit2[3]_i_39_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[13]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0] [0]),
        .O(\i_/digit2[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit2[2]_i_7 
       (.I0(\i_/digit2[2]_i_12_n_0 ),
        .I1(\i_/digit2[2]_i_13_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[12]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0] [3]),
        .O(\i_/digit2[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB22222222222)) 
    \i_/digit2[2]_i_9 
       (.I0(\i_/digit2[0]_i_6_n_0 ),
        .I1(\i_/digit2[0]_i_7_n_0 ),
        .I2(\digit2_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[12]),
        .I5(a_IBUF[0]),
        .O(\i_/digit2[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hD888877727778777)) 
    \i_/digit2[3]_i_100 
       (.I0(b_IBUF[0]),
        .I1(abs_a[9]),
        .I2(abs_b[0]),
        .I3(abs_a[8]),
        .I4(abs_a[7]),
        .I5(abs_b[1]),
        .O(\i_/digit2[3]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h22022AAA88A88000)) 
    \i_/digit2[3]_i_101 
       (.I0(abs_a[5]),
        .I1(abs_b[1]),
        .I2(b_IBUF[0]),
        .I3(abs_a[7]),
        .I4(\i_/digit2[3]_i_117_n_0 ),
        .I5(abs_b[2]),
        .O(\i_/digit2[3]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_102 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit2[3]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_103 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit2[3]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h6999666996669996)) 
    \i_/digit2[3]_i_104 
       (.I0(\i_/digit2[3]_i_118_n_0 ),
        .I1(\digit2[3]_i_119_n_0 ),
        .I2(\i_/digit2[2]_i_27_n_0 ),
        .I3(\i_/digit2[3]_i_120_n_0 ),
        .I4(\i_/digit2[2]_i_28_n_0 ),
        .I5(\i_/digit2[3]_i_121_n_0 ),
        .O(\i_/digit2[3]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_105 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit2[3]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h80A8EAFEEAFE80A8)) 
    \i_/digit2[3]_i_106 
       (.I0(\i_/digit2[3]_i_121_n_0 ),
        .I1(\i_/digit2[2]_i_27_n_0 ),
        .I2(\i_/digit2[3]_i_120_n_0 ),
        .I3(\i_/digit2[2]_i_28_n_0 ),
        .I4(\digit2[3]_i_119_n_0 ),
        .I5(\i_/digit2[3]_i_118_n_0 ),
        .O(\i_/digit2[3]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_107 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit2[3]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB22222222222)) 
    \i_/digit2[3]_i_108 
       (.I0(\i_/digit2[3]_i_118_n_0 ),
        .I1(\i_/digit2[3]_i_122_n_0 ),
        .I2(\i_/digit3[2]_i_54_0 [3]),
        .I3(a_IBUF[31]),
        .I4(a_IBUF[8]),
        .I5(abs_b[5]),
        .O(\i_/digit2[3]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit2[3]_i_109 
       (.I0(\i_/digit2[3]_i_123_n_0 ),
        .I1(\i_/digit2[3]_i_124_n_0 ),
        .I2(abs_b[5]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit2[3]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_110 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit2[3]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_111 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit2[3]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_112 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit2[3]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_113 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit2[3]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h4848444848888888)) 
    \i_/digit2[3]_i_114 
       (.I0(abs_b[2]),
        .I1(abs_a[6]),
        .I2(abs_b[1]),
        .I3(b_IBUF[0]),
        .I4(abs_a[8]),
        .I5(\i_/digit2[3]_i_125_n_0 ),
        .O(\i_/digit2[3]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h0777FFFFDFFFFFFF)) 
    \i_/digit2[3]_i_115 
       (.I0(b_IBUF[0]),
        .I1(abs_a[9]),
        .I2(abs_b[0]),
        .I3(abs_a[8]),
        .I4(abs_a[7]),
        .I5(abs_b[1]),
        .O(\i_/digit2[3]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h653F6AC06AC06AC0)) 
    \i_/digit2[3]_i_116 
       (.I0(abs_a[10]),
        .I1(abs_b[1]),
        .I2(abs_a[8]),
        .I3(b_IBUF[0]),
        .I4(abs_a[9]),
        .I5(abs_b[0]),
        .O(\i_/digit2[3]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_117 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit2[3]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h66696999A555A555)) 
    \i_/digit2[3]_i_118 
       (.I0(\i_/digit2[3]_i_126_n_0 ),
        .I1(abs_b[4]),
        .I2(\i_/digit2[3]_i_127_n_0 ),
        .I3(\i_/digit2[3]_i_128_n_0 ),
        .I4(abs_b[3]),
        .I5(abs_a[8]),
        .O(\i_/digit2[3]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_120 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit2[3]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_121 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit2[3]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h2BFFFFFF00BB2BBB)) 
    \i_/digit2[3]_i_122 
       (.I0(\i_/digit2[0]_i_34_n_0 ),
        .I1(\i_/digit2[0]_i_33_n_0 ),
        .I2(abs_b[3]),
        .I3(abs_a[7]),
        .I4(abs_b[4]),
        .I5(\i_/digit2[2]_i_31_n_0 ),
        .O(\i_/digit2[3]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    \i_/digit2[3]_i_123 
       (.I0(\i_/digit2[3]_i_130_n_0 ),
        .I1(\i_/digit2[3]_i_131_n_0 ),
        .I2(\i_/digit2[3]_i_132_n_0 ),
        .I3(\i_/digit2[3]_i_133_n_0 ),
        .I4(abs_b[4]),
        .I5(abs_a[9]),
        .O(\i_/digit2[3]_i_123_n_0 ));
  LUT6 #(
    .INIT(64'hA8800000FEEAC0C0)) 
    \i_/digit2[3]_i_124 
       (.I0(abs_b[4]),
        .I1(\i_/digit2[3]_i_127_n_0 ),
        .I2(\i_/digit2[3]_i_128_n_0 ),
        .I3(abs_b[3]),
        .I4(abs_a[8]),
        .I5(\i_/digit2[3]_i_126_n_0 ),
        .O(\i_/digit2[3]_i_124_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_125 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit2[3]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h9996966666696999)) 
    \i_/digit2[3]_i_126 
       (.I0(\i_/digit2[3]_i_134_n_0 ),
        .I1(\digit2[3]_i_135_n_0 ),
        .I2(\i_/digit2[3]_i_136_n_0 ),
        .I3(\i_/digit2[3]_i_137_n_0 ),
        .I4(\i_/digit2[2]_i_35_n_0 ),
        .I5(\i_/digit2[3]_i_138_n_0 ),
        .O(\i_/digit2[3]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit2[3]_i_127 
       (.I0(\i_/digit2[2]_i_35_n_0 ),
        .I1(\i_/digit2[3]_i_137_n_0 ),
        .I2(abs_b[2]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit2[3]_i_127_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit2[3]_i_128 
       (.I0(\i_/digit2[0]_i_38_n_0 ),
        .I1(\i_/digit3[3]_i_126_0 [0]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[9]),
        .I4(abs_b[2]),
        .I5(\digit2[3]_i_119_0 ),
        .O(\i_/digit2[3]_i_128_n_0 ));
  LUT6 #(
    .INIT(64'h04455DDF5DDF0445)) 
    \i_/digit2[3]_i_129 
       (.I0(\i_/digit2[3]_i_139_n_0 ),
        .I1(\i_/digit2[3]_i_115_n_0 ),
        .I2(\i_/digit2[3]_i_140_n_0 ),
        .I3(\i_/digit2[3]_i_116_n_0 ),
        .I4(\i_/digit2[3]_i_141_n_0 ),
        .I5(\digit2[3]_i_119_0 ),
        .O(\i_/digit2[3]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_130 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit2[3]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB22222222222)) 
    \i_/digit2[3]_i_131 
       (.I0(\i_/digit2[3]_i_134_n_0 ),
        .I1(\i_/digit2[3]_i_142_n_0 ),
        .I2(\i_/digit3[3]_i_126_0 [2]),
        .I3(a_IBUF[31]),
        .I4(a_IBUF[11]),
        .I5(abs_b[2]),
        .O(\i_/digit2[3]_i_131_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit2[3]_i_132 
       (.I0(\i_/digit2[3]_i_143_n_0 ),
        .I1(abs_b[2]),
        .I2(a_IBUF[12]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit3[3]_i_126_0 [3]),
        .I5(\i_/digit3[2]_i_71_0 ),
        .O(\i_/digit2[3]_i_132_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6F66666606000)) 
    \i_/digit2[3]_i_133 
       (.I0(\digit2[3]_i_135_n_0 ),
        .I1(\i_/digit2[3]_i_134_n_0 ),
        .I2(\i_/digit2[2]_i_35_n_0 ),
        .I3(\i_/digit2[3]_i_137_n_0 ),
        .I4(\i_/digit2[3]_i_136_n_0 ),
        .I5(\i_/digit2[3]_i_138_n_0 ),
        .O(\i_/digit2[3]_i_133_n_0 ));
  LUT6 #(
    .INIT(64'h653F6AC06AC06AC0)) 
    \i_/digit2[3]_i_134 
       (.I0(abs_a[13]),
        .I1(abs_b[1]),
        .I2(abs_a[11]),
        .I3(b_IBUF[0]),
        .I4(abs_a[12]),
        .I5(abs_b[0]),
        .O(\i_/digit2[3]_i_134_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_136 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit2[3]_i_136_n_0 ));
  LUT6 #(
    .INIT(64'hF888000020000000)) 
    \i_/digit2[3]_i_137 
       (.I0(b_IBUF[0]),
        .I1(abs_a[11]),
        .I2(abs_b[0]),
        .I3(abs_a[10]),
        .I4(abs_a[9]),
        .I5(abs_b[1]),
        .O(\i_/digit2[3]_i_137_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_138 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit2[3]_i_138_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_139 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit2[3]_i_139_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit2[3]_i_14 
       (.I0(\i_/digit2[3]_i_20_n_0 ),
        .I1(\i_/digit2[3]_i_21_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[10]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0] [1]),
        .O(\i_/digit2[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_140 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit2[3]_i_140_n_0 ));
  LUT6 #(
    .INIT(64'h4848444848888888)) 
    \i_/digit2[3]_i_141 
       (.I0(abs_b[2]),
        .I1(abs_a[8]),
        .I2(abs_b[1]),
        .I3(b_IBUF[0]),
        .I4(abs_a[10]),
        .I5(\i_/digit2[3]_i_146_n_0 ),
        .O(\i_/digit2[3]_i_141_n_0 ));
  LUT6 #(
    .INIT(64'h0777FFFFDFFFFFFF)) 
    \i_/digit2[3]_i_142 
       (.I0(b_IBUF[0]),
        .I1(abs_a[12]),
        .I2(abs_b[0]),
        .I3(abs_a[11]),
        .I4(abs_a[10]),
        .I5(abs_b[1]),
        .O(\i_/digit2[3]_i_142_n_0 ));
  LUT6 #(
    .INIT(64'hF888080000000000)) 
    \i_/digit2[3]_i_143 
       (.I0(abs_a[12]),
        .I1(abs_b[0]),
        .I2(abs_a[13]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[11]),
        .O(\i_/digit2[3]_i_143_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_145 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit2[3]_i_145_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_146 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit2[3]_i_146_n_0 ));
  LUT6 #(
    .INIT(64'h0606066F066F6F6F)) 
    \i_/digit2[3]_i_15 
       (.I0(\i_/digit2[3]_i_22_n_0 ),
        .I1(\i_/digit2[3]_i_23_n_0 ),
        .I2(\i_/digit2[3]_i_24_n_0 ),
        .I3(\i_/digit2[1]_i_5_n_0 ),
        .I4(\i_/digit2[3]_i_25_n_0 ),
        .I5(\i_/digit2[1]_i_4_n_0 ),
        .O(\i_/digit2[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \i_/digit2[3]_i_17 
       (.I0(\i_/digit2[3]_i_30_n_0 ),
        .I1(\i_/digit2[3]_i_31_n_0 ),
        .I2(abs_a[1]),
        .I3(abs_b[12]),
        .I4(\i_/digit2[3]_i_32_n_0 ),
        .I5(\i_/digit2[3]_i_33_n_0 ),
        .O(\i_/digit2[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h96FF009600960096)) 
    \i_/digit2[3]_i_19 
       (.I0(\i_/digit2[3]_i_38_n_0 ),
        .I1(\i_/digit2[3]_i_39_n_0 ),
        .I2(\i_/digit2[3]_i_40_n_0 ),
        .I3(\i_/digit2[3]_i_41_n_0 ),
        .I4(abs_b[13]),
        .I5(a_IBUF[0]),
        .O(\i_/digit2[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit2[3]_i_20 
       (.I0(\i_/digit2[3]_i_42_n_0 ),
        .I1(\i_/digit2[3]_i_43_n_0 ),
        .I2(b_IBUF[9]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [0]),
        .I5(abs_a[1]),
        .O(\i_/digit2[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit2[3]_i_21 
       (.I0(\i_/digit2[2]_i_11_n_0 ),
        .I1(\digit2_reg[0] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[9]),
        .I4(abs_a[0]),
        .I5(\i_/digit2[3]_i_22_n_0 ),
        .O(\i_/digit2[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit2[3]_i_22 
       (.I0(\i_/digit2[3]_i_44_n_0 ),
        .I1(abs_a[2]),
        .I2(abs_b[6]),
        .I3(\i_/digit2[3]_i_46_n_0 ),
        .I4(\i_/digit2[3]_i_47_n_0 ),
        .I5(\i_/digit2[3]_i_48_n_0 ),
        .O(\i_/digit2[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h17E88888)) 
    \i_/digit2[3]_i_23 
       (.I0(\i_/digit2[1]_i_7_n_0 ),
        .I1(\i_/digit2[1]_i_6_n_0 ),
        .I2(abs_b[7]),
        .I3(abs_b[8]),
        .I4(abs_a[0]),
        .O(\i_/digit2[3]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit2[3]_i_24 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[10]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0] [1]),
        .O(\i_/digit2[3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit2[3]_i_25 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[9]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0] [0]),
        .O(\i_/digit2[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0060606666F6F6FF)) 
    \i_/digit2[3]_i_30 
       (.I0(\i_/digit2[3]_i_50_n_0 ),
        .I1(\digit2[3]_i_51_n_0 ),
        .I2(\i_/digit2[2]_i_13_n_0 ),
        .I3(\i_/digit2[3]_i_52_n_0 ),
        .I4(\i_/digit2[2]_i_12_n_0 ),
        .I5(\i_/digit2[3]_i_40_n_0 ),
        .O(\i_/digit2[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_31 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[14]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0] [1]),
        .O(\i_/digit2[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit2[3]_i_32 
       (.I0(abs_a[1]),
        .I1(\digit2_reg[0] [3]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[12]),
        .I4(\i_/digit2[3]_i_53_n_0 ),
        .I5(\i_/digit2[3]_i_50_n_0 ),
        .O(\i_/digit2[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \i_/digit2[3]_i_33 
       (.I0(\i_/digit2[3]_i_54_n_0 ),
        .I1(\i_/digit2[3]_i_55_n_0 ),
        .I2(b_IBUF[12]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [3]),
        .I5(abs_a[2]),
        .O(\i_/digit2[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \i_/digit2[3]_i_38 
       (.I0(\i_/digit2[3]_i_50_n_0 ),
        .I1(\i_/digit2[3]_i_53_n_0 ),
        .I2(b_IBUF[12]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [3]),
        .I5(abs_a[1]),
        .O(\i_/digit2[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h202AAAAABABFFFFF)) 
    \i_/digit2[3]_i_39 
       (.I0(\i_/digit2[2]_i_13_n_0 ),
        .I1(\digit2_reg[0] [3]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[12]),
        .I4(abs_a[0]),
        .I5(\i_/digit2[2]_i_12_n_0 ),
        .O(\i_/digit2[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit2[3]_i_4 
       (.I0(\i_/digit2[3]_i_14_n_0 ),
        .I1(\i_/digit2[3]_i_15_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[11]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0] [2]),
        .O(p_0[11]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_40 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[13]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0] [0]),
        .O(\i_/digit2[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h066F06066F6F066F)) 
    \i_/digit2[3]_i_41 
       (.I0(\i_/digit2[2]_i_12_n_0 ),
        .I1(\i_/digit2[3]_i_56_n_0 ),
        .I2(\i_/digit2[3]_i_57_n_0 ),
        .I3(\i_/digit2[3]_i_58_n_0 ),
        .I4(\i_/digit2[0]_i_7_n_0 ),
        .I5(\i_/digit2[0]_i_6_n_0 ),
        .O(\i_/digit2[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit2[3]_i_42 
       (.I0(abs_a[3]),
        .I1(abs_b[6]),
        .I2(\i_/digit2[3]_i_59_n_0 ),
        .I3(\i_/digit2[3]_i_60_n_0 ),
        .I4(\i_/digit2[3]_i_61_n_0 ),
        .I5(\i_/digit2[3]_i_62_n_0 ),
        .O(\i_/digit2[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h1771717171171717)) 
    \i_/digit2[3]_i_43 
       (.I0(\i_/digit2[3]_i_48_n_0 ),
        .I1(\i_/digit2[3]_i_47_n_0 ),
        .I2(\i_/digit2[3]_i_46_n_0 ),
        .I3(abs_b[6]),
        .I4(abs_a[2]),
        .I5(\i_/digit2[3]_i_44_n_0 ),
        .O(\i_/digit2[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0000757F757FFFFF)) 
    \i_/digit2[3]_i_44 
       (.I0(abs_a[2]),
        .I1(\digit2_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[6]),
        .I4(\i_/digit2[3]_i_63_n_0 ),
        .I5(\i_/digit2[1]_i_16_n_0 ),
        .O(\i_/digit2[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h6A666AAA95999555)) 
    \i_/digit2[3]_i_46 
       (.I0(\digit2[3]_i_64_n_0 ),
        .I1(abs_a[3]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[6]),
        .I5(\i_/digit2[3]_i_65_n_0 ),
        .O(\i_/digit2[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hBAFB20A220A2BAFB)) 
    \i_/digit2[3]_i_47 
       (.I0(\i_/digit2[1]_i_19_n_0 ),
        .I1(\i_/digit2[1]_i_13_n_0 ),
        .I2(\i_/digit2[1]_i_18_n_0 ),
        .I3(\i_/digit2[1]_i_17_n_0 ),
        .I4(\i_/digit2[1]_i_16_n_0 ),
        .I5(\digit2[1]_i_15_n_0 ),
        .O(\i_/digit2[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_48 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit2[3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit2[3]_i_5 
       (.I0(\i_/digit2[3]_i_17_n_0 ),
        .I1(\digit3_reg[0] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[15]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit2[3]_i_19_n_0 ),
        .O(p_0[15]));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit2[3]_i_50 
       (.I0(abs_a[3]),
        .I1(abs_b[9]),
        .I2(\i_/digit2[3]_i_66_n_0 ),
        .I3(\digit2[3]_i_67_n_0 ),
        .I4(\i_/digit2[3]_i_68_n_0 ),
        .I5(\i_/digit2[3]_i_69_n_0 ),
        .O(\i_/digit2[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_52 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[12]),
        .I4(b_IBUF[31]),
        .I5(\digit2_reg[0] [3]),
        .O(\i_/digit2[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h1771717171171717)) 
    \i_/digit2[3]_i_53 
       (.I0(\i_/digit2[2]_i_17_n_0 ),
        .I1(\i_/digit2[2]_i_16_n_0 ),
        .I2(\i_/digit2[2]_i_15_n_0 ),
        .I3(abs_b[9]),
        .I4(abs_a[2]),
        .I5(\i_/digit2[2]_i_14_n_0 ),
        .O(\i_/digit2[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit2[3]_i_54 
       (.I0(abs_a[4]),
        .I1(abs_b[9]),
        .I2(\i_/digit2[3]_i_72_n_0 ),
        .I3(\i_/digit2[3]_i_73_n_0 ),
        .I4(\i_/digit2[3]_i_74_n_0 ),
        .I5(\i_/digit2[3]_i_75_n_0 ),
        .O(\i_/digit2[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hB22B2BB22BB22BB2)) 
    \i_/digit2[3]_i_55 
       (.I0(\i_/digit2[3]_i_69_n_0 ),
        .I1(\i_/digit2[3]_i_68_n_0 ),
        .I2(\digit2[3]_i_67_n_0 ),
        .I3(\i_/digit2[3]_i_66_n_0 ),
        .I4(abs_b[9]),
        .I5(abs_a[3]),
        .O(\i_/digit2[3]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h69965555AAAA6996)) 
    \i_/digit2[3]_i_56 
       (.I0(\i_/digit2[3]_i_52_n_0 ),
        .I1(\i_/digit2[3]_i_76_n_0 ),
        .I2(\i_/digit2[0]_i_12_n_0 ),
        .I3(\i_/digit2[0]_i_13_n_0 ),
        .I4(\i_/digit2[0]_i_15_n_0 ),
        .I5(\i_/digit2[0]_i_14_n_0 ),
        .O(\i_/digit2[3]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit2[3]_i_57 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[13]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0] [0]),
        .O(\i_/digit2[3]_i_57_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit2[3]_i_58 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[12]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0] [3]),
        .O(\i_/digit2[3]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit2[3]_i_59 
       (.I0(abs_a[3]),
        .I1(\digit2_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[6]),
        .I4(\i_/digit2[3]_i_65_n_0 ),
        .I5(\digit2[3]_i_64_n_0 ),
        .O(\i_/digit2[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h56A6AAAAA9595555)) 
    \i_/digit2[3]_i_60 
       (.I0(\i_/digit2[3]_i_77_n_0 ),
        .I1(b_IBUF[6]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0]_0 [1]),
        .I4(abs_a[4]),
        .I5(\i_/digit2[3]_i_78_n_0 ),
        .O(\i_/digit2[3]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hFEEAA880A880FEEA)) 
    \i_/digit2[3]_i_61 
       (.I0(\i_/digit2[0]_i_28_n_0 ),
        .I1(\i_/digit2[1]_i_16_n_0 ),
        .I2(\i_/digit2[3]_i_63_n_0 ),
        .I3(\i_/digit2[3]_i_79_n_0 ),
        .I4(\digit2[3]_i_64_n_0 ),
        .I5(\i_/digit2[3]_i_80_n_0 ),
        .O(\i_/digit2[3]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_62 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit2[3]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h8EEEE888E8888EEE)) 
    \i_/digit2[3]_i_63 
       (.I0(\i_/digit2[1]_i_23_n_0 ),
        .I1(\i_/digit2[1]_i_22_n_0 ),
        .I2(abs_a[3]),
        .I3(abs_b[3]),
        .I4(\i_/digit2[1]_i_21_n_0 ),
        .I5(\i_/digit2[1]_i_20_n_0 ),
        .O(\i_/digit2[3]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h7117177117711771)) 
    \i_/digit2[3]_i_65 
       (.I0(\i_/digit2[1]_i_29_n_0 ),
        .I1(\i_/digit2[1]_i_28_n_0 ),
        .I2(\i_/digit2[1]_i_27_n_0 ),
        .I3(\i_/digit2[1]_i_26_n_0 ),
        .I4(abs_b[3]),
        .I5(abs_a[4]),
        .O(\i_/digit2[3]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit2[3]_i_66 
       (.I0(\i_/digit2[2]_i_19_n_0 ),
        .I1(abs_a[3]),
        .I2(\digit2_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[9]),
        .I5(\i_/digit2[2]_i_18_n_0 ),
        .O(\i_/digit2[3]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h8EFF008E008E8EFF)) 
    \i_/digit2[3]_i_68 
       (.I0(\i_/digit2[0]_i_20_n_0 ),
        .I1(\i_/digit2[0]_i_21_n_0 ),
        .I2(\i_/digit2[3]_i_87_n_0 ),
        .I3(\i_/digit2[3]_i_71_n_0 ),
        .I4(\i_/digit2[2]_i_18_n_0 ),
        .I5(\digit2[3]_i_88_n_0 ),
        .O(\i_/digit2[3]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_69 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit2[3]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_70 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit2[3]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_71 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit2[3]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8A808A800000)) 
    \i_/digit2[3]_i_72 
       (.I0(abs_a[4]),
        .I1(\digit2_reg[0] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[9]),
        .I4(\i_/digit2[3]_i_86_n_0 ),
        .I5(\i_/digit2[3]_i_85_n_0 ),
        .O(\i_/digit2[3]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h6A666AAA95999555)) 
    \i_/digit2[3]_i_73 
       (.I0(\i_/digit2[3]_i_89_n_0 ),
        .I1(abs_a[5]),
        .I2(\digit2_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[9]),
        .I5(\i_/digit2[3]_i_90_n_0 ),
        .O(\i_/digit2[3]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_74 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit2[3]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h0090909999F9F9FF)) 
    \i_/digit2[3]_i_75 
       (.I0(\i_/digit2[3]_i_85_n_0 ),
        .I1(\i_/digit2[3]_i_91_n_0 ),
        .I2(\i_/digit2[2]_i_19_n_0 ),
        .I3(\i_/digit2[3]_i_92_n_0 ),
        .I4(\i_/digit2[2]_i_18_n_0 ),
        .I5(\i_/digit2[3]_i_93_n_0 ),
        .O(\i_/digit2[3]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_76 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit2[3]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit2[3]_i_77 
       (.I0(\i_/digit2[3]_i_94_n_0 ),
        .I1(\i_/digit2[3]_i_95_n_0 ),
        .I2(\i_/digit2[3]_i_96_n_0 ),
        .I3(abs_b[3]),
        .I4(abs_a[6]),
        .I5(\i_/digit2[3]_i_97_n_0 ),
        .O(\i_/digit2[3]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h000096669666FFFF)) 
    \i_/digit2[3]_i_78 
       (.I0(\i_/digit2[3]_i_82_n_0 ),
        .I1(\i_/digit2[3]_i_81_n_0 ),
        .I2(abs_b[3]),
        .I3(abs_a[5]),
        .I4(\i_/digit2[3]_i_83_n_0 ),
        .I5(\i_/digit2[3]_i_84_n_0 ),
        .O(\i_/digit2[3]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_79 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit2[3]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'h522AF880)) 
    \i_/digit2[3]_i_80 
       (.I0(abs_a[3]),
        .I1(abs_b[4]),
        .I2(\i_/digit2[1]_i_28_n_0 ),
        .I3(\i_/digit2[3]_i_98_n_0 ),
        .I4(abs_b[5]),
        .O(\i_/digit2[3]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFF0000B800)) 
    \i_/digit2[3]_i_81 
       (.I0(\i_/digit3[2]_i_54_0 [1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[6]),
        .I3(abs_b[2]),
        .I4(\i_/digit2[1]_i_39_n_0 ),
        .I5(\i_/digit2[1]_i_38_n_0 ),
        .O(\i_/digit2[3]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit2[3]_i_82 
       (.I0(\i_/digit2[3]_i_99_n_0 ),
        .I1(abs_b[2]),
        .I2(a_IBUF[7]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit3[2]_i_54_0 [2]),
        .I5(\i_/digit2[3]_i_100_n_0 ),
        .O(\i_/digit2[3]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6F66666606000)) 
    \i_/digit2[3]_i_83 
       (.I0(\i_/digit2[1]_i_38_n_0 ),
        .I1(\i_/digit2[3]_i_101_n_0 ),
        .I2(\i_/digit2[1]_i_30_n_0 ),
        .I3(\i_/digit2[1]_i_31_n_0 ),
        .I4(\i_/digit2[3]_i_102_n_0 ),
        .I5(\i_/digit2[3]_i_103_n_0 ),
        .O(\i_/digit2[3]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_84 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit2[3]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h99696966A5AAA5AA)) 
    \i_/digit2[3]_i_85 
       (.I0(\i_/digit2[3]_i_104_n_0 ),
        .I1(abs_b[7]),
        .I2(\i_/digit2[2]_i_23_n_0 ),
        .I3(\i_/digit2[2]_i_22_n_0 ),
        .I4(abs_b[6]),
        .I5(abs_a[5]),
        .O(\i_/digit2[3]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h8EE8E88EE88EE88E)) 
    \i_/digit2[3]_i_86 
       (.I0(\i_/digit2[2]_i_25_n_0 ),
        .I1(\i_/digit2[2]_i_24_n_0 ),
        .I2(\i_/digit2[2]_i_23_n_0 ),
        .I3(\i_/digit2[2]_i_22_n_0 ),
        .I4(abs_b[6]),
        .I5(abs_a[5]),
        .O(\i_/digit2[3]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_87 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit2[3]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit2[3]_i_89 
       (.I0(abs_b[7]),
        .I1(abs_a[6]),
        .I2(\i_/digit2[3]_i_106_n_0 ),
        .I3(\i_/digit2[3]_i_107_n_0 ),
        .I4(\i_/digit2[3]_i_108_n_0 ),
        .I5(\i_/digit2[3]_i_109_n_0 ),
        .O(\i_/digit2[3]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h00BB2BBB2BFFFFFF)) 
    \i_/digit2[3]_i_90 
       (.I0(\i_/digit2[2]_i_23_n_0 ),
        .I1(\i_/digit2[2]_i_22_n_0 ),
        .I2(abs_b[6]),
        .I3(abs_a[5]),
        .I4(abs_b[7]),
        .I5(\i_/digit2[3]_i_104_n_0 ),
        .O(\i_/digit2[3]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h555596699669AAAA)) 
    \i_/digit2[3]_i_91 
       (.I0(\i_/digit2[3]_i_110_n_0 ),
        .I1(\i_/digit2[3]_i_111_n_0 ),
        .I2(\i_/digit2[2]_i_22_n_0 ),
        .I3(\i_/digit2[2]_i_23_n_0 ),
        .I4(\i_/digit2[2]_i_24_n_0 ),
        .I5(\i_/digit2[2]_i_25_n_0 ),
        .O(\i_/digit2[3]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_92 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit2[3]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_93 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit2[3]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h105175F775F71051)) 
    \i_/digit2[3]_i_94 
       (.I0(\i_/digit2[3]_i_112_n_0 ),
        .I1(\i_/digit2[1]_i_38_n_0 ),
        .I2(\i_/digit2[1]_i_39_n_0 ),
        .I3(\i_/digit2[3]_i_113_n_0 ),
        .I4(\i_/digit2[3]_i_114_n_0 ),
        .I5(\i_/digit2[3]_i_100_n_0 ),
        .O(\i_/digit2[3]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit2[3]_i_95 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit2[3]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h202AAAAABABFFFFF)) 
    \i_/digit2[3]_i_96 
       (.I0(\i_/digit2[3]_i_100_n_0 ),
        .I1(\i_/digit3[2]_i_54_0 [2]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[7]),
        .I4(abs_b[2]),
        .I5(\i_/digit2[3]_i_99_n_0 ),
        .O(\i_/digit2[3]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit2[3]_i_97 
       (.I0(\i_/digit2[3]_i_115_n_0 ),
        .I1(abs_b[2]),
        .I2(a_IBUF[8]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit3[2]_i_54_0 [3]),
        .I5(\i_/digit2[3]_i_116_n_0 ),
        .O(\i_/digit2[3]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h6669699999969666)) 
    \i_/digit2[3]_i_98 
       (.I0(\i_/digit2[3]_i_101_n_0 ),
        .I1(\i_/digit2[1]_i_38_n_0 ),
        .I2(\i_/digit2[3]_i_102_n_0 ),
        .I3(\i_/digit2[1]_i_31_n_0 ),
        .I4(\i_/digit2[1]_i_30_n_0 ),
        .I5(\i_/digit2[3]_i_103_n_0 ),
        .O(\i_/digit2[3]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hF888080000000000)) 
    \i_/digit2[3]_i_99 
       (.I0(abs_a[7]),
        .I1(abs_b[0]),
        .I2(abs_a[8]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[6]),
        .O(\i_/digit2[3]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit3[0]_i_2 
       (.I0(\i_/digit3[1]_i_5_n_0 ),
        .I1(\i_/digit3[1]_i_7_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[16]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0] [3]),
        .O(p_0[16]));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit3[0]_i_3 
       (.I0(\i_/digit3[0]_i_4_n_0 ),
        .I1(\i_/digit3[0]_i_5_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[20]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0]_0 [3]),
        .O(p_0[20]));
  LUT6 #(
    .INIT(64'h47FFB800B80047FF)) 
    \i_/digit3[0]_i_4 
       (.I0(\digit3_reg[0]_0 [2]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[19]),
        .I3(abs_a[0]),
        .I4(\i_/digit3[1]_i_19_n_0 ),
        .I5(\i_/digit3[1]_i_20_n_0 ),
        .O(\i_/digit3[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0606066F066F6F6F)) 
    \i_/digit3[0]_i_5 
       (.I0(\i_/digit3[3]_i_20_n_0 ),
        .I1(\digit3[0]_i_6_n_0 ),
        .I2(\i_/digit3[0]_i_7_n_0 ),
        .I3(\i_/digit3[2]_i_5_n_0 ),
        .I4(\i_/digit3[0]_i_8_n_0 ),
        .I5(\i_/digit3[2]_i_4_n_0 ),
        .O(\i_/digit3[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit3[0]_i_7 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[19]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0]_0 [2]),
        .O(\i_/digit3[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit3[0]_i_8 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[18]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0]_0 [1]),
        .O(\i_/digit3[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[0]_i_9 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit3[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h69FFFFFF00696969)) 
    \i_/digit3[1]_i_10 
       (.I0(\i_/digit3[1]_i_18_n_0 ),
        .I1(\i_/digit3[1]_i_19_n_0 ),
        .I2(\i_/digit3[1]_i_20_n_0 ),
        .I3(abs_b[19]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit3[0]_i_5_n_0 ),
        .O(\i_/digit3[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_100 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit3[1]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h060066066F66FF6F)) 
    \i_/digit3[1]_i_101 
       (.I0(\i_/digit3[3]_i_137_n_0 ),
        .I1(\i_/digit3[3]_i_136_n_0 ),
        .I2(\i_/digit3[2]_i_73_n_0 ),
        .I3(\i_/digit3[3]_i_135_n_0 ),
        .I4(\i_/digit3[3]_i_134_n_0 ),
        .I5(\i_/digit3[3]_i_133_n_0 ),
        .O(\i_/digit3[1]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit3[1]_i_102 
       (.I0(\i_/digit3[1]_i_110_n_0 ),
        .I1(\i_/digit4[2]_i_181_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[14]),
        .I4(abs_b[5]),
        .I5(\i_/digit3[1]_i_111_n_0 ),
        .O(\i_/digit3[1]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_103 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit3[1]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h0000B800B800FFFF)) 
    \i_/digit3[1]_i_104 
       (.I0(\i_/digit4[2]_i_181_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[13]),
        .I3(abs_b[5]),
        .I4(\i_/digit3[1]_i_112_n_0 ),
        .I5(\i_/digit3[3]_i_137_n_0 ),
        .O(\i_/digit3[1]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h6F0606066F6F6F06)) 
    \i_/digit3[1]_i_105 
       (.I0(\i_/digit3[1]_i_110_n_0 ),
        .I1(\i_/digit3[1]_i_113_n_0 ),
        .I2(\i_/digit3[1]_i_103_n_0 ),
        .I3(\i_/digit3[3]_i_137_n_0 ),
        .I4(\i_/digit3[1]_i_112_n_0 ),
        .I5(\i_/digit3[1]_i_114_n_0 ),
        .O(\i_/digit3[1]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_106 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit3[1]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h0000B800B800FFFF)) 
    \i_/digit3[1]_i_107 
       (.I0(\i_/digit4[2]_i_181_0 [1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[14]),
        .I3(abs_b[5]),
        .I4(\i_/digit3[1]_i_111_n_0 ),
        .I5(\i_/digit3[1]_i_110_n_0 ),
        .O(\i_/digit3[1]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit3[1]_i_108 
       (.I0(\digit3[1]_i_115_n_0 ),
        .I1(\i_/digit4[2]_i_181_0 [2]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[15]),
        .I4(abs_b[5]),
        .I5(\i_/digit3[1]_i_116_n_0 ),
        .O(\i_/digit3[1]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_109 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit3[1]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit3[1]_i_11 
       (.I0(abs_a[2]),
        .I1(abs_b[12]),
        .I2(\i_/digit3[1]_i_22_n_0 ),
        .I3(\i_/digit3[1]_i_23_n_0 ),
        .I4(\i_/digit3[1]_i_24_n_0 ),
        .I5(\i_/digit3[1]_i_25_n_0 ),
        .O(\i_/digit3[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8EF571F5710A8E0A)) 
    \i_/digit3[1]_i_110 
       (.I0(\i_/digit3[3]_i_151_n_0 ),
        .I1(abs_b[3]),
        .I2(\i_/digit3[3]_i_149_n_0 ),
        .I3(abs_a[14]),
        .I4(abs_b[4]),
        .I5(\i_/digit3[1]_i_117_n_0 ),
        .O(\i_/digit3[1]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h0096969696FFFFFF)) 
    \i_/digit3[1]_i_111 
       (.I0(\i_/digit3[3]_i_151_n_0 ),
        .I1(\i_/digit3[3]_i_150_n_0 ),
        .I2(\i_/digit3[3]_i_149_n_0 ),
        .I3(abs_a[13]),
        .I4(abs_b[4]),
        .I5(\i_/digit3[3]_i_148_n_0 ),
        .O(\i_/digit3[1]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h6A950000FFFF6A95)) 
    \i_/digit3[1]_i_112 
       (.I0(\digit3[2]_i_83_n_0 ),
        .I1(abs_a[13]),
        .I2(abs_b[3]),
        .I3(\i_/digit3[2]_i_82_n_0 ),
        .I4(\i_/digit3[2]_i_84_n_0 ),
        .I5(\i_/digit3[2]_i_85_n_0 ),
        .O(\i_/digit3[1]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h009696FFFF696900)) 
    \i_/digit3[1]_i_113 
       (.I0(\i_/digit3[3]_i_151_n_0 ),
        .I1(\i_/digit3[3]_i_150_n_0 ),
        .I2(\i_/digit3[3]_i_149_n_0 ),
        .I3(\i_/digit3[1]_i_118_n_0 ),
        .I4(\i_/digit3[3]_i_148_n_0 ),
        .I5(\i_/digit3[3]_i_175_n_0 ),
        .O(\i_/digit3[1]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_114 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit3[1]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h2BBBFFFF222BAFAF)) 
    \i_/digit3[1]_i_116 
       (.I0(\i_/digit3[1]_i_117_n_0 ),
        .I1(abs_b[4]),
        .I2(\i_/digit3[3]_i_151_n_0 ),
        .I3(abs_b[3]),
        .I4(abs_a[14]),
        .I5(\i_/digit3[3]_i_149_n_0 ),
        .O(\i_/digit3[1]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \i_/digit3[1]_i_117 
       (.I0(\i_/digit3[1]_i_123_n_0 ),
        .I1(\i_/digit3[3]_i_165_n_0 ),
        .I2(\i_/digit3[3]_i_166_n_0 ),
        .I3(\i_/digit3[1]_i_124_n_0 ),
        .I4(\i_/digit3[1]_i_125_n_0 ),
        .I5(\i_/digit3[1]_i_126_n_0 ),
        .O(\i_/digit3[1]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_118 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit3[1]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_119 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[17]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [0]),
        .O(\i_/digit3[1]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h69990000FFFF6999)) 
    \i_/digit3[1]_i_12 
       (.I0(\i_/digit2[3]_i_33_n_0 ),
        .I1(\i_/digit2[3]_i_32_n_0 ),
        .I2(abs_b[12]),
        .I3(abs_a[1]),
        .I4(\i_/digit2[3]_i_30_n_0 ),
        .I5(\i_/digit2[3]_i_31_n_0 ),
        .O(\i_/digit3[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB22222222222)) 
    \i_/digit3[1]_i_120 
       (.I0(\i_/digit3[1]_i_126_n_0 ),
        .I1(\i_/digit3[1]_i_127_n_0 ),
        .I2(\i_/digit4[2]_i_240_0 [0]),
        .I3(a_IBUF[31]),
        .I4(a_IBUF[17]),
        .I5(abs_b[2]),
        .O(\i_/digit3[1]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit3[1]_i_121 
       (.I0(\i_/digit3[1]_i_128_n_0 ),
        .I1(abs_b[2]),
        .I2(a_IBUF[18]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_240_0 [1]),
        .I5(\i_/digit3[1]_i_129_n_0 ),
        .O(\i_/digit3[1]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'hFFE8E800E800FFE8)) 
    \i_/digit3[1]_i_122 
       (.I0(\i_/digit3[3]_i_166_n_0 ),
        .I1(\i_/digit3[3]_i_165_n_0 ),
        .I2(\i_/digit3[1]_i_123_n_0 ),
        .I3(\i_/digit3[1]_i_124_n_0 ),
        .I4(\i_/digit3[1]_i_126_n_0 ),
        .I5(\i_/digit3[1]_i_125_n_0 ),
        .O(\i_/digit3[1]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_123 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit3[1]_i_123_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_124 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit3[1]_i_124_n_0 ));
  LUT6 #(
    .INIT(64'hA9995955FFFFFFFF)) 
    \i_/digit3[1]_i_125 
       (.I0(abs_b[2]),
        .I1(\i_/digit3[1]_i_130_n_0 ),
        .I2(abs_a[18]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[16]),
        .O(\i_/digit3[1]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h653F6AC06AC06AC0)) 
    \i_/digit3[1]_i_126 
       (.I0(abs_a[19]),
        .I1(abs_b[1]),
        .I2(abs_a[17]),
        .I3(b_IBUF[0]),
        .I4(abs_a[18]),
        .I5(abs_b[0]),
        .O(\i_/digit3[1]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'h77577FFF7FFF7FFF)) 
    \i_/digit3[1]_i_127 
       (.I0(abs_a[16]),
        .I1(abs_b[1]),
        .I2(b_IBUF[0]),
        .I3(abs_a[18]),
        .I4(abs_b[0]),
        .I5(abs_a[17]),
        .O(\i_/digit3[1]_i_127_n_0 ));
  LUT6 #(
    .INIT(64'hF888080000000000)) 
    \i_/digit3[1]_i_128 
       (.I0(abs_a[18]),
        .I1(abs_b[0]),
        .I2(abs_a[19]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[17]),
        .O(\i_/digit3[1]_i_128_n_0 ));
  LUT6 #(
    .INIT(64'h4777B88878887888)) 
    \i_/digit3[1]_i_129 
       (.I0(abs_b[1]),
        .I1(abs_a[18]),
        .I2(abs_a[19]),
        .I3(abs_b[0]),
        .I4(abs_a[20]),
        .I5(b_IBUF[0]),
        .O(\i_/digit3[1]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit3[1]_i_13 
       (.I0(abs_a[1]),
        .I1(\digit3_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[18]),
        .I4(\i_/digit3[1]_i_26_n_0 ),
        .I5(\i_/digit3[1]_i_27_n_0 ),
        .O(\i_/digit3[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_130 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[18]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [1]),
        .O(\i_/digit3[1]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[1]_i_15 
       (.I0(\i_/digit3[1]_i_28_n_0 ),
        .I1(\i_/digit3[1]_i_29_n_0 ),
        .I2(b_IBUF[18]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0]_0 [1]),
        .I5(abs_a[2]),
        .O(\i_/digit3[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_16 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[20]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0]_0 [3]),
        .O(\i_/digit3[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00D4D4FFD4FF00D4)) 
    \i_/digit3[1]_i_17 
       (.I0(\i_/digit3[1]_i_30_n_0 ),
        .I1(\i_/digit3[3]_i_21_n_0 ),
        .I2(\i_/digit3[3]_i_20_n_0 ),
        .I3(\i_/digit3[1]_i_18_n_0 ),
        .I4(\i_/digit3[1]_i_27_n_0 ),
        .I5(\digit3[1]_i_31_n_0 ),
        .O(\i_/digit3[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_18 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[19]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0]_0 [2]),
        .O(\i_/digit3[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h8E8E8EEEEEEE8EEE)) 
    \i_/digit3[1]_i_19 
       (.I0(\i_/digit3[3]_i_20_n_0 ),
        .I1(\i_/digit3[3]_i_21_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[18]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0]_0 [1]),
        .O(\i_/digit3[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h65AAA6999AAA5999)) 
    \i_/digit3[1]_i_2 
       (.I0(\i_/digit3[1]_i_4_n_0 ),
        .I1(\i_/digit3[1]_i_5_n_0 ),
        .I2(abs_b[15]),
        .I3(a_IBUF[0]),
        .I4(\i_/digit3[1]_i_7_n_0 ),
        .I5(abs_b[16]),
        .O(p_0[17]));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \i_/digit3[1]_i_20 
       (.I0(\i_/digit3[1]_i_27_n_0 ),
        .I1(\i_/digit3[1]_i_26_n_0 ),
        .I2(b_IBUF[18]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0]_0 [1]),
        .I5(abs_a[1]),
        .O(\i_/digit3[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h80888000EAEEEAAA)) 
    \i_/digit3[1]_i_22 
       (.I0(\i_/digit2[3]_i_55_n_0 ),
        .I1(abs_a[2]),
        .I2(\digit2_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[12]),
        .I5(\i_/digit2[3]_i_54_n_0 ),
        .O(\i_/digit3[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[1]_i_23 
       (.I0(\i_/digit3[1]_i_32_n_0 ),
        .I1(\i_/digit3[1]_i_33_n_0 ),
        .I2(b_IBUF[12]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [3]),
        .I5(abs_a[3]),
        .O(\i_/digit3[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hD5FD40544054D5FD)) 
    \i_/digit3[1]_i_24 
       (.I0(\i_/digit3[2]_i_35_n_0 ),
        .I1(\i_/digit2[3]_i_50_n_0 ),
        .I2(\i_/digit2[3]_i_53_n_0 ),
        .I3(\i_/digit2[3]_i_70_n_0 ),
        .I4(\i_/digit2[3]_i_54_n_0 ),
        .I5(\digit3[1]_i_34_n_0 ),
        .O(\i_/digit3[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_25 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit3[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h7117177117711771)) 
    \i_/digit3[1]_i_26 
       (.I0(\i_/digit3[3]_i_39_n_0 ),
        .I1(\i_/digit3[3]_i_38_n_0 ),
        .I2(\i_/digit3[3]_i_37_n_0 ),
        .I3(\i_/digit3[3]_i_36_n_0 ),
        .I4(abs_b[15]),
        .I5(abs_a[2]),
        .O(\i_/digit3[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h6999966696666999)) 
    \i_/digit3[1]_i_27 
       (.I0(\digit3[1]_i_35_n_0 ),
        .I1(\i_/digit3[1]_i_36_n_0 ),
        .I2(abs_b[15]),
        .I3(abs_a[3]),
        .I4(\i_/digit3[1]_i_37_n_0 ),
        .I5(\i_/digit3[1]_i_38_n_0 ),
        .O(\i_/digit3[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit3[1]_i_28 
       (.I0(abs_a[4]),
        .I1(abs_b[15]),
        .I2(\i_/digit3[1]_i_39_n_0 ),
        .I3(\i_/digit3[1]_i_40_n_0 ),
        .I4(\i_/digit3[1]_i_41_n_0 ),
        .I5(\i_/digit3[1]_i_42_n_0 ),
        .O(\i_/digit3[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hE8888EEE8EEEE888)) 
    \i_/digit3[1]_i_29 
       (.I0(\i_/digit3[1]_i_38_n_0 ),
        .I1(\i_/digit3[1]_i_37_n_0 ),
        .I2(abs_a[3]),
        .I3(abs_b[15]),
        .I4(\i_/digit3[1]_i_36_n_0 ),
        .I5(\digit3[1]_i_35_n_0 ),
        .O(\i_/digit3[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit3[1]_i_3 
       (.I0(\i_/digit3[1]_i_9_n_0 ),
        .I1(\i_/digit3[1]_i_10_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[21]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [0]),
        .O(p_0[21]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_30 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[18]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0]_0 [1]),
        .O(\i_/digit3[1]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \i_/digit3[1]_i_32 
       (.I0(\i_/digit3[1]_i_44_n_0 ),
        .I1(abs_b[9]),
        .I2(abs_a[5]),
        .I3(\i_/digit3[1]_i_45_n_0 ),
        .I4(\i_/digit3[1]_i_46_n_0 ),
        .I5(\i_/digit3[1]_i_47_n_0 ),
        .O(\i_/digit3[1]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h2BB2B22BB22BB22B)) 
    \i_/digit3[1]_i_33 
       (.I0(\i_/digit2[3]_i_75_n_0 ),
        .I1(\i_/digit2[3]_i_74_n_0 ),
        .I2(\i_/digit2[3]_i_73_n_0 ),
        .I3(\i_/digit2[3]_i_72_n_0 ),
        .I4(abs_b[9]),
        .I5(abs_a[4]),
        .O(\i_/digit3[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000FFFF8A80)) 
    \i_/digit3[1]_i_36 
       (.I0(abs_a[3]),
        .I1(\digit3_reg[0] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[15]),
        .I4(\i_/digit3[3]_i_49_n_0 ),
        .I5(\i_/digit3[3]_i_48_n_0 ),
        .O(\i_/digit3[1]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFD4D400D400FFD4)) 
    \i_/digit3[1]_i_37 
       (.I0(\i_/digit3[2]_i_19_n_0 ),
        .I1(\i_/digit3[2]_i_20_n_0 ),
        .I2(\i_/digit3[3]_i_64_n_0 ),
        .I3(\i_/digit3[1]_i_43_n_0 ),
        .I4(\i_/digit3[3]_i_48_n_0 ),
        .I5(\i_/digit3[1]_i_50_n_0 ),
        .O(\i_/digit3[1]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_38 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit3[1]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h757FFFFF0000757F)) 
    \i_/digit3[1]_i_39 
       (.I0(abs_a[4]),
        .I1(\digit3_reg[0] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[15]),
        .I4(\i_/digit3[1]_i_49_n_0 ),
        .I5(\i_/digit3[1]_i_48_n_0 ),
        .O(\i_/digit3[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit3[1]_i_4 
       (.I0(\i_/digit3[2]_i_12_n_0 ),
        .I1(\i_/digit3[2]_i_13_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[16]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0] [3]),
        .O(\i_/digit3[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[1]_i_40 
       (.I0(\i_/digit3[1]_i_51_n_0 ),
        .I1(\i_/digit3[1]_i_52_n_0 ),
        .I2(b_IBUF[15]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0] [2]),
        .I5(abs_a[5]),
        .O(\i_/digit3[1]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h04455DDF5DDF0445)) 
    \i_/digit3[1]_i_41 
       (.I0(\i_/digit3[3]_i_74_n_0 ),
        .I1(\i_/digit3[3]_i_48_n_0 ),
        .I2(\i_/digit3[3]_i_49_n_0 ),
        .I3(\i_/digit3[1]_i_53_n_0 ),
        .I4(\i_/digit3[1]_i_48_n_0 ),
        .I5(\i_/digit3[1]_i_54_n_0 ),
        .O(\i_/digit3[1]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_42 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit3[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_43 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit3[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit3[1]_i_44 
       (.I0(\i_/digit2[3]_i_90_n_0 ),
        .I1(abs_a[5]),
        .I2(\digit2_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[9]),
        .I5(\i_/digit2[3]_i_89_n_0 ),
        .O(\i_/digit3[1]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[1]_i_45 
       (.I0(\i_/digit3[1]_i_55_n_0 ),
        .I1(\i_/digit3[1]_i_56_n_0 ),
        .I2(b_IBUF[9]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [0]),
        .I5(abs_a[6]),
        .O(\i_/digit3[1]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hA880FEEAFEEAA880)) 
    \i_/digit3[1]_i_46 
       (.I0(\i_/digit3[2]_i_48_n_0 ),
        .I1(\i_/digit2[3]_i_85_n_0 ),
        .I2(\i_/digit2[3]_i_86_n_0 ),
        .I3(\i_/digit2[3]_i_110_n_0 ),
        .I4(\i_/digit2[3]_i_89_n_0 ),
        .I5(\i_/digit3[1]_i_57_n_0 ),
        .O(\i_/digit3[1]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_47 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit3[1]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h6A6A9A6A9A6A9595)) 
    \i_/digit3[1]_i_48 
       (.I0(\i_/digit3[1]_i_58_n_0 ),
        .I1(abs_b[13]),
        .I2(abs_a[5]),
        .I3(abs_b[12]),
        .I4(\i_/digit3[3]_i_60_n_0 ),
        .I5(\i_/digit3[3]_i_61_n_0 ),
        .O(\i_/digit3[1]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h9666FFFF00009666)) 
    \i_/digit3[1]_i_49 
       (.I0(\i_/digit3[3]_i_61_n_0 ),
        .I1(\i_/digit3[3]_i_60_n_0 ),
        .I2(abs_b[12]),
        .I3(abs_a[5]),
        .I4(\i_/digit3[3]_i_62_n_0 ),
        .I5(\i_/digit3[3]_i_63_n_0 ),
        .O(\i_/digit3[1]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit3[1]_i_5 
       (.I0(\i_/digit3[1]_i_11_n_0 ),
        .I1(abs_a[0]),
        .I2(b_IBUF[15]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0] [2]),
        .I5(\i_/digit3[1]_i_12_n_0 ),
        .O(\i_/digit3[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h96695555AAAA9669)) 
    \i_/digit3[1]_i_50 
       (.I0(\i_/digit3[1]_i_53_n_0 ),
        .I1(\i_/digit3[3]_i_78_n_0 ),
        .I2(\i_/digit3[2]_i_30_n_0 ),
        .I3(\i_/digit3[2]_i_31_n_0 ),
        .I4(\i_/digit3[2]_i_32_n_0 ),
        .I5(\i_/digit3[2]_i_33_n_0 ),
        .O(\i_/digit3[1]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit3[1]_i_51 
       (.I0(\i_/digit3[1]_i_59_n_0 ),
        .I1(\i_/digit3[1]_i_60_n_0 ),
        .I2(\digit3[1]_i_61_n_0 ),
        .I3(abs_a[6]),
        .I4(abs_b[13]),
        .I5(\i_/digit3[1]_i_62_n_0 ),
        .O(\i_/digit3[1]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hD4FFFFFF00FCD4FC)) 
    \i_/digit3[1]_i_52 
       (.I0(abs_b[12]),
        .I1(\i_/digit3[3]_i_60_n_0 ),
        .I2(\i_/digit3[3]_i_61_n_0 ),
        .I3(abs_a[5]),
        .I4(abs_b[13]),
        .I5(\i_/digit3[1]_i_58_n_0 ),
        .O(\i_/digit3[1]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_53 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit3[1]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h65A6A665A66565A6)) 
    \i_/digit3[1]_i_54 
       (.I0(\i_/digit3[3]_i_88_n_0 ),
        .I1(\i_/digit3[3]_i_63_n_0 ),
        .I2(\i_/digit3[3]_i_62_n_0 ),
        .I3(\i_/digit3[1]_i_63_n_0 ),
        .I4(\i_/digit3[3]_i_60_n_0 ),
        .I5(\i_/digit3[3]_i_61_n_0 ),
        .O(\i_/digit3[1]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \i_/digit3[1]_i_55 
       (.I0(\i_/digit3[1]_i_64_n_0 ),
        .I1(\i_/digit3[1]_i_65_n_0 ),
        .I2(abs_b[6]),
        .I3(abs_a[8]),
        .I4(\i_/digit3[1]_i_66_n_0 ),
        .I5(\i_/digit3[1]_i_67_n_0 ),
        .O(\i_/digit3[1]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF966696660000)) 
    \i_/digit3[1]_i_56 
       (.I0(\i_/digit2[3]_i_109_n_0 ),
        .I1(\i_/digit2[3]_i_108_n_0 ),
        .I2(abs_b[6]),
        .I3(abs_a[7]),
        .I4(\i_/digit2[3]_i_106_n_0 ),
        .I5(\i_/digit3[1]_i_68_n_0 ),
        .O(\i_/digit3[1]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h002B2BFFFFD4D400)) 
    \i_/digit3[1]_i_57 
       (.I0(\i_/digit2[2]_i_23_n_0 ),
        .I1(\i_/digit2[2]_i_22_n_0 ),
        .I2(\i_/digit2[3]_i_111_n_0 ),
        .I3(\i_/digit3[1]_i_69_n_0 ),
        .I4(\i_/digit2[3]_i_104_n_0 ),
        .I5(\i_/digit3[2]_i_53_n_0 ),
        .O(\i_/digit3[1]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \i_/digit3[1]_i_58 
       (.I0(\i_/digit3[1]_i_70_n_0 ),
        .I1(\i_/digit3[1]_i_71_n_0 ),
        .I2(\i_/digit3[1]_i_72_n_0 ),
        .I3(\i_/digit3[1]_i_73_n_0 ),
        .I4(\i_/digit3[3]_i_76_n_0 ),
        .I5(\digit3[3]_i_75_n_0 ),
        .O(\i_/digit3[1]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_59 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit3[1]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h80888000EAEEEAAA)) 
    \i_/digit3[1]_i_60 
       (.I0(\i_/digit3[1]_i_74_n_0 ),
        .I1(abs_a[7]),
        .I2(\digit2_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[12]),
        .I5(\i_/digit3[1]_i_70_n_0 ),
        .O(\i_/digit3[1]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h002B2BFF2BFF002B)) 
    \i_/digit3[1]_i_62 
       (.I0(\digit3[3]_i_75_n_0 ),
        .I1(\i_/digit3[3]_i_76_n_0 ),
        .I2(\i_/digit3[1]_i_73_n_0 ),
        .I3(\i_/digit3[1]_i_72_n_0 ),
        .I4(\i_/digit3[1]_i_71_n_0 ),
        .I5(\i_/digit3[1]_i_70_n_0 ),
        .O(\i_/digit3[1]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_63 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit3[1]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h75F71051105175F7)) 
    \i_/digit3[1]_i_64 
       (.I0(\i_/digit2[3]_i_107_n_0 ),
        .I1(\i_/digit3[1]_i_77_n_0 ),
        .I2(\i_/digit2[3]_i_122_n_0 ),
        .I3(\i_/digit2[3]_i_118_n_0 ),
        .I4(\i_/digit2[3]_i_123_n_0 ),
        .I5(\i_/digit3[1]_i_78_n_0 ),
        .O(\i_/digit3[1]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_65 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit3[1]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h000047FF47FFFFFF)) 
    \i_/digit3[1]_i_66 
       (.I0(\i_/digit3[3]_i_126_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[9]),
        .I3(abs_b[5]),
        .I4(\i_/digit2[3]_i_124_n_0 ),
        .I5(\i_/digit2[3]_i_123_n_0 ),
        .O(\i_/digit3[1]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit3[1]_i_67 
       (.I0(\i_/digit3[1]_i_79_n_0 ),
        .I1(\i_/digit3[1]_i_80_n_0 ),
        .I2(abs_b[5]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit3[1]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_68 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit3[1]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_69 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit3[1]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h202AAAAABABFFFFF)) 
    \i_/digit3[1]_i_7 
       (.I0(\i_/digit2[3]_i_17_n_0 ),
        .I1(\digit3_reg[0] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[15]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit2[3]_i_19_n_0 ),
        .O(\i_/digit3[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h999696665AAA5AAA)) 
    \i_/digit3[1]_i_70 
       (.I0(\i_/digit3[1]_i_81_n_0 ),
        .I1(abs_b[10]),
        .I2(\digit3[3]_i_91_n_0 ),
        .I3(\i_/digit3[3]_i_90_n_0 ),
        .I4(abs_b[9]),
        .I5(abs_a[8]),
        .O(\i_/digit3[1]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h006969FFFF969600)) 
    \i_/digit3[1]_i_71 
       (.I0(\i_/digit3[1]_i_82_n_0 ),
        .I1(\i_/digit3[3]_i_90_n_0 ),
        .I2(\digit3[3]_i_91_n_0 ),
        .I3(\i_/digit3[3]_i_93_n_0 ),
        .I4(\i_/digit3[3]_i_92_n_0 ),
        .I5(\i_/digit3[3]_i_117_n_0 ),
        .O(\i_/digit3[1]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_72 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit3[1]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_73 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit3[1]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hE88E8EE88EE88EE8)) 
    \i_/digit3[1]_i_74 
       (.I0(\i_/digit3[3]_i_92_n_0 ),
        .I1(\i_/digit3[3]_i_93_n_0 ),
        .I2(\digit3[3]_i_91_n_0 ),
        .I3(\i_/digit3[3]_i_90_n_0 ),
        .I4(abs_b[9]),
        .I5(abs_a[8]),
        .O(\i_/digit3[1]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit3[1]_i_75 
       (.I0(\i_/digit3[1]_i_83_n_0 ),
        .I1(abs_b[10]),
        .I2(abs_a[9]),
        .I3(\i_/digit3[1]_i_84_n_0 ),
        .I4(\i_/digit3[1]_i_85_n_0 ),
        .I5(\i_/digit3[1]_i_86_n_0 ),
        .O(\i_/digit3[1]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hA8800000FEEAC0C0)) 
    \i_/digit3[1]_i_76 
       (.I0(abs_b[10]),
        .I1(\digit3[3]_i_91_n_0 ),
        .I2(\i_/digit3[3]_i_90_n_0 ),
        .I3(abs_b[9]),
        .I4(abs_a[8]),
        .I5(\i_/digit3[1]_i_81_n_0 ),
        .O(\i_/digit3[1]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_77 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit3[1]_i_77_n_0 ));
  LUT5 #(
    .INIT(32'h599A3030)) 
    \i_/digit3[1]_i_78 
       (.I0(abs_b[5]),
        .I1(\i_/digit2[3]_i_126_n_0 ),
        .I2(\i_/digit3[1]_i_87_n_0 ),
        .I3(abs_b[4]),
        .I4(abs_a[8]),
        .O(\i_/digit3[1]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h99696966A5AAA5AA)) 
    \i_/digit3[1]_i_79 
       (.I0(\i_/digit3[1]_i_88_n_0 ),
        .I1(abs_b[4]),
        .I2(\i_/digit2[3]_i_132_n_0 ),
        .I3(\i_/digit2[3]_i_131_n_0 ),
        .I4(abs_b[3]),
        .I5(abs_a[10]),
        .O(\i_/digit3[1]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hFF69696969000000)) 
    \i_/digit3[1]_i_80 
       (.I0(\i_/digit2[3]_i_132_n_0 ),
        .I1(\i_/digit2[3]_i_131_n_0 ),
        .I2(\i_/digit2[3]_i_130_n_0 ),
        .I3(abs_a[9]),
        .I4(abs_b[4]),
        .I5(\i_/digit2[3]_i_133_n_0 ),
        .O(\i_/digit3[1]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h718E8E718E71718E)) 
    \i_/digit3[1]_i_81 
       (.I0(\i_/digit3[3]_i_107_n_0 ),
        .I1(\i_/digit3[1]_i_89_n_0 ),
        .I2(\i_/digit3[3]_i_108_n_0 ),
        .I3(\i_/digit3[1]_i_90_n_0 ),
        .I4(\i_/digit3[1]_i_91_n_0 ),
        .I5(\i_/digit3[1]_i_92_n_0 ),
        .O(\i_/digit3[1]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_82 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit3[1]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h06066F066F066F6F)) 
    \i_/digit3[1]_i_83 
       (.I0(\i_/digit3[1]_i_92_n_0 ),
        .I1(\i_/digit3[1]_i_91_n_0 ),
        .I2(\i_/digit3[1]_i_90_n_0 ),
        .I3(\i_/digit3[3]_i_108_n_0 ),
        .I4(\i_/digit3[1]_i_89_n_0 ),
        .I5(\i_/digit3[3]_i_107_n_0 ),
        .O(\i_/digit3[1]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_84 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit3[1]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h0000B800B800FFFF)) 
    \i_/digit3[1]_i_85 
       (.I0(\i_/digit3[3]_i_126_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[11]),
        .I3(abs_b[8]),
        .I4(\i_/digit3[1]_i_93_n_0 ),
        .I5(\i_/digit3[1]_i_92_n_0 ),
        .O(\i_/digit3[1]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit3[1]_i_86 
       (.I0(\i_/digit3[1]_i_94_n_0 ),
        .I1(abs_b[8]),
        .I2(a_IBUF[12]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit3[3]_i_126_0 [3]),
        .I5(\i_/digit3[1]_i_95_n_0 ),
        .O(\i_/digit3[1]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hA220FBBAFBBAA220)) 
    \i_/digit3[1]_i_87 
       (.I0(\i_/digit2[2]_i_33_n_0 ),
        .I1(\digit2[3]_i_119_0 ),
        .I2(\i_/digit2[2]_i_34_n_0 ),
        .I3(\i_/digit2[0]_i_38_n_0 ),
        .I4(\i_/digit2[2]_i_35_n_0 ),
        .I5(\i_/digit2[2]_i_36_n_0 ),
        .O(\i_/digit3[1]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h9666999669996669)) 
    \i_/digit3[1]_i_88 
       (.I0(\i_/digit3[1]_i_96_n_0 ),
        .I1(\i_/digit3[1]_i_97_n_0 ),
        .I2(\i_/digit2[3]_i_143_n_0 ),
        .I3(\i_/digit3[1]_i_98_n_0 ),
        .I4(\i_/digit3[2]_i_71_0 ),
        .I5(\i_/digit3[1]_i_99_n_0 ),
        .O(\i_/digit3[1]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_89 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit3[1]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit3[1]_i_9 
       (.I0(\i_/digit3[1]_i_13_n_0 ),
        .I1(abs_a[1]),
        .I2(abs_b[18]),
        .I3(\i_/digit3[1]_i_15_n_0 ),
        .I4(\i_/digit3[1]_i_16_n_0 ),
        .I5(\i_/digit3[1]_i_17_n_0 ),
        .O(\i_/digit3[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_90 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit3[1]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h4DFF004DB200FFB2)) 
    \i_/digit3[1]_i_91 
       (.I0(\i_/digit3[3]_i_121_n_0 ),
        .I1(\i_/digit3[3]_i_120_n_0 ),
        .I2(\i_/digit3[2]_i_75_n_0 ),
        .I3(\i_/digit3[1]_i_100_n_0 ),
        .I4(\i_/digit3[3]_i_119_n_0 ),
        .I5(\i_/digit3[3]_i_146_n_0 ),
        .O(\i_/digit3[1]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit3[1]_i_92 
       (.I0(\i_/digit3[1]_i_101_n_0 ),
        .I1(abs_b[7]),
        .I2(abs_a[11]),
        .I3(\i_/digit3[1]_i_102_n_0 ),
        .I4(\i_/digit3[1]_i_103_n_0 ),
        .I5(\i_/digit3[1]_i_104_n_0 ),
        .O(\i_/digit3[1]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h4DFFFFFF00DD4DDD)) 
    \i_/digit3[1]_i_93 
       (.I0(\i_/digit3[3]_i_121_n_0 ),
        .I1(\i_/digit3[3]_i_120_n_0 ),
        .I2(abs_b[6]),
        .I3(abs_a[10]),
        .I4(abs_b[7]),
        .I5(\i_/digit3[3]_i_119_n_0 ),
        .O(\i_/digit3[1]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h088F8F088F08088F)) 
    \i_/digit3[1]_i_94 
       (.I0(abs_a[11]),
        .I1(abs_b[7]),
        .I2(\i_/digit3[1]_i_101_n_0 ),
        .I3(\i_/digit3[1]_i_104_n_0 ),
        .I4(\i_/digit3[1]_i_103_n_0 ),
        .I5(\i_/digit3[1]_i_102_n_0 ),
        .O(\i_/digit3[1]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h6999966696666999)) 
    \i_/digit3[1]_i_95 
       (.I0(\i_/digit3[1]_i_105_n_0 ),
        .I1(\i_/digit3[1]_i_106_n_0 ),
        .I2(abs_a[13]),
        .I3(abs_b[6]),
        .I4(\i_/digit3[1]_i_107_n_0 ),
        .I5(\i_/digit3[1]_i_108_n_0 ),
        .O(\i_/digit3[1]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h606050A060A060A0)) 
    \i_/digit3[1]_i_96 
       (.I0(abs_b[2]),
        .I1(abs_b[1]),
        .I2(abs_a[12]),
        .I3(\i_/digit3[1]_i_109_n_0 ),
        .I4(abs_a[14]),
        .I5(b_IBUF[0]),
        .O(\i_/digit3[1]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h653F6AC06AC06AC0)) 
    \i_/digit3[1]_i_97 
       (.I0(abs_a[15]),
        .I1(abs_b[1]),
        .I2(abs_a[13]),
        .I3(b_IBUF[0]),
        .I4(abs_a[14]),
        .I5(abs_b[0]),
        .O(\i_/digit3[1]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_98 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit3[1]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[1]_i_99 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit3[1]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hEAFE80A880A8EAFE)) 
    \i_/digit3[2]_i_10 
       (.I0(\i_/digit3[2]_i_14_n_0 ),
        .I1(\i_/digit3[1]_i_11_n_0 ),
        .I2(\i_/digit3[2]_i_21_n_0 ),
        .I3(\i_/digit3[1]_i_12_n_0 ),
        .I4(\i_/digit3[2]_i_18_n_0 ),
        .I5(\i_/digit3[2]_i_22_n_0 ),
        .O(\i_/digit3[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_11 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[17]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0]_0 [0]),
        .O(\i_/digit3[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[2]_i_12 
       (.I0(\i_/digit3[2]_i_18_n_0 ),
        .I1(\i_/digit3[2]_i_17_n_0 ),
        .I2(b_IBUF[15]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0] [2]),
        .I5(abs_a[1]),
        .O(\i_/digit3[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h202AAAAABABFFFFF)) 
    \i_/digit3[2]_i_13 
       (.I0(\i_/digit3[1]_i_12_n_0 ),
        .I1(\digit3_reg[0] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[15]),
        .I4(abs_a[0]),
        .I5(\i_/digit3[1]_i_11_n_0 ),
        .O(\i_/digit3[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_14 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[16]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0] [3]),
        .O(\i_/digit3[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h066F6F6F0606066F)) 
    \i_/digit3[2]_i_15 
       (.I0(\i_/digit3[1]_i_11_n_0 ),
        .I1(\i_/digit3[2]_i_23_n_0 ),
        .I2(\i_/digit3[2]_i_24_n_0 ),
        .I3(\i_/digit2[3]_i_19_n_0 ),
        .I4(\i_/digit3[2]_i_25_n_0 ),
        .I5(\i_/digit2[3]_i_17_n_0 ),
        .O(\i_/digit3[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hD44D4D4D4DD4D4D4)) 
    \i_/digit3[2]_i_16 
       (.I0(\i_/digit3[1]_i_17_n_0 ),
        .I1(\i_/digit3[1]_i_16_n_0 ),
        .I2(\i_/digit3[1]_i_15_n_0 ),
        .I3(abs_b[18]),
        .I4(abs_a[1]),
        .I5(\i_/digit3[1]_i_13_n_0 ),
        .O(\i_/digit3[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hB22B2BB22BB22BB2)) 
    \i_/digit3[2]_i_17 
       (.I0(\i_/digit3[1]_i_24_n_0 ),
        .I1(\i_/digit3[1]_i_25_n_0 ),
        .I2(\i_/digit3[1]_i_23_n_0 ),
        .I3(\i_/digit3[1]_i_22_n_0 ),
        .I4(abs_b[12]),
        .I5(abs_a[2]),
        .O(\i_/digit3[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit3[2]_i_18 
       (.I0(abs_a[3]),
        .I1(abs_b[12]),
        .I2(\i_/digit3[2]_i_26_n_0 ),
        .I3(\i_/digit3[2]_i_27_n_0 ),
        .I4(\i_/digit3[2]_i_28_n_0 ),
        .I5(\i_/digit3[2]_i_29_n_0 ),
        .O(\i_/digit3[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit3[2]_i_19 
       (.I0(abs_a[4]),
        .I1(abs_b[12]),
        .I2(\i_/digit3[2]_i_30_n_0 ),
        .I3(\i_/digit3[2]_i_31_n_0 ),
        .I4(\i_/digit3[2]_i_32_n_0 ),
        .I5(\i_/digit3[2]_i_33_n_0 ),
        .O(\i_/digit3[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit3[2]_i_2 
       (.I0(\i_/digit3[2]_i_4_n_0 ),
        .I1(\i_/digit3[2]_i_5_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[18]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0]_0 [1]),
        .O(p_0[18]));
  LUT6 #(
    .INIT(64'h8EE8E88EE88EE88E)) 
    \i_/digit3[2]_i_20 
       (.I0(\i_/digit3[2]_i_28_n_0 ),
        .I1(\i_/digit3[2]_i_29_n_0 ),
        .I2(\i_/digit3[2]_i_27_n_0 ),
        .I3(\i_/digit3[2]_i_26_n_0 ),
        .I4(abs_b[12]),
        .I5(abs_a[3]),
        .O(\i_/digit3[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_21 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[15]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0] [2]),
        .O(\i_/digit3[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h69965555AAAA6996)) 
    \i_/digit3[2]_i_22 
       (.I0(\i_/digit3[3]_i_50_n_0 ),
        .I1(\i_/digit3[2]_i_34_n_0 ),
        .I2(\i_/digit3[1]_i_22_n_0 ),
        .I3(\i_/digit3[1]_i_23_n_0 ),
        .I4(\i_/digit3[1]_i_25_n_0 ),
        .I5(\i_/digit3[1]_i_24_n_0 ),
        .O(\i_/digit3[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hB22B2BB24DD4D44D)) 
    \i_/digit3[2]_i_23 
       (.I0(\i_/digit2[3]_i_31_n_0 ),
        .I1(\i_/digit2[3]_i_30_n_0 ),
        .I2(\i_/digit3[2]_i_35_n_0 ),
        .I3(\i_/digit2[3]_i_32_n_0 ),
        .I4(\i_/digit2[3]_i_33_n_0 ),
        .I5(\i_/digit3[2]_i_21_n_0 ),
        .O(\i_/digit3[2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit3[2]_i_24 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[16]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0] [3]),
        .O(\i_/digit3[2]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit3[2]_i_25 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[15]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0] [2]),
        .O(\i_/digit3[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit3[2]_i_26 
       (.I0(\i_/digit3[1]_i_33_n_0 ),
        .I1(abs_a[3]),
        .I2(\digit2_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[12]),
        .I5(\i_/digit3[1]_i_32_n_0 ),
        .O(\i_/digit3[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[2]_i_27 
       (.I0(\i_/digit3[2]_i_36_n_0 ),
        .I1(\i_/digit3[2]_i_37_n_0 ),
        .I2(b_IBUF[12]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [3]),
        .I5(abs_a[4]),
        .O(\i_/digit3[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFD4D400D400FFD4)) 
    \i_/digit3[2]_i_28 
       (.I0(\i_/digit2[3]_i_54_n_0 ),
        .I1(\i_/digit3[2]_i_38_n_0 ),
        .I2(\i_/digit2[3]_i_55_n_0 ),
        .I3(\i_/digit3[2]_i_34_n_0 ),
        .I4(\i_/digit3[1]_i_32_n_0 ),
        .I5(\i_/digit3[2]_i_39_n_0 ),
        .O(\i_/digit3[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_29 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit3[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit3[2]_i_3 
       (.I0(\i_/digit3[2]_i_6_n_0 ),
        .I1(\digit4_reg[0] [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[22]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit3[2]_i_7_n_0 ),
        .O(p_0[22]));
  LUT6 #(
    .INIT(64'hFFFF8A808A800000)) 
    \i_/digit3[2]_i_30 
       (.I0(abs_a[4]),
        .I1(\digit2_reg[0] [3]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[12]),
        .I4(\i_/digit3[2]_i_37_n_0 ),
        .I5(\i_/digit3[2]_i_36_n_0 ),
        .O(\i_/digit3[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hA959555556A6AAAA)) 
    \i_/digit3[2]_i_31 
       (.I0(\i_/digit3[2]_i_40_n_0 ),
        .I1(b_IBUF[12]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0] [3]),
        .I4(abs_a[5]),
        .I5(\i_/digit3[2]_i_41_n_0 ),
        .O(\i_/digit3[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h71FF0071007171FF)) 
    \i_/digit3[2]_i_32 
       (.I0(\i_/digit3[1]_i_32_n_0 ),
        .I1(\i_/digit3[2]_i_42_n_0 ),
        .I2(\i_/digit3[1]_i_33_n_0 ),
        .I3(\i_/digit3[3]_i_65_n_0 ),
        .I4(\i_/digit3[2]_i_36_n_0 ),
        .I5(\i_/digit3[2]_i_43_n_0 ),
        .O(\i_/digit3[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_33 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit3[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_34 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit3[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_35 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit3[2]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \i_/digit3[2]_i_36 
       (.I0(\i_/digit3[2]_i_44_n_0 ),
        .I1(\i_/digit3[2]_i_45_n_0 ),
        .I2(\i_/digit3[2]_i_46_n_0 ),
        .I3(abs_a[5]),
        .I4(abs_b[10]),
        .I5(\i_/digit3[2]_i_47_n_0 ),
        .O(\i_/digit3[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hE88E8E8E8EE8E8E8)) 
    \i_/digit3[2]_i_37 
       (.I0(\i_/digit3[1]_i_46_n_0 ),
        .I1(\i_/digit3[1]_i_47_n_0 ),
        .I2(\i_/digit3[1]_i_45_n_0 ),
        .I3(abs_a[5]),
        .I4(abs_b[9]),
        .I5(\i_/digit3[1]_i_44_n_0 ),
        .O(\i_/digit3[2]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_38 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit3[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h96695555AAAA9669)) 
    \i_/digit3[2]_i_39 
       (.I0(\i_/digit3[2]_i_42_n_0 ),
        .I1(\i_/digit3[2]_i_48_n_0 ),
        .I2(\i_/digit2[3]_i_72_n_0 ),
        .I3(\i_/digit2[3]_i_73_n_0 ),
        .I4(\i_/digit2[3]_i_74_n_0 ),
        .I5(\i_/digit2[3]_i_75_n_0 ),
        .O(\i_/digit3[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit3[2]_i_4 
       (.I0(abs_a[1]),
        .I1(abs_b[15]),
        .I2(\i_/digit3[2]_i_8_n_0 ),
        .I3(\i_/digit3[2]_i_9_n_0 ),
        .I4(\i_/digit3[2]_i_10_n_0 ),
        .I5(\i_/digit3[2]_i_11_n_0 ),
        .O(\i_/digit3[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F08088F088F8F08)) 
    \i_/digit3[2]_i_40 
       (.I0(abs_a[5]),
        .I1(abs_b[10]),
        .I2(\i_/digit3[2]_i_47_n_0 ),
        .I3(\i_/digit3[2]_i_46_n_0 ),
        .I4(\i_/digit3[2]_i_45_n_0 ),
        .I5(\i_/digit3[2]_i_44_n_0 ),
        .O(\i_/digit3[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h999696665AAA5AAA)) 
    \i_/digit3[2]_i_41 
       (.I0(\i_/digit3[2]_i_49_n_0 ),
        .I1(abs_b[10]),
        .I2(\i_/digit3[2]_i_46_n_0 ),
        .I3(\i_/digit3[2]_i_45_n_0 ),
        .I4(abs_b[9]),
        .I5(abs_a[6]),
        .O(\i_/digit3[2]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_42 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit3[2]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h555569966996AAAA)) 
    \i_/digit3[2]_i_43 
       (.I0(\i_/digit3[3]_i_79_n_0 ),
        .I1(\i_/digit3[1]_i_44_n_0 ),
        .I2(\i_/digit3[2]_i_50_n_0 ),
        .I3(\i_/digit3[1]_i_45_n_0 ),
        .I4(\i_/digit3[1]_i_47_n_0 ),
        .I5(\i_/digit3[1]_i_46_n_0 ),
        .O(\i_/digit3[2]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_44 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit3[2]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000FFFF8A80)) 
    \i_/digit3[2]_i_45 
       (.I0(abs_a[6]),
        .I1(\digit2_reg[0] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[9]),
        .I4(\i_/digit3[1]_i_56_n_0 ),
        .I5(\i_/digit3[1]_i_55_n_0 ),
        .O(\i_/digit3[2]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h56A6AAAAA9595555)) 
    \i_/digit3[2]_i_46 
       (.I0(\i_/digit3[2]_i_51_n_0 ),
        .I1(b_IBUF[9]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0] [0]),
        .I4(abs_a[7]),
        .I5(\i_/digit3[2]_i_52_n_0 ),
        .O(\i_/digit3[2]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h007171FF71FF0071)) 
    \i_/digit3[2]_i_47 
       (.I0(\i_/digit2[3]_i_89_n_0 ),
        .I1(\i_/digit3[2]_i_53_n_0 ),
        .I2(\i_/digit2[3]_i_90_n_0 ),
        .I3(\i_/digit3[2]_i_50_n_0 ),
        .I4(\i_/digit3[1]_i_55_n_0 ),
        .I5(\i_/digit3[2]_i_54_n_0 ),
        .O(\i_/digit3[2]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_48 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit3[2]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h9A5965A665A69A59)) 
    \i_/digit3[2]_i_49 
       (.I0(\i_/digit3[2]_i_55_n_0 ),
        .I1(\i_/digit3[2]_i_56_n_0 ),
        .I2(\i_/digit3[2]_i_51_n_0 ),
        .I3(\i_/digit3[2]_i_52_n_0 ),
        .I4(\i_/digit3[2]_i_57_n_0 ),
        .I5(\i_/digit3[2]_i_58_n_0 ),
        .O(\i_/digit3[2]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h96FF009600960096)) 
    \i_/digit3[2]_i_5 
       (.I0(\i_/digit3[2]_i_12_n_0 ),
        .I1(\i_/digit3[2]_i_13_n_0 ),
        .I2(\i_/digit3[2]_i_14_n_0 ),
        .I3(\i_/digit3[2]_i_15_n_0 ),
        .I4(abs_b[16]),
        .I5(a_IBUF[0]),
        .O(\i_/digit3[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_50 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit3[2]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h6999FFFF00006999)) 
    \i_/digit3[2]_i_51 
       (.I0(\i_/digit3[1]_i_67_n_0 ),
        .I1(\i_/digit3[1]_i_66_n_0 ),
        .I2(abs_a[8]),
        .I3(abs_b[6]),
        .I4(\i_/digit3[1]_i_65_n_0 ),
        .I5(\i_/digit3[1]_i_64_n_0 ),
        .O(\i_/digit3[2]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit3[2]_i_52 
       (.I0(\i_/digit3[2]_i_59_n_0 ),
        .I1(abs_a[9]),
        .I2(abs_b[6]),
        .I3(\i_/digit3[2]_i_60_n_0 ),
        .I4(\i_/digit3[2]_i_61_n_0 ),
        .I5(\i_/digit3[2]_i_62_n_0 ),
        .O(\i_/digit3[2]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_53 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit3[2]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h566A6A566A56566A)) 
    \i_/digit3[2]_i_54 
       (.I0(\i_/digit3[2]_i_63_n_0 ),
        .I1(\i_/digit3[1]_i_68_n_0 ),
        .I2(\i_/digit2[3]_i_106_n_0 ),
        .I3(\i_/digit2[3]_i_107_n_0 ),
        .I4(\i_/digit2[3]_i_108_n_0 ),
        .I5(\i_/digit2[3]_i_109_n_0 ),
        .O(\i_/digit3[2]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_55 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit3[2]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_56 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit3[2]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hD4BB2BBB2B44D444)) 
    \i_/digit3[2]_i_57 
       (.I0(\i_/digit3[2]_i_60_n_0 ),
        .I1(\i_/digit3[2]_i_59_n_0 ),
        .I2(abs_b[6]),
        .I3(abs_a[9]),
        .I4(abs_b[7]),
        .I5(\digit3[2]_i_64_n_0 ),
        .O(\i_/digit3[2]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h6A56566A566A6A56)) 
    \i_/digit3[2]_i_58 
       (.I0(\i_/digit3[2]_i_65_n_0 ),
        .I1(\i_/digit3[2]_i_61_n_0 ),
        .I2(\i_/digit3[2]_i_62_n_0 ),
        .I3(\i_/digit3[2]_i_59_n_0 ),
        .I4(\i_/digit3[2]_i_66_n_0 ),
        .I5(\i_/digit3[2]_i_60_n_0 ),
        .O(\i_/digit3[2]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit3[2]_i_59 
       (.I0(\i_/digit3[1]_i_80_n_0 ),
        .I1(\i_/digit3[3]_i_126_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[10]),
        .I4(abs_b[5]),
        .I5(\i_/digit3[1]_i_79_n_0 ),
        .O(\i_/digit3[2]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit3[2]_i_6 
       (.I0(\i_/digit3[3]_i_28_n_0 ),
        .I1(\i_/digit3[2]_i_16_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[21]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [0]),
        .O(\i_/digit3[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6A99955595)) 
    \i_/digit3[2]_i_60 
       (.I0(\i_/digit3[2]_i_67_n_0 ),
        .I1(abs_b[5]),
        .I2(a_IBUF[11]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit3[3]_i_126_0 [2]),
        .I5(\digit3[2]_i_68_n_0 ),
        .O(\i_/digit3[2]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_61 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit3[2]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hFEEAA880A880FEEA)) 
    \i_/digit3[2]_i_62 
       (.I0(\i_/digit3[2]_i_69_n_0 ),
        .I1(\i_/digit2[3]_i_123_n_0 ),
        .I2(\i_/digit2[3]_i_124_n_0 ),
        .I3(\i_/digit3[2]_i_70_n_0 ),
        .I4(\i_/digit3[1]_i_79_n_0 ),
        .I5(\i_/digit3[2]_i_71_n_0 ),
        .O(\i_/digit3[2]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_63 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit3[2]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_65 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit3[2]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_66 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit3[2]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h2BFFFFFF00BB2BBB)) 
    \i_/digit3[2]_i_67 
       (.I0(\i_/digit2[3]_i_132_n_0 ),
        .I1(\i_/digit2[3]_i_131_n_0 ),
        .I2(abs_b[3]),
        .I3(abs_a[10]),
        .I4(abs_b[4]),
        .I5(\i_/digit3[1]_i_88_n_0 ),
        .O(\i_/digit3[2]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_69 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit3[2]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB22222222222)) 
    \i_/digit3[2]_i_7 
       (.I0(\i_/digit3[1]_i_9_n_0 ),
        .I1(\i_/digit3[1]_i_10_n_0 ),
        .I2(\digit4_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[21]),
        .I5(a_IBUF[0]),
        .O(\i_/digit3[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_70 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit3[2]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'h56CC6A00)) 
    \i_/digit3[2]_i_71 
       (.I0(abs_b[5]),
        .I1(\i_/digit2[3]_i_133_n_0 ),
        .I2(abs_b[4]),
        .I3(abs_a[9]),
        .I4(\digit3[2]_i_80_n_0 ),
        .O(\i_/digit3[2]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h84884787)) 
    \i_/digit3[2]_i_72 
       (.I0(abs_b[5]),
        .I1(abs_a[11]),
        .I2(\i_/digit3[2]_i_79_n_0 ),
        .I3(abs_b[4]),
        .I4(\i_/digit3[2]_i_81_n_0 ),
        .O(\i_/digit3[2]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit3[2]_i_73 
       (.I0(\i_/digit3[2]_i_82_n_0 ),
        .I1(abs_b[3]),
        .I2(abs_a[13]),
        .I3(\digit3[2]_i_83_n_0 ),
        .I4(\i_/digit3[2]_i_84_n_0 ),
        .I5(\i_/digit3[2]_i_85_n_0 ),
        .O(\i_/digit3[2]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_74 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit3[2]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_75 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit3[2]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6A99955595)) 
    \i_/digit3[2]_i_76 
       (.I0(\i_/digit3[2]_i_86_n_0 ),
        .I1(abs_b[2]),
        .I2(a_IBUF[14]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_181_0 [1]),
        .I5(\i_/digit3[2]_i_87_n_0 ),
        .O(\i_/digit3[2]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_77 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit3[2]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B8000000)) 
    \i_/digit3[2]_i_78 
       (.I0(\i_/digit4[2]_i_181_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[13]),
        .I3(abs_b[2]),
        .I4(\i_/digit3[2]_i_88_n_0 ),
        .I5(\i_/digit3[1]_i_97_n_0 ),
        .O(\i_/digit3[2]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h09099F099F099F9F)) 
    \i_/digit3[2]_i_79 
       (.I0(\i_/digit3[1]_i_97_n_0 ),
        .I1(\i_/digit3[1]_i_96_n_0 ),
        .I2(\i_/digit3[1]_i_99_n_0 ),
        .I3(\i_/digit3[2]_i_71_0 ),
        .I4(\i_/digit3[1]_i_98_n_0 ),
        .I5(\i_/digit2[3]_i_143_n_0 ),
        .O(\i_/digit3[2]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit3[2]_i_8 
       (.I0(\i_/digit3[2]_i_17_n_0 ),
        .I1(abs_a[1]),
        .I2(\digit3_reg[0] [2]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[15]),
        .I5(\i_/digit3[2]_i_18_n_0 ),
        .O(\i_/digit3[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \i_/digit3[2]_i_81 
       (.I0(\i_/digit3[2]_i_91_n_0 ),
        .I1(\i_/digit3[2]_i_88_n_0 ),
        .I2(\i_/digit3[1]_i_97_n_0 ),
        .I3(\i_/digit3[2]_i_77_n_0 ),
        .I4(\i_/digit3[2]_i_87_n_0 ),
        .I5(\digit3[2]_i_92_n_0 ),
        .O(\i_/digit3[2]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h000047FF47FFFFFF)) 
    \i_/digit3[2]_i_82 
       (.I0(\i_/digit4[2]_i_181_0 [1]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[14]),
        .I3(abs_b[2]),
        .I4(\i_/digit3[2]_i_86_n_0 ),
        .I5(\i_/digit3[2]_i_87_n_0 ),
        .O(\i_/digit3[2]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0606066F066F6F6F)) 
    \i_/digit3[2]_i_84 
       (.I0(\digit3[2]_i_92_n_0 ),
        .I1(\i_/digit3[2]_i_87_n_0 ),
        .I2(\i_/digit3[2]_i_77_n_0 ),
        .I3(\i_/digit3[1]_i_97_n_0 ),
        .I4(\i_/digit3[2]_i_88_n_0 ),
        .I5(\i_/digit3[2]_i_91_n_0 ),
        .O(\i_/digit3[2]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_85 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit3[2]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hF888080000000000)) 
    \i_/digit3[2]_i_86 
       (.I0(abs_a[14]),
        .I1(abs_b[0]),
        .I2(abs_a[15]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[13]),
        .O(\i_/digit3[2]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h4777B88878887888)) 
    \i_/digit3[2]_i_87 
       (.I0(abs_b[1]),
        .I1(abs_a[14]),
        .I2(abs_a[15]),
        .I3(abs_b[0]),
        .I4(abs_a[16]),
        .I5(b_IBUF[0]),
        .O(\i_/digit3[2]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hF888000020000000)) 
    \i_/digit3[2]_i_88 
       (.I0(b_IBUF[0]),
        .I1(abs_a[14]),
        .I2(abs_b[0]),
        .I3(abs_a[13]),
        .I4(abs_a[12]),
        .I5(abs_b[1]),
        .O(\i_/digit3[2]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'h4848444848888888)) 
    \i_/digit3[2]_i_89 
       (.I0(abs_b[2]),
        .I1(abs_a[11]),
        .I2(abs_b[1]),
        .I3(b_IBUF[0]),
        .I4(abs_a[13]),
        .I5(\i_/digit3[2]_i_95_n_0 ),
        .O(\i_/digit3[2]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[2]_i_9 
       (.I0(\i_/digit3[2]_i_19_n_0 ),
        .I1(\i_/digit3[2]_i_20_n_0 ),
        .I2(b_IBUF[15]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0] [2]),
        .I5(abs_a[2]),
        .O(\i_/digit3[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_90 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit3[2]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_91 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit3[2]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h653F6AC06AC06AC0)) 
    \i_/digit3[2]_i_93 
       (.I0(abs_a[17]),
        .I1(abs_b[1]),
        .I2(abs_a[15]),
        .I3(b_IBUF[0]),
        .I4(abs_a[16]),
        .I5(abs_b[0]),
        .O(\i_/digit3[2]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hA888A00000008000)) 
    \i_/digit3[2]_i_94 
       (.I0(abs_a[14]),
        .I1(b_IBUF[0]),
        .I2(abs_a[15]),
        .I3(abs_b[0]),
        .I4(abs_a[16]),
        .I5(abs_b[1]),
        .O(\i_/digit3[2]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_95 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit3[2]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[2]_i_96 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit3[2]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h69965555AAAA6996)) 
    \i_/digit3[3]_i_100 
       (.I0(\i_/digit3[3]_i_113_n_0 ),
        .I1(\i_/digit3[1]_i_59_n_0 ),
        .I2(\i_/digit3[1]_i_60_n_0 ),
        .I3(\digit3[1]_i_61_n_0 ),
        .I4(\i_/digit3[1]_i_62_n_0 ),
        .I5(\i_/digit3[3]_i_114_n_0 ),
        .O(\i_/digit3[3]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h757FFFFF0000757F)) 
    \i_/digit3[3]_i_101 
       (.I0(abs_a[8]),
        .I1(\digit2_reg[0] [3]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[12]),
        .I4(\i_/digit3[1]_i_76_n_0 ),
        .I5(\i_/digit3[1]_i_75_n_0 ),
        .O(\i_/digit3[3]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h56A6AAAAA9595555)) 
    \i_/digit3[3]_i_102 
       (.I0(\i_/digit3[3]_i_115_n_0 ),
        .I1(b_IBUF[12]),
        .I2(b_IBUF[31]),
        .I3(\digit2_reg[0] [3]),
        .I4(abs_a[9]),
        .I5(\digit3[3]_i_116_n_0 ),
        .O(\i_/digit3[3]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hFBBAA220A220FBBA)) 
    \i_/digit3[3]_i_103 
       (.I0(\i_/digit3[1]_i_59_n_0 ),
        .I1(\i_/digit3[1]_i_70_n_0 ),
        .I2(\i_/digit3[3]_i_117_n_0 ),
        .I3(\i_/digit3[1]_i_74_n_0 ),
        .I4(\i_/digit3[1]_i_75_n_0 ),
        .I5(\i_/digit3[3]_i_118_n_0 ),
        .O(\i_/digit3[3]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_104 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit3[3]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_105 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit3[3]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6A956A950000)) 
    \i_/digit3[3]_i_106 
       (.I0(\i_/digit3[2]_i_60_n_0 ),
        .I1(abs_b[6]),
        .I2(abs_a[9]),
        .I3(\i_/digit3[2]_i_59_n_0 ),
        .I4(\i_/digit3[2]_i_62_n_0 ),
        .I5(\i_/digit3[2]_i_61_n_0 ),
        .O(\i_/digit3[3]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hFBBA2020A2202020)) 
    \i_/digit3[3]_i_107 
       (.I0(\digit3[2]_i_64_n_0 ),
        .I1(\i_/digit3[2]_i_60_n_0 ),
        .I2(\i_/digit3[2]_i_59_n_0 ),
        .I3(abs_b[6]),
        .I4(abs_a[9]),
        .I5(abs_b[7]),
        .O(\i_/digit3[3]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h9A6A95956A6A9A6A)) 
    \i_/digit3[3]_i_108 
       (.I0(\i_/digit3[3]_i_119_n_0 ),
        .I1(abs_b[7]),
        .I2(abs_a[10]),
        .I3(abs_b[6]),
        .I4(\i_/digit3[3]_i_120_n_0 ),
        .I5(\i_/digit3[3]_i_121_n_0 ),
        .O(\i_/digit3[3]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hA220FBBAFBBAA220)) 
    \i_/digit3[3]_i_109 
       (.I0(\i_/digit3[3]_i_122_n_0 ),
        .I1(\i_/digit3[1]_i_75_n_0 ),
        .I2(\i_/digit3[1]_i_76_n_0 ),
        .I3(\i_/digit3[3]_i_123_n_0 ),
        .I4(\digit3[3]_i_124_n_0 ),
        .I5(\digit3[3]_i_116_n_0 ),
        .O(\i_/digit3[3]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_110 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit3[3]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hB222B2B2B2222222)) 
    \i_/digit3[3]_i_112 
       (.I0(\digit3[3]_i_116_n_0 ),
        .I1(\i_/digit3[3]_i_115_n_0 ),
        .I2(abs_a[9]),
        .I3(\digit2_reg[0] [3]),
        .I4(b_IBUF[31]),
        .I5(b_IBUF[12]),
        .O(\i_/digit3[3]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_113 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit3[3]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_114 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit3[3]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h9666FFFF00009666)) 
    \i_/digit3[3]_i_115 
       (.I0(\i_/digit3[1]_i_86_n_0 ),
        .I1(\i_/digit3[1]_i_85_n_0 ),
        .I2(abs_b[9]),
        .I3(abs_a[10]),
        .I4(\i_/digit3[3]_i_127_n_0 ),
        .I5(\i_/digit3[1]_i_83_n_0 ),
        .O(\i_/digit3[3]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_117 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit3[3]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h55595999999A9AAA)) 
    \i_/digit3[3]_i_118 
       (.I0(\i_/digit3[3]_i_123_n_0 ),
        .I1(\i_/digit3[1]_i_81_n_0 ),
        .I2(\i_/digit3[1]_i_82_n_0 ),
        .I3(\i_/digit3[3]_i_90_n_0 ),
        .I4(\digit3[3]_i_91_n_0 ),
        .I5(\i_/digit3[3]_i_132_n_0 ),
        .O(\i_/digit3[3]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h65A69A599A5965A6)) 
    \i_/digit3[3]_i_119 
       (.I0(\i_/digit3[3]_i_133_n_0 ),
        .I1(\i_/digit3[3]_i_134_n_0 ),
        .I2(\i_/digit3[3]_i_135_n_0 ),
        .I3(\i_/digit3[2]_i_73_n_0 ),
        .I4(\i_/digit3[3]_i_136_n_0 ),
        .I5(\i_/digit3[3]_i_137_n_0 ),
        .O(\i_/digit3[3]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hBABFFFFF202AAAAA)) 
    \i_/digit3[3]_i_120 
       (.I0(\digit3[2]_i_68_n_0 ),
        .I1(\i_/digit3[3]_i_126_0 [2]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[11]),
        .I4(abs_b[5]),
        .I5(\i_/digit3[2]_i_67_n_0 ),
        .O(\i_/digit3[3]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h6966699999999999)) 
    \i_/digit3[3]_i_121 
       (.I0(\i_/digit3[2]_i_73_n_0 ),
        .I1(\i_/digit3[3]_i_135_n_0 ),
        .I2(\i_/digit3[3]_i_126_0 [3]),
        .I3(a_IBUF[31]),
        .I4(a_IBUF[12]),
        .I5(abs_b[5]),
        .O(\i_/digit3[3]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_122 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit3[3]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_123 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit3[3]_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit3[3]_i_125 
       (.I0(abs_b[10]),
        .I1(abs_a[11]),
        .I2(\i_/digit3[3]_i_139_n_0 ),
        .I3(\i_/digit3[3]_i_140_n_0 ),
        .I4(\i_/digit3[3]_i_141_n_0 ),
        .I5(\i_/digit3[3]_i_142_n_0 ),
        .O(\i_/digit3[3]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h2BB2B22BB22BB22B)) 
    \i_/digit3[3]_i_126 
       (.I0(\i_/digit3[3]_i_131_n_0 ),
        .I1(\i_/digit3[3]_i_130_n_0 ),
        .I2(\i_/digit3[3]_i_129_n_0 ),
        .I3(\i_/digit3[3]_i_128_n_0 ),
        .I4(abs_a[11]),
        .I5(abs_b[9]),
        .O(\i_/digit3[3]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_127 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit3[3]_i_127_n_0 ));
  LUT6 #(
    .INIT(64'h202AAAAABABFFFFF)) 
    \i_/digit3[3]_i_128 
       (.I0(\i_/digit3[1]_i_95_n_0 ),
        .I1(\i_/digit3[3]_i_126_0 [3]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[12]),
        .I4(abs_b[8]),
        .I5(\i_/digit3[1]_i_94_n_0 ),
        .O(\i_/digit3[3]_i_128_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6A99955595)) 
    \i_/digit3[3]_i_129 
       (.I0(\i_/digit3[3]_i_143_n_0 ),
        .I1(abs_b[8]),
        .I2(a_IBUF[13]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_181_0 [0]),
        .I5(\i_/digit3[3]_i_144_n_0 ),
        .O(\i_/digit3[3]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h6F0606066F6F6F06)) 
    \i_/digit3[3]_i_130 
       (.I0(\i_/digit3[3]_i_145_n_0 ),
        .I1(\i_/digit3[1]_i_95_n_0 ),
        .I2(\i_/digit3[1]_i_84_n_0 ),
        .I3(\i_/digit3[1]_i_92_n_0 ),
        .I4(\i_/digit3[1]_i_93_n_0 ),
        .I5(\i_/digit3[3]_i_146_n_0 ),
        .O(\i_/digit3[3]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_131 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit3[3]_i_131_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_132 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit3[3]_i_132_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_133 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit3[3]_i_133_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_134 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit3[3]_i_134_n_0 ));
  LUT6 #(
    .INIT(64'hBF2A2ABF2ABFBF2A)) 
    \i_/digit3[3]_i_135 
       (.I0(\i_/digit3[2]_i_79_n_0 ),
        .I1(abs_a[11]),
        .I2(abs_b[4]),
        .I3(\i_/digit3[2]_i_78_n_0 ),
        .I4(\i_/digit3[2]_i_77_n_0 ),
        .I5(\i_/digit3[2]_i_76_n_0 ),
        .O(\i_/digit3[3]_i_135_n_0 ));
  LUT5 #(
    .INIT(32'h8E117111)) 
    \i_/digit3[3]_i_136 
       (.I0(\i_/digit3[3]_i_147_n_0 ),
        .I1(\i_/digit3[2]_i_84_n_0 ),
        .I2(abs_b[4]),
        .I3(abs_a[12]),
        .I4(abs_b[5]),
        .O(\i_/digit3[3]_i_136_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \i_/digit3[3]_i_137 
       (.I0(\i_/digit3[3]_i_148_n_0 ),
        .I1(abs_b[4]),
        .I2(abs_a[13]),
        .I3(\i_/digit3[3]_i_149_n_0 ),
        .I4(\i_/digit3[3]_i_150_n_0 ),
        .I5(\i_/digit3[3]_i_151_n_0 ),
        .O(\i_/digit3[3]_i_137_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_138 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit3[3]_i_138_n_0 ));
  LUT6 #(
    .INIT(64'h80A8EAFEEAFE80A8)) 
    \i_/digit3[3]_i_139 
       (.I0(\i_/digit3[3]_i_152_n_0 ),
        .I1(\i_/digit3[1]_i_94_n_0 ),
        .I2(\i_/digit3[3]_i_153_n_0 ),
        .I3(\i_/digit3[1]_i_95_n_0 ),
        .I4(\digit3[3]_i_154_n_0 ),
        .I5(\i_/digit3[3]_i_144_n_0 ),
        .O(\i_/digit3[3]_i_139_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit3[3]_i_14 
       (.I0(\i_/digit3[3]_i_20_n_0 ),
        .I1(\i_/digit3[3]_i_21_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[18]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0]_0 [1]),
        .O(\i_/digit3[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_140 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit3[3]_i_140_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB22222222222)) 
    \i_/digit3[3]_i_141 
       (.I0(\i_/digit3[3]_i_144_n_0 ),
        .I1(\i_/digit3[3]_i_143_n_0 ),
        .I2(\i_/digit4[2]_i_181_0 [0]),
        .I3(a_IBUF[31]),
        .I4(a_IBUF[13]),
        .I5(abs_b[8]),
        .O(\i_/digit3[3]_i_141_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit3[3]_i_142 
       (.I0(\i_/digit3[3]_i_155_n_0 ),
        .I1(\i_/digit4[2]_i_181_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[14]),
        .I4(abs_b[8]),
        .I5(\i_/digit3[3]_i_156_n_0 ),
        .O(\i_/digit3[3]_i_142_n_0 ));
  LUT6 #(
    .INIT(64'h9666FFFF00009666)) 
    \i_/digit3[3]_i_143 
       (.I0(\i_/digit3[1]_i_108_n_0 ),
        .I1(\i_/digit3[1]_i_107_n_0 ),
        .I2(abs_b[6]),
        .I3(abs_a[13]),
        .I4(\i_/digit3[1]_i_106_n_0 ),
        .I5(\i_/digit3[1]_i_105_n_0 ),
        .O(\i_/digit3[3]_i_143_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit3[3]_i_144 
       (.I0(\i_/digit3[3]_i_157_n_0 ),
        .I1(\i_/digit3[3]_i_158_n_0 ),
        .I2(\digit3[3]_i_159_n_0 ),
        .I3(abs_b[7]),
        .I4(abs_a[13]),
        .I5(\i_/digit3[3]_i_160_n_0 ),
        .O(\i_/digit3[3]_i_144_n_0 ));
  LUT6 #(
    .INIT(64'h96695555AAAA9669)) 
    \i_/digit3[3]_i_145 
       (.I0(\i_/digit3[3]_i_153_n_0 ),
        .I1(\i_/digit3[1]_i_102_n_0 ),
        .I2(\i_/digit3[1]_i_103_n_0 ),
        .I3(\i_/digit3[1]_i_104_n_0 ),
        .I4(\i_/digit3[1]_i_101_n_0 ),
        .I5(\i_/digit3[3]_i_161_n_0 ),
        .O(\i_/digit3[3]_i_145_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_146 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit3[3]_i_146_n_0 ));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    \i_/digit3[3]_i_147 
       (.I0(\i_/digit3[3]_i_162_n_0 ),
        .I1(\i_/digit3[2]_i_93_n_0 ),
        .I2(\i_/digit3[3]_i_163_n_0 ),
        .I3(\i_/digit3[2]_i_87_n_0 ),
        .I4(\i_/digit3[2]_i_86_n_0 ),
        .I5(\i_/digit3[3]_i_164_n_0 ),
        .O(\i_/digit3[3]_i_147_n_0 ));
  LUT6 #(
    .INIT(64'hA880FEEAFEEAA880)) 
    \i_/digit3[3]_i_148 
       (.I0(\i_/digit3[3]_i_163_n_0 ),
        .I1(\i_/digit3[2]_i_87_n_0 ),
        .I2(\i_/digit3[2]_i_86_n_0 ),
        .I3(\i_/digit3[3]_i_164_n_0 ),
        .I4(\i_/digit3[2]_i_93_n_0 ),
        .I5(\i_/digit3[3]_i_162_n_0 ),
        .O(\i_/digit3[3]_i_148_n_0 ));
  LUT6 #(
    .INIT(64'h47FFB800B80047FF)) 
    \i_/digit3[3]_i_149 
       (.I0(\i_/digit4[2]_i_181_0 [3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[16]),
        .I3(abs_b[2]),
        .I4(\i_/digit3[3]_i_165_n_0 ),
        .I5(\i_/digit3[3]_i_166_n_0 ),
        .O(\i_/digit3[3]_i_149_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAAAAA8A800000)) 
    \i_/digit3[3]_i_15 
       (.I0(\i_/digit3[2]_i_4_n_0 ),
        .I1(\digit3_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[18]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit3[2]_i_5_n_0 ),
        .O(\i_/digit3[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_150 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit3[3]_i_150_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B8000000)) 
    \i_/digit3[3]_i_151 
       (.I0(\i_/digit4[2]_i_181_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[15]),
        .I3(abs_b[2]),
        .I4(\i_/digit3[2]_i_94_n_0 ),
        .I5(\i_/digit3[2]_i_93_n_0 ),
        .O(\i_/digit3[3]_i_151_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_152 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit3[3]_i_152_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_153 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit3[3]_i_153_n_0 ));
  LUT6 #(
    .INIT(64'hFF96960096009600)) 
    \i_/digit3[3]_i_155 
       (.I0(\digit3[3]_i_159_n_0 ),
        .I1(\i_/digit3[3]_i_158_n_0 ),
        .I2(\i_/digit3[3]_i_157_n_0 ),
        .I3(\i_/digit3[3]_i_160_n_0 ),
        .I4(abs_a[13]),
        .I5(abs_b[7]),
        .O(\i_/digit3[3]_i_155_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \i_/digit3[3]_i_156 
       (.I0(\i_/digit3[3]_i_169_n_0 ),
        .I1(\i_/digit3[3]_i_170_n_0 ),
        .I2(\i_/digit3[3]_i_171_n_0 ),
        .I3(abs_b[6]),
        .I4(abs_a[15]),
        .I5(\i_/digit3[3]_i_172_n_0 ),
        .O(\i_/digit3[3]_i_156_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_157 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit3[3]_i_157_n_0 ));
  LUT6 #(
    .INIT(64'h0000B800B800FFFF)) 
    \i_/digit3[3]_i_158 
       (.I0(\i_/digit4[2]_i_181_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[15]),
        .I3(abs_b[5]),
        .I4(\i_/digit3[1]_i_116_n_0 ),
        .I5(\digit3[1]_i_115_n_0 ),
        .O(\i_/digit3[3]_i_158_n_0 ));
  LUT6 #(
    .INIT(64'hBFAB2A022A02BFAB)) 
    \i_/digit3[3]_i_160 
       (.I0(\i_/digit3[3]_i_168_n_0 ),
        .I1(\i_/digit3[1]_i_110_n_0 ),
        .I2(\i_/digit3[1]_i_111_n_0 ),
        .I3(\i_/digit3[3]_i_175_n_0 ),
        .I4(\digit3[1]_i_115_n_0 ),
        .I5(\i_/digit3[3]_i_176_n_0 ),
        .O(\i_/digit3[3]_i_160_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_161 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit3[3]_i_161_n_0 ));
  LUT6 #(
    .INIT(64'h656A66AA00000000)) 
    \i_/digit3[3]_i_162 
       (.I0(abs_b[2]),
        .I1(abs_b[1]),
        .I2(abs_a[16]),
        .I3(\i_/digit3[3]_i_177_n_0 ),
        .I4(b_IBUF[0]),
        .I5(abs_a[14]),
        .O(\i_/digit3[3]_i_162_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_163 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit3[3]_i_163_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_164 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit3[3]_i_164_n_0 ));
  LUT6 #(
    .INIT(64'hF888080000000000)) 
    \i_/digit3[3]_i_165 
       (.I0(abs_a[16]),
        .I1(abs_b[0]),
        .I2(abs_a[17]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[15]),
        .O(\i_/digit3[3]_i_165_n_0 ));
  LUT6 #(
    .INIT(64'h27777888D8887888)) 
    \i_/digit3[3]_i_166 
       (.I0(b_IBUF[0]),
        .I1(abs_a[18]),
        .I2(abs_b[0]),
        .I3(abs_a[17]),
        .I4(abs_a[16]),
        .I5(abs_b[1]),
        .O(\i_/digit3[3]_i_166_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_167 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit3[3]_i_167_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_168 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit3[3]_i_168_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_169 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit3[3]_i_169_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit3[3]_i_17 
       (.I0(\i_/digit3[3]_i_26_n_0 ),
        .I1(\i_/digit3[3]_i_27_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[22]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [1]),
        .O(\i_/digit3[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h90F9F9F9909090F9)) 
    \i_/digit3[3]_i_170 
       (.I0(\i_/digit3[3]_i_173_n_0 ),
        .I1(\i_/digit3[3]_i_179_n_0 ),
        .I2(\i_/digit3[3]_i_157_n_0 ),
        .I3(\digit3[1]_i_115_n_0 ),
        .I4(\i_/digit3[1]_i_116_n_0 ),
        .I5(\i_/digit3[3]_i_180_n_0 ),
        .O(\i_/digit3[3]_i_170_n_0 ));
  LUT6 #(
    .INIT(64'h47FFFFFF000047FF)) 
    \i_/digit3[3]_i_171 
       (.I0(\i_/digit4[2]_i_181_0 [3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[16]),
        .I3(abs_b[5]),
        .I4(\i_/digit3[3]_i_174_n_0 ),
        .I5(\i_/digit3[3]_i_173_n_0 ),
        .O(\i_/digit3[3]_i_171_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit3[3]_i_172 
       (.I0(\i_/digit3[3]_i_181_n_0 ),
        .I1(\i_/digit3[3]_i_182_n_0 ),
        .I2(abs_b[5]),
        .I3(a_IBUF[17]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [0]),
        .O(\i_/digit3[3]_i_172_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \i_/digit3[3]_i_173 
       (.I0(\i_/digit3[3]_i_183_n_0 ),
        .I1(abs_b[4]),
        .I2(abs_a[16]),
        .I3(\i_/digit3[3]_i_184_n_0 ),
        .I4(\i_/digit3[3]_i_185_n_0 ),
        .I5(\i_/digit3[3]_i_186_n_0 ),
        .O(\i_/digit3[3]_i_173_n_0 ));
  LUT6 #(
    .INIT(64'hF88080F880F8F880)) 
    \i_/digit3[3]_i_174 
       (.I0(abs_a[15]),
        .I1(abs_b[4]),
        .I2(\i_/digit3[1]_i_122_n_0 ),
        .I3(\i_/digit3[1]_i_121_n_0 ),
        .I4(\i_/digit3[1]_i_120_n_0 ),
        .I5(\i_/digit3[1]_i_119_n_0 ),
        .O(\i_/digit3[3]_i_174_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_175 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit3[3]_i_175_n_0 ));
  LUT6 #(
    .INIT(64'h2BBB222BD444DDD4)) 
    \i_/digit3[3]_i_176 
       (.I0(\i_/digit3[1]_i_117_n_0 ),
        .I1(\i_/digit3[3]_i_187_n_0 ),
        .I2(\i_/digit3[3]_i_151_n_0 ),
        .I3(\i_/digit3[3]_i_150_n_0 ),
        .I4(\i_/digit3[3]_i_149_n_0 ),
        .I5(\i_/digit3[3]_i_180_n_0 ),
        .O(\i_/digit3[3]_i_176_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_177 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit3[3]_i_177_n_0 ));
  LUT5 #(
    .INIT(32'h566AC0C0)) 
    \i_/digit3[3]_i_179 
       (.I0(abs_b[5]),
        .I1(\i_/digit3[3]_i_188_n_0 ),
        .I2(\i_/digit3[1]_i_122_n_0 ),
        .I3(abs_b[4]),
        .I4(abs_a[15]),
        .O(\i_/digit3[3]_i_179_n_0 ));
  LUT6 #(
    .INIT(64'h066F06066F6F066F)) 
    \i_/digit3[3]_i_18 
       (.I0(\i_/digit3[3]_i_28_n_0 ),
        .I1(\digit3[3]_i_29_n_0 ),
        .I2(\i_/digit3[3]_i_30_n_0 ),
        .I3(\i_/digit3[3]_i_31_n_0 ),
        .I4(\i_/digit3[1]_i_10_n_0 ),
        .I5(\i_/digit3[1]_i_9_n_0 ),
        .O(\i_/digit3[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_180 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit3[3]_i_180_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    \i_/digit3[3]_i_181 
       (.I0(\i_/digit3[3]_i_189_n_0 ),
        .I1(\i_/digit3[3]_i_190_n_0 ),
        .I2(\i_/digit3[3]_i_191_n_0 ),
        .I3(\i_/digit3[3]_i_192_n_0 ),
        .I4(abs_b[4]),
        .I5(abs_a[17]),
        .O(\i_/digit3[3]_i_181_n_0 ));
  LUT6 #(
    .INIT(64'h8F08088F088F8F08)) 
    \i_/digit3[3]_i_182 
       (.I0(abs_a[16]),
        .I1(abs_b[4]),
        .I2(\i_/digit3[3]_i_183_n_0 ),
        .I3(\i_/digit3[3]_i_186_n_0 ),
        .I4(\i_/digit3[3]_i_185_n_0 ),
        .I5(\i_/digit3[3]_i_184_n_0 ),
        .O(\i_/digit3[3]_i_182_n_0 ));
  LUT6 #(
    .INIT(64'h75F71051105175F7)) 
    \i_/digit3[3]_i_183 
       (.I0(\i_/digit3[1]_i_119_n_0 ),
        .I1(\i_/digit3[3]_i_193_n_0 ),
        .I2(\i_/digit3[1]_i_127_n_0 ),
        .I3(\i_/digit3[1]_i_126_n_0 ),
        .I4(\i_/digit3[3]_i_194_n_0 ),
        .I5(\i_/digit3[1]_i_129_n_0 ),
        .O(\i_/digit3[3]_i_183_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_184 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[18]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [1]),
        .O(\i_/digit3[3]_i_184_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAAAAA8A800000)) 
    \i_/digit3[3]_i_185 
       (.I0(\i_/digit3[1]_i_129_n_0 ),
        .I1(\i_/digit4[2]_i_240_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[18]),
        .I4(abs_b[2]),
        .I5(\i_/digit3[1]_i_128_n_0 ),
        .O(\i_/digit3[3]_i_185_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit3[3]_i_186 
       (.I0(\i_/digit3[3]_i_195_n_0 ),
        .I1(\i_/digit4[2]_i_240_0 [2]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[19]),
        .I4(abs_b[2]),
        .I5(\i_/digit3[3]_i_196_n_0 ),
        .O(\i_/digit3[3]_i_186_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_187 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit3[3]_i_187_n_0 ));
  LUT6 #(
    .INIT(64'h6966996996996696)) 
    \i_/digit3[3]_i_188 
       (.I0(\i_/digit3[1]_i_129_n_0 ),
        .I1(\i_/digit3[3]_i_194_n_0 ),
        .I2(\i_/digit3[1]_i_126_n_0 ),
        .I3(\i_/digit3[1]_i_127_n_0 ),
        .I4(\i_/digit3[3]_i_193_n_0 ),
        .I5(\i_/digit3[1]_i_119_n_0 ),
        .O(\i_/digit3[3]_i_188_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_189 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit3[3]_i_189_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFF0000B800)) 
    \i_/digit3[3]_i_190 
       (.I0(\i_/digit4[2]_i_240_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[19]),
        .I3(abs_b[2]),
        .I4(\i_/digit3[3]_i_196_n_0 ),
        .I5(\i_/digit3[3]_i_195_n_0 ),
        .O(\i_/digit3[3]_i_190_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit3[3]_i_191 
       (.I0(\i_/digit3[3]_i_197_n_0 ),
        .I1(abs_b[2]),
        .I2(a_IBUF[20]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_240_0 [3]),
        .I5(\i_/digit3[3]_i_198_n_0 ),
        .O(\i_/digit3[3]_i_191_n_0 ));
  LUT6 #(
    .INIT(64'hA880FEEAFEEAA880)) 
    \i_/digit3[3]_i_192 
       (.I0(\i_/digit3[3]_i_184_n_0 ),
        .I1(\i_/digit3[1]_i_128_n_0 ),
        .I2(\i_/digit3[3]_i_199_n_0 ),
        .I3(\i_/digit3[1]_i_129_n_0 ),
        .I4(\i_/digit3[3]_i_195_n_0 ),
        .I5(\i_/digit3[3]_i_200_n_0 ),
        .O(\i_/digit3[3]_i_192_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_193 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[17]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [0]),
        .O(\i_/digit3[3]_i_193_n_0 ));
  LUT6 #(
    .INIT(64'h4848444848888888)) 
    \i_/digit3[3]_i_194 
       (.I0(abs_b[2]),
        .I1(abs_a[17]),
        .I2(abs_b[1]),
        .I3(b_IBUF[0]),
        .I4(abs_a[19]),
        .I5(\i_/digit3[3]_i_201_n_0 ),
        .O(\i_/digit3[3]_i_194_n_0 ));
  LUT6 #(
    .INIT(64'h653F6AC06AC06AC0)) 
    \i_/digit3[3]_i_195 
       (.I0(abs_a[21]),
        .I1(abs_b[1]),
        .I2(abs_a[19]),
        .I3(b_IBUF[0]),
        .I4(abs_a[20]),
        .I5(abs_b[0]),
        .O(\i_/digit3[3]_i_195_n_0 ));
  LUT6 #(
    .INIT(64'h0777FFFFDFFFFFFF)) 
    \i_/digit3[3]_i_196 
       (.I0(b_IBUF[0]),
        .I1(abs_a[20]),
        .I2(abs_b[0]),
        .I3(abs_a[19]),
        .I4(abs_a[18]),
        .I5(abs_b[1]),
        .O(\i_/digit3[3]_i_196_n_0 ));
  LUT6 #(
    .INIT(64'hF888080000000000)) 
    \i_/digit3[3]_i_197 
       (.I0(abs_a[20]),
        .I1(abs_b[0]),
        .I2(abs_a[21]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[19]),
        .O(\i_/digit3[3]_i_197_n_0 ));
  LUT6 #(
    .INIT(64'hD888877727778777)) 
    \i_/digit3[3]_i_198 
       (.I0(b_IBUF[0]),
        .I1(abs_a[22]),
        .I2(abs_b[0]),
        .I3(abs_a[21]),
        .I4(abs_a[20]),
        .I5(abs_b[1]),
        .O(\i_/digit3[3]_i_198_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_199 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[18]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [1]),
        .O(\i_/digit3[3]_i_199_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit3[3]_i_20 
       (.I0(abs_a[2]),
        .I1(abs_b[15]),
        .I2(\i_/digit3[3]_i_36_n_0 ),
        .I3(\i_/digit3[3]_i_37_n_0 ),
        .I4(\i_/digit3[3]_i_38_n_0 ),
        .I5(\i_/digit3[3]_i_39_n_0 ),
        .O(\i_/digit3[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0700DF00F8002000)) 
    \i_/digit3[3]_i_200 
       (.I0(b_IBUF[0]),
        .I1(abs_a[20]),
        .I2(\i_/digit3[3]_i_203_n_0 ),
        .I3(abs_a[18]),
        .I4(abs_b[1]),
        .I5(abs_b[2]),
        .O(\i_/digit3[3]_i_200_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_201 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit3[3]_i_201_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_203 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[20]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [3]),
        .O(\i_/digit3[3]_i_203_n_0 ));
  LUT6 #(
    .INIT(64'h1771711771177117)) 
    \i_/digit3[3]_i_21 
       (.I0(\i_/digit3[2]_i_11_n_0 ),
        .I1(\i_/digit3[2]_i_10_n_0 ),
        .I2(\i_/digit3[2]_i_9_n_0 ),
        .I3(\i_/digit3[2]_i_8_n_0 ),
        .I4(abs_b[15]),
        .I5(abs_a[1]),
        .O(\i_/digit3[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hA959555556A6AAAA)) 
    \i_/digit3[3]_i_26 
       (.I0(\i_/digit3[3]_i_40_n_0 ),
        .I1(b_IBUF[21]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[0] [0]),
        .I4(abs_a[1]),
        .I5(\i_/digit3[3]_i_41_n_0 ),
        .O(\i_/digit3[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000047FF47FFFFFF)) 
    \i_/digit3[3]_i_27 
       (.I0(\digit4_reg[0] [0]),
        .I1(b_IBUF[31]),
        .I2(b_IBUF[21]),
        .I3(abs_a[0]),
        .I4(\i_/digit3[2]_i_16_n_0 ),
        .I5(\i_/digit3[3]_i_28_n_0 ),
        .O(\i_/digit3[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit3[3]_i_28 
       (.I0(abs_b[18]),
        .I1(abs_a[2]),
        .I2(\i_/digit3[3]_i_42_n_0 ),
        .I3(\i_/digit3[3]_i_43_n_0 ),
        .I4(\i_/digit3[3]_i_44_n_0 ),
        .I5(\i_/digit3[3]_i_45_n_0 ),
        .O(\i_/digit3[3]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit3[3]_i_30 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[22]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[0] [1]),
        .O(\i_/digit3[3]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit3[3]_i_31 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[21]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[0] [0]),
        .O(\i_/digit3[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000FFFF8A80)) 
    \i_/digit3[3]_i_36 
       (.I0(abs_a[2]),
        .I1(\digit3_reg[0] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[15]),
        .I4(\i_/digit3[2]_i_20_n_0 ),
        .I5(\i_/digit3[2]_i_19_n_0 ),
        .O(\i_/digit3[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[3]_i_37 
       (.I0(\i_/digit3[3]_i_48_n_0 ),
        .I1(\i_/digit3[3]_i_49_n_0 ),
        .I2(b_IBUF[15]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0] [2]),
        .I5(abs_a[3]),
        .O(\i_/digit3[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hEAFE80A880A8EAFE)) 
    \i_/digit3[3]_i_38 
       (.I0(\i_/digit3[0]_i_9_n_0 ),
        .I1(\i_/digit3[2]_i_18_n_0 ),
        .I2(\i_/digit3[3]_i_50_n_0 ),
        .I3(\i_/digit3[2]_i_17_n_0 ),
        .I4(\i_/digit3[2]_i_19_n_0 ),
        .I5(\i_/digit3[3]_i_51_n_0 ),
        .O(\i_/digit3[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_39 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit3[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit3[3]_i_4 
       (.I0(\i_/digit3[3]_i_14_n_0 ),
        .I1(\i_/digit3[3]_i_15_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[19]),
        .I4(b_IBUF[31]),
        .I5(\digit3_reg[0]_0 [2]),
        .O(p_0[19]));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit3[3]_i_40 
       (.I0(abs_a[3]),
        .I1(abs_b[18]),
        .I2(\i_/digit3[3]_i_52_n_0 ),
        .I3(\i_/digit3[3]_i_53_n_0 ),
        .I4(\i_/digit3[3]_i_54_n_0 ),
        .I5(\i_/digit3[3]_i_55_n_0 ),
        .O(\i_/digit3[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hB22B2BB22BB22BB2)) 
    \i_/digit3[3]_i_41 
       (.I0(\i_/digit3[3]_i_45_n_0 ),
        .I1(\i_/digit3[3]_i_44_n_0 ),
        .I2(\i_/digit3[3]_i_43_n_0 ),
        .I3(\i_/digit3[3]_i_42_n_0 ),
        .I4(abs_a[2]),
        .I5(abs_b[18]),
        .O(\i_/digit3[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h0000757F757FFFFF)) 
    \i_/digit3[3]_i_42 
       (.I0(abs_a[2]),
        .I1(\digit3_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[18]),
        .I4(\i_/digit3[1]_i_29_n_0 ),
        .I5(\i_/digit3[1]_i_28_n_0 ),
        .O(\i_/digit3[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h6999696969999999)) 
    \i_/digit3[3]_i_43 
       (.I0(\i_/digit3[3]_i_56_n_0 ),
        .I1(\i_/digit3[3]_i_57_n_0 ),
        .I2(abs_a[3]),
        .I3(\digit3_reg[0]_0 [1]),
        .I4(b_IBUF[31]),
        .I5(b_IBUF[18]),
        .O(\i_/digit3[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h8EFF008E008E8EFF)) 
    \i_/digit3[3]_i_44 
       (.I0(\i_/digit3[1]_i_27_n_0 ),
        .I1(\i_/digit3[1]_i_26_n_0 ),
        .I2(\i_/digit3[3]_i_58_n_0 ),
        .I3(\i_/digit3[3]_i_47_n_0 ),
        .I4(\i_/digit3[1]_i_28_n_0 ),
        .I5(\i_/digit3[3]_i_59_n_0 ),
        .O(\i_/digit3[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_45 
       (.I0(b_IBUF[20]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [3]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit3[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_46 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[21]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [0]),
        .O(\i_/digit3[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_47 
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [2]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit3[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit3[3]_i_48 
       (.I0(abs_a[5]),
        .I1(abs_b[12]),
        .I2(\i_/digit3[3]_i_60_n_0 ),
        .I3(\i_/digit3[3]_i_61_n_0 ),
        .I4(\i_/digit3[3]_i_62_n_0 ),
        .I5(\i_/digit3[3]_i_63_n_0 ),
        .O(\i_/digit3[3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h2BB2B22BB22BB22B)) 
    \i_/digit3[3]_i_49 
       (.I0(\i_/digit3[2]_i_33_n_0 ),
        .I1(\i_/digit3[2]_i_32_n_0 ),
        .I2(\i_/digit3[2]_i_31_n_0 ),
        .I3(\i_/digit3[2]_i_30_n_0 ),
        .I4(abs_b[12]),
        .I5(abs_a[4]),
        .O(\i_/digit3[3]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit3[3]_i_5 
       (.I0(\i_/digit3[3]_i_17_n_0 ),
        .I1(\i_/digit3[3]_i_18_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[23]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [2]),
        .O(p_0[23]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_50 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit3[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h555596699669AAAA)) 
    \i_/digit3[3]_i_51 
       (.I0(\i_/digit3[3]_i_64_n_0 ),
        .I1(\i_/digit3[3]_i_65_n_0 ),
        .I2(\i_/digit3[2]_i_26_n_0 ),
        .I3(\i_/digit3[2]_i_27_n_0 ),
        .I4(\i_/digit3[2]_i_29_n_0 ),
        .I5(\i_/digit3[2]_i_28_n_0 ),
        .O(\i_/digit3[3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit3[3]_i_52 
       (.I0(abs_a[3]),
        .I1(\digit3_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[18]),
        .I4(\i_/digit3[3]_i_57_n_0 ),
        .I5(\i_/digit3[3]_i_56_n_0 ),
        .O(\i_/digit3[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[3]_i_53 
       (.I0(\i_/digit3[3]_i_66_n_0 ),
        .I1(\i_/digit3[3]_i_67_n_0 ),
        .I2(b_IBUF[18]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0]_0 [1]),
        .I5(abs_a[4]),
        .O(\i_/digit3[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_54 
       (.I0(b_IBUF[20]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [3]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit3[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hFEEAA880A880FEEA)) 
    \i_/digit3[3]_i_55 
       (.I0(\i_/digit4[0]_i_17_n_0 ),
        .I1(\i_/digit3[1]_i_28_n_0 ),
        .I2(\i_/digit3[1]_i_29_n_0 ),
        .I3(\i_/digit3[3]_i_68_n_0 ),
        .I4(\i_/digit3[3]_i_56_n_0 ),
        .I5(\i_/digit3[3]_i_69_n_0 ),
        .O(\i_/digit3[3]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit3[3]_i_56 
       (.I0(\i_/digit3[3]_i_70_n_0 ),
        .I1(abs_b[15]),
        .I2(abs_a[5]),
        .I3(\i_/digit3[3]_i_71_n_0 ),
        .I4(\i_/digit3[3]_i_72_n_0 ),
        .I5(\i_/digit3[3]_i_73_n_0 ),
        .O(\i_/digit3[3]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hD44D4DD44DD44DD4)) 
    \i_/digit3[3]_i_57 
       (.I0(\i_/digit3[1]_i_42_n_0 ),
        .I1(\i_/digit3[1]_i_41_n_0 ),
        .I2(\i_/digit3[1]_i_40_n_0 ),
        .I3(\i_/digit3[1]_i_39_n_0 ),
        .I4(abs_b[15]),
        .I5(abs_a[4]),
        .O(\i_/digit3[3]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_58 
       (.I0(b_IBUF[18]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit3[3]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h555569966996AAAA)) 
    \i_/digit3[3]_i_59 
       (.I0(\i_/digit3[3]_i_68_n_0 ),
        .I1(\digit3[1]_i_35_n_0 ),
        .I2(\i_/digit3[1]_i_36_n_0 ),
        .I3(\i_/digit3[3]_i_74_n_0 ),
        .I4(\i_/digit3[1]_i_37_n_0 ),
        .I5(\i_/digit3[1]_i_38_n_0 ),
        .O(\i_/digit3[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit3[3]_i_60 
       (.I0(\i_/digit3[2]_i_41_n_0 ),
        .I1(abs_a[5]),
        .I2(\digit2_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[12]),
        .I5(\i_/digit3[2]_i_40_n_0 ),
        .O(\i_/digit3[3]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit3[3]_i_61 
       (.I0(\digit3[3]_i_75_n_0 ),
        .I1(\i_/digit3[3]_i_76_n_0 ),
        .I2(b_IBUF[12]),
        .I3(b_IBUF[31]),
        .I4(\digit2_reg[0] [3]),
        .I5(abs_a[6]),
        .O(\i_/digit3[3]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0606066F066F6F6F)) 
    \i_/digit3[3]_i_62 
       (.I0(\i_/digit3[3]_i_77_n_0 ),
        .I1(\i_/digit3[2]_i_41_n_0 ),
        .I2(\i_/digit3[3]_i_78_n_0 ),
        .I3(\i_/digit3[2]_i_36_n_0 ),
        .I4(\i_/digit3[2]_i_37_n_0 ),
        .I5(\i_/digit3[3]_i_79_n_0 ),
        .O(\i_/digit3[3]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_63 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit3[3]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_64 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit3[3]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_65 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit3[3]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \i_/digit3[3]_i_66 
       (.I0(\i_/digit3[3]_i_80_n_0 ),
        .I1(\i_/digit3[3]_i_81_n_0 ),
        .I2(\i_/digit3[3]_i_82_n_0 ),
        .I3(abs_a[5]),
        .I4(abs_b[16]),
        .I5(\i_/digit3[3]_i_83_n_0 ),
        .O(\i_/digit3[3]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB22B2B2B2BB2B2B2)) 
    \i_/digit3[3]_i_67 
       (.I0(\i_/digit3[3]_i_72_n_0 ),
        .I1(\i_/digit3[3]_i_73_n_0 ),
        .I2(\i_/digit3[3]_i_71_n_0 ),
        .I3(abs_a[5]),
        .I4(abs_b[15]),
        .I5(\i_/digit3[3]_i_70_n_0 ),
        .O(\i_/digit3[3]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_68 
       (.I0(b_IBUF[18]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit3[3]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hA66565A665A6A665)) 
    \i_/digit3[3]_i_69 
       (.I0(\i_/digit3[3]_i_84_n_0 ),
        .I1(\i_/digit3[1]_i_42_n_0 ),
        .I2(\i_/digit3[1]_i_41_n_0 ),
        .I3(\i_/digit3[1]_i_40_n_0 ),
        .I4(\i_/digit3[1]_i_39_n_0 ),
        .I5(\i_/digit3[3]_i_85_n_0 ),
        .O(\i_/digit3[3]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBFFF2A222AAA)) 
    \i_/digit3[3]_i_70 
       (.I0(\i_/digit3[1]_i_51_n_0 ),
        .I1(abs_a[5]),
        .I2(\digit3_reg[0] [2]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[15]),
        .I5(\i_/digit3[1]_i_52_n_0 ),
        .O(\i_/digit3[3]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hA959555556A6AAAA)) 
    \i_/digit3[3]_i_71 
       (.I0(\i_/digit3[3]_i_86_n_0 ),
        .I1(b_IBUF[15]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0] [2]),
        .I4(abs_a[6]),
        .I5(\i_/digit3[3]_i_87_n_0 ),
        .O(\i_/digit3[3]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h2BFF002B002B2BFF)) 
    \i_/digit3[3]_i_72 
       (.I0(\i_/digit3[1]_i_48_n_0 ),
        .I1(\i_/digit3[1]_i_49_n_0 ),
        .I2(\i_/digit3[3]_i_88_n_0 ),
        .I3(\i_/digit3[3]_i_85_n_0 ),
        .I4(\i_/digit3[1]_i_51_n_0 ),
        .I5(\i_/digit3[3]_i_89_n_0 ),
        .O(\i_/digit3[3]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_73 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit3[3]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_74 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit3[3]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hA8800000FEEAC0C0)) 
    \i_/digit3[3]_i_76 
       (.I0(abs_b[10]),
        .I1(\i_/digit3[2]_i_46_n_0 ),
        .I2(\i_/digit3[2]_i_45_n_0 ),
        .I3(abs_b[9]),
        .I4(abs_a[6]),
        .I5(\i_/digit3[2]_i_49_n_0 ),
        .O(\i_/digit3[3]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h69965555AAAA6996)) 
    \i_/digit3[3]_i_77 
       (.I0(\i_/digit3[3]_i_94_n_0 ),
        .I1(\i_/digit3[2]_i_44_n_0 ),
        .I2(\i_/digit3[2]_i_45_n_0 ),
        .I3(\i_/digit3[2]_i_46_n_0 ),
        .I4(\i_/digit3[2]_i_47_n_0 ),
        .I5(\i_/digit3[3]_i_95_n_0 ),
        .O(\i_/digit3[3]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_78 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit3[3]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_79 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit3[3]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hA959555556A6AAAA)) 
    \i_/digit3[3]_i_80 
       (.I0(\i_/digit3[3]_i_96_n_0 ),
        .I1(b_IBUF[15]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0] [2]),
        .I4(abs_a[7]),
        .I5(\i_/digit3[3]_i_97_n_0 ),
        .O(\i_/digit3[3]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_81 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit3[3]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEAAA80888000)) 
    \i_/digit3[3]_i_82 
       (.I0(\i_/digit3[3]_i_87_n_0 ),
        .I1(abs_a[6]),
        .I2(\digit3_reg[0] [2]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[15]),
        .I5(\i_/digit3[3]_i_86_n_0 ),
        .O(\i_/digit3[3]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hB2FF00B200B2B2FF)) 
    \i_/digit3[3]_i_83 
       (.I0(\i_/digit3[1]_i_52_n_0 ),
        .I1(\i_/digit3[3]_i_98_n_0 ),
        .I2(\i_/digit3[1]_i_51_n_0 ),
        .I3(\i_/digit3[3]_i_99_n_0 ),
        .I4(\i_/digit3[3]_i_100_n_0 ),
        .I5(\i_/digit3[3]_i_87_n_0 ),
        .O(\i_/digit3[3]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_84 
       (.I0(b_IBUF[18]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit3[3]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_85 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit3[3]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h8F08088F088F8F08)) 
    \i_/digit3[3]_i_86 
       (.I0(abs_a[6]),
        .I1(abs_b[13]),
        .I2(\i_/digit3[1]_i_62_n_0 ),
        .I3(\digit3[1]_i_61_n_0 ),
        .I4(\i_/digit3[1]_i_60_n_0 ),
        .I5(\i_/digit3[1]_i_59_n_0 ),
        .O(\i_/digit3[3]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit3[3]_i_87 
       (.I0(abs_a[8]),
        .I1(abs_b[12]),
        .I2(\i_/digit3[3]_i_101_n_0 ),
        .I3(\i_/digit3[3]_i_102_n_0 ),
        .I4(\i_/digit3[3]_i_103_n_0 ),
        .I5(\i_/digit3[3]_i_104_n_0 ),
        .O(\i_/digit3[3]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_88 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit3[3]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'h65A6A6A6656565A6)) 
    \i_/digit3[3]_i_89 
       (.I0(\i_/digit3[3]_i_98_n_0 ),
        .I1(\i_/digit3[1]_i_58_n_0 ),
        .I2(\i_/digit3[3]_i_105_n_0 ),
        .I3(\i_/digit3[3]_i_61_n_0 ),
        .I4(\i_/digit3[3]_i_60_n_0 ),
        .I5(\i_/digit3[1]_i_63_n_0 ),
        .O(\i_/digit3[3]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEAAA80888000)) 
    \i_/digit3[3]_i_90 
       (.I0(\i_/digit3[2]_i_57_n_0 ),
        .I1(abs_a[8]),
        .I2(\digit2_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[9]),
        .I5(\i_/digit3[3]_i_106_n_0 ),
        .O(\i_/digit3[3]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hF660F6F66060F660)) 
    \i_/digit3[3]_i_92 
       (.I0(\i_/digit3[2]_i_58_n_0 ),
        .I1(\i_/digit3[2]_i_57_n_0 ),
        .I2(\i_/digit3[2]_i_55_n_0 ),
        .I3(\i_/digit3[2]_i_56_n_0 ),
        .I4(\i_/digit3[2]_i_51_n_0 ),
        .I5(\i_/digit3[2]_i_52_n_0 ),
        .O(\i_/digit3[3]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_93 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit3[3]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_94 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit3[3]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_95 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit3[3]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h7117177117711771)) 
    \i_/digit3[3]_i_96 
       (.I0(\i_/digit3[3]_i_104_n_0 ),
        .I1(\i_/digit3[3]_i_103_n_0 ),
        .I2(\i_/digit3[3]_i_102_n_0 ),
        .I3(\i_/digit3[3]_i_101_n_0 ),
        .I4(abs_b[12]),
        .I5(abs_a[8]),
        .O(\i_/digit3[3]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit3[3]_i_97 
       (.I0(\i_/digit3[3]_i_109_n_0 ),
        .I1(\i_/digit3[3]_i_110_n_0 ),
        .I2(\digit3[3]_i_111_n_0 ),
        .I3(abs_b[12]),
        .I4(abs_a[9]),
        .I5(\i_/digit3[3]_i_112_n_0 ),
        .O(\i_/digit3[3]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_98 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit3[3]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit3[3]_i_99 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit3[3]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_10 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[23]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [2]),
        .O(\i_/digit4[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_11 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[22]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [1]),
        .O(\i_/digit4[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA9956A6A566A6A6A)) 
    \i_/digit4[0]_i_13 
       (.I0(\i_/digit4[0]_i_16_n_0 ),
        .I1(\i_/digit3[3]_i_53_n_0 ),
        .I2(\i_/digit3[3]_i_52_n_0 ),
        .I3(abs_b[18]),
        .I4(abs_a[3]),
        .I5(abs_b[19]),
        .O(\i_/digit4[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF966696660000)) 
    \i_/digit4[0]_i_14 
       (.I0(\i_/digit3[3]_i_53_n_0 ),
        .I1(\i_/digit3[3]_i_52_n_0 ),
        .I2(abs_b[18]),
        .I3(abs_a[3]),
        .I4(\i_/digit3[3]_i_55_n_0 ),
        .I5(\i_/digit3[3]_i_54_n_0 ),
        .O(\i_/digit4[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6900FF6996FF0096)) 
    \i_/digit4[0]_i_15 
       (.I0(\i_/digit4[0]_i_17_n_0 ),
        .I1(\i_/digit3[3]_i_42_n_0 ),
        .I2(\i_/digit3[3]_i_43_n_0 ),
        .I3(\i_/digit3[3]_i_44_n_0 ),
        .I4(\i_/digit3[3]_i_45_n_0 ),
        .I5(\i_/digit4[2]_i_54_n_0 ),
        .O(\i_/digit4[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9699669669669969)) 
    \i_/digit4[0]_i_16 
       (.I0(\i_/digit4[0]_i_18_n_0 ),
        .I1(\digit4[0]_i_19_n_0 ),
        .I2(\i_/digit3[3]_i_67_n_0 ),
        .I3(\i_/digit4[0]_i_20_n_0 ),
        .I4(\i_/digit3[3]_i_66_n_0 ),
        .I5(\i_/digit4[0]_i_21_n_0 ),
        .O(\i_/digit4[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_17 
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [2]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit4[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9666AAAA99965A5A)) 
    \i_/digit4[0]_i_18 
       (.I0(\i_/digit4[0]_i_22_n_0 ),
        .I1(abs_b[16]),
        .I2(\i_/digit3[3]_i_82_n_0 ),
        .I3(abs_b[15]),
        .I4(abs_a[6]),
        .I5(\i_/digit3[3]_i_80_n_0 ),
        .O(\i_/digit4[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit4[0]_i_2 
       (.I0(\i_/digit4[0]_i_4_n_0 ),
        .I1(\i_/digit4[0]_i_5_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[24]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [3]),
        .O(p_0[24]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_20 
       (.I0(b_IBUF[18]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit4[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_21 
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [2]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit4[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    \i_/digit4[0]_i_22 
       (.I0(\i_/digit3[3]_i_97_n_0 ),
        .I1(\i_/digit4[0]_i_25_n_0 ),
        .I2(\i_/digit3[3]_i_96_n_0 ),
        .I3(\i_/digit4[0]_i_26_n_0 ),
        .I4(\i_/digit4[0]_i_27_n_0 ),
        .I5(\i_/digit4[0]_i_28_n_0 ),
        .O(\i_/digit4[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_23 
       (.I0(b_IBUF[18]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit4[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_24 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit4[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_25 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit4[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_26 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit4[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h17717117E88E8EE8)) 
    \i_/digit4[0]_i_27 
       (.I0(\i_/digit3[3]_i_110_n_0 ),
        .I1(\i_/digit3[3]_i_109_n_0 ),
        .I2(\i_/digit3[3]_i_112_n_0 ),
        .I3(\i_/digit4[0]_i_29_n_0 ),
        .I4(\digit3[3]_i_111_n_0 ),
        .I5(\i_/digit4[2]_i_172_n_0 ),
        .O(\i_/digit4[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h999696665AAA5AAA)) 
    \i_/digit4[0]_i_28 
       (.I0(\i_/digit4[0]_i_30_n_0 ),
        .I1(abs_b[13]),
        .I2(\digit3[3]_i_111_n_0 ),
        .I3(\i_/digit3[3]_i_112_n_0 ),
        .I4(abs_b[12]),
        .I5(abs_a[9]),
        .O(\i_/digit4[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_29 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit4[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit4[0]_i_3 
       (.I0(\i_/digit4[1]_i_10_n_0 ),
        .I1(\i_/digit4[1]_i_9_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[28]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[1] [3]),
        .O(p_0[28]));
  LUT6 #(
    .INIT(64'h9666999669996669)) 
    \i_/digit4[0]_i_30 
       (.I0(\i_/digit4[0]_i_31_n_0 ),
        .I1(\i_/digit4[0]_i_32_n_0 ),
        .I2(\i_/digit4[0]_i_33_n_0 ),
        .I3(\i_/digit3[3]_i_126_n_0 ),
        .I4(\i_/digit3[3]_i_125_n_0 ),
        .I5(\i_/digit4[0]_i_34_n_0 ),
        .O(\i_/digit4[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h009696FFFF696900)) 
    \i_/digit4[0]_i_31 
       (.I0(\i_/digit3[3]_i_142_n_0 ),
        .I1(\i_/digit3[3]_i_141_n_0 ),
        .I2(\i_/digit3[3]_i_140_n_0 ),
        .I3(\i_/digit3[3]_i_139_n_0 ),
        .I4(\i_/digit4[0]_i_35_n_0 ),
        .I5(\i_/digit4[2]_i_225_n_0 ),
        .O(\i_/digit4[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hA66699A66AAA556A)) 
    \i_/digit4[0]_i_32 
       (.I0(\i_/digit4[0]_i_36_n_0 ),
        .I1(abs_a[12]),
        .I2(abs_b[9]),
        .I3(\i_/digit3[3]_i_141_n_0 ),
        .I4(\i_/digit3[3]_i_142_n_0 ),
        .I5(abs_b[10]),
        .O(\i_/digit4[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_33 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit4[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_34 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit4[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_35 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit4[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    \i_/digit4[0]_i_36 
       (.I0(\i_/digit4[0]_i_37_n_0 ),
        .I1(\i_/digit4[0]_i_38_n_0 ),
        .I2(\i_/digit4[0]_i_39_n_0 ),
        .I3(\i_/digit3[3]_i_156_n_0 ),
        .I4(\i_/digit3[3]_i_155_n_0 ),
        .I5(\i_/digit4[0]_i_40_n_0 ),
        .O(\i_/digit4[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h6A56566A566A6A56)) 
    \i_/digit4[0]_i_37 
       (.I0(\i_/digit4[2]_i_275_n_0 ),
        .I1(\i_/digit3[3]_i_169_n_0 ),
        .I2(\i_/digit3[3]_i_170_n_0 ),
        .I3(\i_/digit3[3]_i_171_n_0 ),
        .I4(\i_/digit4[0]_i_41_n_0 ),
        .I5(\i_/digit3[3]_i_172_n_0 ),
        .O(\i_/digit4[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit4[0]_i_38 
       (.I0(\i_/digit4[0]_i_42_n_0 ),
        .I1(\i_/digit4[0]_i_43_n_0 ),
        .I2(\i_/digit4[0]_i_44_n_0 ),
        .I3(abs_a[15]),
        .I4(abs_b[7]),
        .I5(\i_/digit4[0]_i_45_n_0 ),
        .O(\i_/digit4[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_39 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit4[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit4[0]_i_4 
       (.I0(abs_a[1]),
        .I1(abs_b[20]),
        .I2(\i_/digit4[0]_i_7_n_0 ),
        .I3(\i_/digit4[0]_i_8_n_0 ),
        .I4(\i_/digit4[0]_i_9_n_0 ),
        .I5(\i_/digit4[0]_i_10_n_0 ),
        .O(\i_/digit4[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_40 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit4[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_41 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit4[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit4[0]_i_42 
       (.I0(\i_/digit4[0]_i_46_n_0 ),
        .I1(\i_/digit4[2]_i_240_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[18]),
        .I4(abs_b[5]),
        .I5(\i_/digit4[0]_i_47_n_0 ),
        .O(\i_/digit4[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_43 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[17]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [0]),
        .O(\i_/digit4[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h000047FF47FFFFFF)) 
    \i_/digit4[0]_i_44 
       (.I0(\i_/digit4[2]_i_240_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[17]),
        .I3(abs_b[5]),
        .I4(\i_/digit3[3]_i_182_n_0 ),
        .I5(\i_/digit3[3]_i_181_n_0 ),
        .O(\i_/digit4[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h2BFF002B002B2BFF)) 
    \i_/digit4[0]_i_45 
       (.I0(\i_/digit3[3]_i_173_n_0 ),
        .I1(\i_/digit3[3]_i_174_n_0 ),
        .I2(\i_/digit4[0]_i_48_n_0 ),
        .I3(\i_/digit4[0]_i_41_n_0 ),
        .I4(\i_/digit3[3]_i_181_n_0 ),
        .I5(\i_/digit4[0]_i_49_n_0 ),
        .O(\i_/digit4[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h99696966A5AAA5AA)) 
    \i_/digit4[0]_i_46 
       (.I0(\i_/digit4[0]_i_50_n_0 ),
        .I1(abs_b[4]),
        .I2(\i_/digit3[3]_i_191_n_0 ),
        .I3(\i_/digit3[3]_i_190_n_0 ),
        .I4(abs_b[3]),
        .I5(abs_a[18]),
        .O(\i_/digit4[0]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFF69696969000000)) 
    \i_/digit4[0]_i_47 
       (.I0(\i_/digit3[3]_i_191_n_0 ),
        .I1(\i_/digit3[3]_i_190_n_0 ),
        .I2(\i_/digit3[3]_i_189_n_0 ),
        .I3(abs_a[17]),
        .I4(abs_b[4]),
        .I5(\i_/digit3[3]_i_192_n_0 ),
        .O(\i_/digit4[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_48 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit4[0]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h95A90303)) 
    \i_/digit4[0]_i_49 
       (.I0(abs_b[5]),
        .I1(\digit4[0]_i_51_n_0 ),
        .I2(\i_/digit3[3]_i_183_n_0 ),
        .I3(abs_b[4]),
        .I4(abs_a[16]),
        .O(\i_/digit4[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h96FFFFFF00969696)) 
    \i_/digit4[0]_i_5 
       (.I0(\i_/digit3[3]_i_26_n_0 ),
        .I1(\i_/digit3[3]_i_27_n_0 ),
        .I2(\i_/digit4[0]_i_11_n_0 ),
        .I3(abs_b[21]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit3[3]_i_18_n_0 ),
        .O(\i_/digit4[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BD42B2BD4)) 
    \i_/digit4[0]_i_50 
       (.I0(\i_/digit3[3]_i_198_n_0 ),
        .I1(\i_/digit4[0]_i_52_n_0 ),
        .I2(\i_/digit3[3]_i_197_n_0 ),
        .I3(\i_/digit4[0]_i_53_n_0 ),
        .I4(\i_/digit4[0]_i_54_n_0 ),
        .I5(\i_/digit4[0]_i_55_n_0 ),
        .O(\i_/digit4[0]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_52 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[20]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [3]),
        .O(\i_/digit4[0]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_53 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[20]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [3]),
        .O(\i_/digit4[0]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0F77F08878887888)) 
    \i_/digit4[0]_i_54 
       (.I0(abs_a[22]),
        .I1(abs_b[0]),
        .I2(abs_a[23]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[21]),
        .O(\i_/digit4[0]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h9F9FAF5F9F5F9F5F)) 
    \i_/digit4[0]_i_55 
       (.I0(abs_b[2]),
        .I1(abs_b[1]),
        .I2(abs_a[20]),
        .I3(\i_/digit4[0]_i_56_n_0 ),
        .I4(abs_a[22]),
        .I5(b_IBUF[0]),
        .O(\i_/digit4[0]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[0]_i_56 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[22]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [1]),
        .O(\i_/digit4[0]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h151115557F777FFF)) 
    \i_/digit4[0]_i_7 
       (.I0(\i_/digit3[3]_i_41_n_0 ),
        .I1(abs_a[1]),
        .I2(\digit4_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[21]),
        .I5(\i_/digit3[3]_i_40_n_0 ),
        .O(\i_/digit4[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit4[0]_i_8 
       (.I0(\i_/digit4[0]_i_13_n_0 ),
        .I1(\i_/digit4[0]_i_14_n_0 ),
        .I2(b_IBUF[21]),
        .I3(b_IBUF[31]),
        .I4(\digit4_reg[0] [0]),
        .I5(abs_a[2]),
        .O(\i_/digit4[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h17FF0017001717FF)) 
    \i_/digit4[0]_i_9 
       (.I0(\i_/digit3[3]_i_28_n_0 ),
        .I1(\i_/digit3[2]_i_16_n_0 ),
        .I2(\i_/digit3[3]_i_46_n_0 ),
        .I3(\i_/digit4[0]_i_11_n_0 ),
        .I4(\i_/digit3[3]_i_40_n_0 ),
        .I5(\i_/digit4[0]_i_15_n_0 ),
        .O(\i_/digit4[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit4[1]_i_10 
       (.I0(\i_/digit4[2]_i_20_n_0 ),
        .I1(\i_/digit4[2]_i_30_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[27]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[1] [2]),
        .O(\i_/digit4[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit4[1]_i_4 
       (.I0(\i_/digit4[2]_i_8_n_0 ),
        .I1(\i_/digit4[2]_i_10_n_0 ),
        .I2(a_IBUF[0]),
        .I3(b_IBUF[25]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[1] [0]),
        .O(\a[0] ));
  LUT4 #(
    .INIT(16'h65A6)) 
    \i_/digit4[1]_i_6 
       (.I0(\i_/digit4[2]_i_13_n_0 ),
        .I1(\i_/digit4[1]_i_8_n_0 ),
        .I2(\i_/digit4[1]_i_9_n_0 ),
        .I3(\i_/digit4[1]_i_10_n_0 ),
        .O(\i_/digit4[1]_i_10_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit4[1]_i_7 
       (.I0(\i_/digit4[2]_i_17_n_0 ),
        .I1(\i_/digit4[2]_i_16_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[28]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[1] [3]),
        .O(\b[28] ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit4[1]_i_8 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[28]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[1] [3]),
        .O(\i_/digit4[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h202AAAAABABFFFFF)) 
    \i_/digit4[1]_i_9 
       (.I0(\i_/digit4[3]_i_10_n_0 ),
        .I1(\digit4_reg[1] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[27]),
        .I4(a_IBUF[0]),
        .I5(\i_/digit4[3]_i_8_n_0 ),
        .O(\i_/digit4[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB22222222222)) 
    \i_/digit4[2]_i_10 
       (.I0(\i_/digit4[0]_i_4_n_0 ),
        .I1(\i_/digit4[0]_i_5_n_0 ),
        .I2(\digit4_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[24]),
        .I5(a_IBUF[0]),
        .O(\i_/digit4[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_100 
       (.I0(b_IBUF[21]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [0]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit4[2]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h96695555AAAA9669)) 
    \i_/digit4[2]_i_101 
       (.I0(\i_/digit4[2]_i_122_n_0 ),
        .I1(\i_/digit4[2]_i_105_n_0 ),
        .I2(\i_/digit4[2]_i_104_n_0 ),
        .I3(\i_/digit4[2]_i_103_n_0 ),
        .I4(\i_/digit4[2]_i_102_n_0 ),
        .I5(\i_/digit4[2]_i_123_n_0 ),
        .O(\i_/digit4[2]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h6F066F6F06066F06)) 
    \i_/digit4[2]_i_102 
       (.I0(\i_/digit4[2]_i_112_n_0 ),
        .I1(\i_/digit4[2]_i_124_n_0 ),
        .I2(\i_/digit4[2]_i_125_n_0 ),
        .I3(\i_/digit4[3]_i_65_n_0 ),
        .I4(\i_/digit4[2]_i_126_n_0 ),
        .I5(\i_/digit4[3]_i_66_n_0 ),
        .O(\i_/digit4[2]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit4[2]_i_103 
       (.I0(abs_a[8]),
        .I1(\digit3_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[18]),
        .I4(\i_/digit4[2]_i_113_n_0 ),
        .I5(\i_/digit4[2]_i_112_n_0 ),
        .O(\i_/digit4[2]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_104 
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [2]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit4[2]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h6A666AAA95999555)) 
    \i_/digit4[2]_i_105 
       (.I0(\i_/digit4[2]_i_110_n_0 ),
        .I1(abs_a[9]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[18]),
        .I5(\i_/digit4[2]_i_127_n_0 ),
        .O(\i_/digit4[2]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h56A6AAAAA9595555)) 
    \i_/digit4[2]_i_106 
       (.I0(\i_/digit4[2]_i_128_n_0 ),
        .I1(b_IBUF[18]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0]_0 [1]),
        .I4(abs_a[10]),
        .I5(\i_/digit4[2]_i_130_n_0 ),
        .O(\i_/digit4[2]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit4[2]_i_108 
       (.I0(abs_a[9]),
        .I1(\digit3_reg[0]_0 [1]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[18]),
        .I4(\i_/digit4[2]_i_127_n_0 ),
        .I5(\i_/digit4[2]_i_110_n_0 ),
        .O(\i_/digit4[2]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit4[2]_i_110 
       (.I0(\i_/digit4[2]_i_135_n_0 ),
        .I1(\i_/digit4[2]_i_136_n_0 ),
        .I2(\i_/digit4[2]_i_137_n_0 ),
        .I3(abs_a[11]),
        .I4(abs_b[15]),
        .I5(\i_/digit4[2]_i_139_n_0 ),
        .O(\i_/digit4[2]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h17717117E88E8EE8)) 
    \i_/digit4[2]_i_111 
       (.I0(\i_/digit4[2]_i_140_n_0 ),
        .I1(\i_/digit4[2]_i_141_n_0 ),
        .I2(\i_/digit4[2]_i_142_n_0 ),
        .I3(\i_/digit4[2]_i_143_n_0 ),
        .I4(\i_/digit4[2]_i_144_n_0 ),
        .I5(\i_/digit4[2]_i_145_n_0 ),
        .O(\i_/digit4[2]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \i_/digit4[2]_i_112 
       (.I0(\i_/digit4[2]_i_141_n_0 ),
        .I1(\i_/digit4[2]_i_140_n_0 ),
        .I2(\i_/digit4[2]_i_144_n_0 ),
        .I3(abs_a[10]),
        .I4(abs_b[15]),
        .I5(\i_/digit4[2]_i_142_n_0 ),
        .O(\i_/digit4[2]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h8778FFFF00008778)) 
    \i_/digit4[2]_i_113 
       (.I0(abs_a[9]),
        .I1(abs_b[15]),
        .I2(\i_/digit4[2]_i_146_n_0 ),
        .I3(\i_/digit4[2]_i_147_n_0 ),
        .I4(\i_/digit4[2]_i_148_n_0 ),
        .I5(\i_/digit4[2]_i_149_n_0 ),
        .O(\i_/digit4[2]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_114 
       (.I0(b_IBUF[18]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit4[2]_i_114_n_0 ));
  LUT5 #(
    .INIT(32'h87777888)) 
    \i_/digit4[2]_i_115 
       (.I0(abs_a[6]),
        .I1(abs_b[21]),
        .I2(abs_b[18]),
        .I3(abs_a[10]),
        .I4(\i_/digit4[2]_i_150_n_0 ),
        .O(\i_/digit4[2]_i_115_n_0 ));
  LUT5 #(
    .INIT(32'h70F78F08)) 
    \i_/digit4[2]_i_116 
       (.I0(abs_b[17]),
        .I1(abs_a[10]),
        .I2(\i_/digit4[2]_i_128_n_0 ),
        .I3(\i_/digit4[2]_i_130_n_0 ),
        .I4(\i_/digit4[2]_i_152_n_0 ),
        .O(\i_/digit4[2]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hF6F660F660F66060)) 
    \i_/digit4[2]_i_117 
       (.I0(\i_/digit4[0]_i_28_n_0 ),
        .I1(\i_/digit4[0]_i_27_n_0 ),
        .I2(\i_/digit4[0]_i_26_n_0 ),
        .I3(\i_/digit3[3]_i_96_n_0 ),
        .I4(\i_/digit4[0]_i_25_n_0 ),
        .I5(\i_/digit3[3]_i_97_n_0 ),
        .O(\i_/digit4[2]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_118 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit4[2]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit4[2]_i_119 
       (.I0(\i_/digit4[2]_i_153_n_0 ),
        .I1(abs_a[8]),
        .I2(\digit3_reg[0] [2]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[15]),
        .I5(\i_/digit4[0]_i_28_n_0 ),
        .O(\i_/digit4[2]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'hF666FFF660006660)) 
    \i_/digit4[2]_i_12 
       (.I0(\i_/digit4[2]_i_20_n_0 ),
        .I1(\digit4[2]_i_21_n_0 ),
        .I2(\i_/digit4[3]_i_8_n_0 ),
        .I3(\i_/digit4[2]_i_22_n_0 ),
        .I4(\i_/digit4[3]_i_10_n_0 ),
        .I5(\i_/digit4[1]_i_8_n_0 ),
        .O(\i_/digit4[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h56A6AAAAA9595555)) 
    \i_/digit4[2]_i_120 
       (.I0(\i_/digit4[2]_i_154_n_0 ),
        .I1(b_IBUF[15]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0] [2]),
        .I4(abs_a[9]),
        .I5(\i_/digit4[2]_i_155_n_0 ),
        .O(\i_/digit4[2]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_121 
       (.I0(b_IBUF[21]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [0]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit4[2]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    \i_/digit4[2]_i_122 
       (.I0(b_IBUF[21]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [0]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit4[2]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_123 
       (.I0(b_IBUF[20]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [3]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit4[2]_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h96FF00966900FF69)) 
    \i_/digit4[2]_i_124 
       (.I0(\i_/digit4[2]_i_156_n_0 ),
        .I1(\i_/digit4[2]_i_146_n_0 ),
        .I2(\i_/digit4[2]_i_147_n_0 ),
        .I3(\i_/digit4[2]_i_148_n_0 ),
        .I4(\i_/digit4[2]_i_149_n_0 ),
        .I5(\i_/digit4[2]_i_114_n_0 ),
        .O(\i_/digit4[2]_i_124_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_125 
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [2]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit4[2]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_126 
       (.I0(b_IBUF[18]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(a_IBUF[8]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [3]),
        .O(\i_/digit4[2]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'h1771717171171717)) 
    \i_/digit4[2]_i_127 
       (.I0(\i_/digit4[2]_i_140_n_0 ),
        .I1(\i_/digit4[2]_i_141_n_0 ),
        .I2(\i_/digit4[2]_i_142_n_0 ),
        .I3(abs_b[15]),
        .I4(abs_a[10]),
        .I5(\i_/digit4[2]_i_144_n_0 ),
        .O(\i_/digit4[2]_i_127_n_0 ));
  LUT6 #(
    .INIT(64'h0000956A956AFFFF)) 
    \i_/digit4[2]_i_128 
       (.I0(\i_/digit4[2]_i_139_n_0 ),
        .I1(abs_b[15]),
        .I2(abs_a[11]),
        .I3(\i_/digit4[2]_i_137_n_0 ),
        .I4(\i_/digit4[2]_i_136_n_0 ),
        .I5(\i_/digit4[2]_i_135_n_0 ),
        .O(\i_/digit4[2]_i_128_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit4[2]_i_13 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[29]),
        .I2(b_IBUF[31]),
        .I3(\i_/digit4[2]_i_14_0 [0]),
        .O(\i_/digit4[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \i_/digit4[2]_i_130 
       (.I0(\i_/digit4[2]_i_157_n_0 ),
        .I1(abs_a[12]),
        .I2(abs_b[15]),
        .I3(\i_/digit4[2]_i_159_n_0 ),
        .I4(\i_/digit4[2]_i_160_n_0 ),
        .I5(\i_/digit4[2]_i_161_n_0 ),
        .O(\i_/digit4[2]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h60F6F6F6606060F6)) 
    \i_/digit4[2]_i_135 
       (.I0(\i_/digit4[2]_i_162_n_0 ),
        .I1(\i_/digit4[2]_i_163_n_0 ),
        .I2(\i_/digit4[2]_i_143_n_0 ),
        .I3(\i_/digit4[2]_i_164_n_0 ),
        .I4(\i_/digit4[2]_i_165_n_0 ),
        .I5(\i_/digit4[2]_i_166_n_0 ),
        .O(\i_/digit4[2]_i_135_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_136 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit4[2]_i_136_n_0 ));
  LUT6 #(
    .INIT(64'h56A6AAAAA9595555)) 
    \i_/digit4[2]_i_137 
       (.I0(\i_/digit4[2]_i_167_n_0 ),
        .I1(b_IBUF[15]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0] [2]),
        .I4(abs_a[12]),
        .I5(\i_/digit4[2]_i_168_n_0 ),
        .O(\i_/digit4[2]_i_137_n_0 ));
  LUT6 #(
    .INIT(64'h0000757F757FFFFF)) 
    \i_/digit4[2]_i_139 
       (.I0(abs_a[11]),
        .I1(\digit3_reg[0] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[15]),
        .I4(\i_/digit4[2]_i_169_n_0 ),
        .I5(\i_/digit4[2]_i_162_n_0 ),
        .O(\i_/digit4[2]_i_139_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \i_/digit4[2]_i_14 
       (.I0(\i_/digit4[2]_i_24_n_0 ),
        .I1(\i_/digit4[2]_i_25_n_0 ),
        .I2(\i_/digit4[2]_i_26_n_0 ),
        .I3(\i_/digit4[2]_i_27_n_0 ),
        .I4(\i_/digit4[2]_i_28_n_0 ),
        .I5(\i_/digit4[2]_i_29_n_0 ),
        .O(\i_/digit4[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_140 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit4[2]_i_140_n_0 ));
  LUT6 #(
    .INIT(64'hFFB2B200B200FFB2)) 
    \i_/digit4[2]_i_141 
       (.I0(\i_/digit4[2]_i_170_n_0 ),
        .I1(\i_/digit4[2]_i_154_n_0 ),
        .I2(\i_/digit4[2]_i_155_n_0 ),
        .I3(\i_/digit4[2]_i_156_n_0 ),
        .I4(\i_/digit4[2]_i_164_n_0 ),
        .I5(\i_/digit4[2]_i_171_n_0 ),
        .O(\i_/digit4[2]_i_141_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit4[2]_i_142 
       (.I0(abs_a[10]),
        .I1(\digit3_reg[0] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[15]),
        .I4(\i_/digit4[2]_i_165_n_0 ),
        .I5(\i_/digit4[2]_i_164_n_0 ),
        .O(\i_/digit4[2]_i_142_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_143 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit4[2]_i_143_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit4[2]_i_144 
       (.I0(\i_/digit4[2]_i_162_n_0 ),
        .I1(\i_/digit4[2]_i_169_n_0 ),
        .I2(b_IBUF[15]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0] [2]),
        .I5(abs_a[11]),
        .O(\i_/digit4[2]_i_144_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_145 
       (.I0(b_IBUF[18]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit4[2]_i_145_n_0 ));
  LUT6 #(
    .INIT(64'hB222B2B2B2222222)) 
    \i_/digit4[2]_i_146 
       (.I0(\i_/digit4[2]_i_155_n_0 ),
        .I1(\i_/digit4[2]_i_154_n_0 ),
        .I2(abs_a[9]),
        .I3(\digit3_reg[0] [2]),
        .I4(b_IBUF[31]),
        .I5(b_IBUF[15]),
        .O(\i_/digit4[2]_i_146_n_0 ));
  LUT6 #(
    .INIT(64'h6A666AAA95999555)) 
    \i_/digit4[2]_i_147 
       (.I0(\i_/digit4[2]_i_164_n_0 ),
        .I1(abs_a[10]),
        .I2(\digit3_reg[0] [2]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[15]),
        .I5(\i_/digit4[2]_i_165_n_0 ),
        .O(\i_/digit4[2]_i_147_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_148 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit4[2]_i_148_n_0 ));
  LUT6 #(
    .INIT(64'h71FF0071007171FF)) 
    \i_/digit4[2]_i_149 
       (.I0(\i_/digit4[0]_i_28_n_0 ),
        .I1(\i_/digit4[2]_i_172_n_0 ),
        .I2(\i_/digit4[2]_i_153_n_0 ),
        .I3(\i_/digit4[3]_i_71_n_0 ),
        .I4(\digit4[2]_i_173_n_0 ),
        .I5(\i_/digit4[2]_i_155_n_0 ),
        .O(\i_/digit4[2]_i_149_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_15 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[28]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[1] [3]),
        .O(\i_/digit4[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \i_/digit4[2]_i_150 
       (.I0(\i_/digit4[2]_i_160_n_0 ),
        .I1(\i_/digit4[2]_i_161_n_0 ),
        .I2(\i_/digit4[2]_i_174_n_0 ),
        .I3(\i_/digit4[2]_i_157_n_0 ),
        .I4(\i_/digit4[2]_i_175_n_0 ),
        .I5(\i_/digit4[2]_i_159_n_0 ),
        .O(\i_/digit4[2]_i_150_n_0 ));
  LUT6 #(
    .INIT(64'h757F8A808A808A80)) 
    \i_/digit4[2]_i_152 
       (.I0(abs_a[8]),
        .I1(\digit4_reg[0] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[21]),
        .I4(abs_a[9]),
        .I5(abs_b[19]),
        .O(\i_/digit4[2]_i_152_n_0 ));
  LUT6 #(
    .INIT(64'h1771717171171717)) 
    \i_/digit4[2]_i_153 
       (.I0(\i_/digit3[3]_i_110_n_0 ),
        .I1(\i_/digit3[3]_i_109_n_0 ),
        .I2(\i_/digit3[3]_i_112_n_0 ),
        .I3(abs_a[9]),
        .I4(abs_b[12]),
        .I5(\digit3[3]_i_111_n_0 ),
        .O(\i_/digit4[2]_i_153_n_0 ));
  LUT6 #(
    .INIT(64'h0077177717FFFFFF)) 
    \i_/digit4[2]_i_154 
       (.I0(\digit3[3]_i_111_n_0 ),
        .I1(\i_/digit3[3]_i_112_n_0 ),
        .I2(abs_b[12]),
        .I3(abs_a[9]),
        .I4(abs_b[13]),
        .I5(\i_/digit4[0]_i_30_n_0 ),
        .O(\i_/digit4[2]_i_154_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit4[2]_i_155 
       (.I0(\i_/digit4[2]_i_176_n_0 ),
        .I1(abs_b[12]),
        .I2(abs_a[11]),
        .I3(\digit4[2]_i_177_n_0 ),
        .I4(\i_/digit4[2]_i_178_n_0 ),
        .I5(\i_/digit4[2]_i_179_n_0 ),
        .O(\i_/digit4[2]_i_155_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_156 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit4[2]_i_156_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit4[2]_i_157 
       (.I0(\i_/digit4[2]_i_180_n_0 ),
        .I1(\i_/digit4[2]_i_181_n_0 ),
        .I2(b_IBUF[15]),
        .I3(b_IBUF[31]),
        .I4(\digit3_reg[0] [2]),
        .I5(abs_a[13]),
        .O(\i_/digit4[2]_i_157_n_0 ));
  LUT6 #(
    .INIT(64'hB222B2B2B2222222)) 
    \i_/digit4[2]_i_159 
       (.I0(\i_/digit4[2]_i_168_n_0 ),
        .I1(\i_/digit4[2]_i_167_n_0 ),
        .I2(abs_a[12]),
        .I3(\digit3_reg[0] [2]),
        .I4(b_IBUF[31]),
        .I5(b_IBUF[15]),
        .O(\i_/digit4[2]_i_159_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit4[2]_i_16 
       (.I0(\i_/digit4[2]_i_30_n_0 ),
        .I1(\digit4_reg[1] [2]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[27]),
        .I4(abs_a[0]),
        .I5(\i_/digit4[2]_i_20_n_0 ),
        .O(\i_/digit4[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF6F6F660F6606060)) 
    \i_/digit4[2]_i_160 
       (.I0(\digit4[2]_i_184_n_0 ),
        .I1(\i_/digit4[2]_i_168_n_0 ),
        .I2(\i_/digit4[2]_i_185_n_0 ),
        .I3(\i_/digit4[2]_i_162_n_0 ),
        .I4(\i_/digit4[2]_i_169_n_0 ),
        .I5(\i_/digit4[2]_i_186_n_0 ),
        .O(\i_/digit4[2]_i_160_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_161 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit4[2]_i_161_n_0 ));
  LUT6 #(
    .INIT(64'h2A5280F8D5AD7F07)) 
    \i_/digit4[2]_i_162 
       (.I0(abs_a[12]),
        .I1(abs_b[12]),
        .I2(\i_/digit4[2]_i_187_n_0 ),
        .I3(\i_/digit4[2]_i_188_n_0 ),
        .I4(abs_b[13]),
        .I5(\i_/digit4[2]_i_189_n_0 ),
        .O(\i_/digit4[2]_i_162_n_0 ));
  LUT6 #(
    .INIT(64'h555596699669AAAA)) 
    \i_/digit4[2]_i_163 
       (.I0(\i_/digit4[2]_i_186_n_0 ),
        .I1(\i_/digit4[2]_i_190_n_0 ),
        .I2(\i_/digit4[2]_i_187_n_0 ),
        .I3(\i_/digit4[2]_i_188_n_0 ),
        .I4(\i_/digit4[2]_i_191_n_0 ),
        .I5(\i_/digit4[2]_i_192_n_0 ),
        .O(\i_/digit4[2]_i_163_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit4[2]_i_164 
       (.I0(abs_a[12]),
        .I1(abs_b[12]),
        .I2(\i_/digit4[2]_i_187_n_0 ),
        .I3(\i_/digit4[2]_i_188_n_0 ),
        .I4(\i_/digit4[2]_i_191_n_0 ),
        .I5(\i_/digit4[2]_i_192_n_0 ),
        .O(\i_/digit4[2]_i_164_n_0 ));
  LUT6 #(
    .INIT(64'h7117171717717171)) 
    \i_/digit4[2]_i_165 
       (.I0(\i_/digit4[2]_i_179_n_0 ),
        .I1(\i_/digit4[2]_i_178_n_0 ),
        .I2(\digit4[2]_i_177_n_0 ),
        .I3(abs_a[11]),
        .I4(abs_b[12]),
        .I5(\i_/digit4[2]_i_176_n_0 ),
        .O(\i_/digit4[2]_i_165_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_166 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit4[2]_i_166_n_0 ));
  LUT6 #(
    .INIT(64'h22B2B2BBFAFFFAFF)) 
    \i_/digit4[2]_i_167 
       (.I0(\i_/digit4[2]_i_189_n_0 ),
        .I1(abs_b[13]),
        .I2(\i_/digit4[2]_i_188_n_0 ),
        .I3(\i_/digit4[2]_i_187_n_0 ),
        .I4(abs_b[12]),
        .I5(abs_a[12]),
        .O(\i_/digit4[2]_i_167_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit4[2]_i_168 
       (.I0(\i_/digit4[2]_i_193_n_0 ),
        .I1(abs_b[13]),
        .I2(abs_a[13]),
        .I3(\i_/digit4[2]_i_194_n_0 ),
        .I4(\i_/digit4[2]_i_195_n_0 ),
        .I5(\i_/digit4[2]_i_196_n_0 ),
        .O(\i_/digit4[2]_i_168_n_0 ));
  LUT6 #(
    .INIT(64'h8EE8E88EE88EE88E)) 
    \i_/digit4[2]_i_169 
       (.I0(\i_/digit4[2]_i_192_n_0 ),
        .I1(\i_/digit4[2]_i_191_n_0 ),
        .I2(\i_/digit4[2]_i_188_n_0 ),
        .I3(\i_/digit4[2]_i_187_n_0 ),
        .I4(abs_b[12]),
        .I5(abs_a[12]),
        .O(\i_/digit4[2]_i_169_n_0 ));
  LUT6 #(
    .INIT(64'h6669996999999999)) 
    \i_/digit4[2]_i_17 
       (.I0(\i_/digit4[2]_i_29_n_0 ),
        .I1(\i_/digit4[2]_i_28_n_0 ),
        .I2(b_IBUF[27]),
        .I3(b_IBUF[31]),
        .I4(\digit4_reg[1] [2]),
        .I5(abs_a[1]),
        .O(\i_/digit4[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_170 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit4[2]_i_170_n_0 ));
  LUT6 #(
    .INIT(64'h711717718EE8E88E)) 
    \i_/digit4[2]_i_171 
       (.I0(\i_/digit4[2]_i_179_n_0 ),
        .I1(\i_/digit4[2]_i_178_n_0 ),
        .I2(\digit4[2]_i_177_n_0 ),
        .I3(\i_/digit4[2]_i_197_n_0 ),
        .I4(\i_/digit4[2]_i_176_n_0 ),
        .I5(\i_/digit4[2]_i_166_n_0 ),
        .O(\i_/digit4[2]_i_171_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_172 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit4[2]_i_172_n_0 ));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    \i_/digit4[2]_i_174 
       (.I0(\i_/digit4[2]_i_199_n_0 ),
        .I1(\i_/digit4[2]_i_200_n_0 ),
        .I2(\i_/digit4[2]_i_181_n_0 ),
        .I3(\i_/digit4[2]_i_180_n_0 ),
        .I4(\i_/digit4[2]_i_201_n_0 ),
        .I5(\i_/digit4[2]_i_202_n_0 ),
        .O(\i_/digit4[2]_i_174_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_175 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit4[2]_i_175_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit4[2]_i_176 
       (.I0(abs_a[11]),
        .I1(\digit2_reg[0] [3]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[12]),
        .I4(\i_/digit4[2]_i_203_n_0 ),
        .I5(\i_/digit4[0]_i_32_n_0 ),
        .O(\i_/digit4[2]_i_176_n_0 ));
  LUT6 #(
    .INIT(64'hFBBAA220A220FBBA)) 
    \i_/digit4[2]_i_178 
       (.I0(\i_/digit4[0]_i_34_n_0 ),
        .I1(\i_/digit3[3]_i_125_n_0 ),
        .I2(\i_/digit3[3]_i_126_n_0 ),
        .I3(\i_/digit4[0]_i_33_n_0 ),
        .I4(\i_/digit4[0]_i_32_n_0 ),
        .I5(\i_/digit4[0]_i_31_n_0 ),
        .O(\i_/digit4[2]_i_178_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_179 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[11]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [2]),
        .O(\i_/digit4[2]_i_179_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit4[2]_i_18 
       (.I0(abs_a[2]),
        .I1(abs_b[20]),
        .I2(\i_/digit4[2]_i_31_n_0 ),
        .I3(\i_/digit4[2]_i_32_n_0 ),
        .I4(\i_/digit4[2]_i_33_n_0 ),
        .I5(\i_/digit4[2]_i_34_n_0 ),
        .O(\i_/digit4[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A95956A)) 
    \i_/digit4[2]_i_180 
       (.I0(\i_/digit4[2]_i_207_n_0 ),
        .I1(abs_a[15]),
        .I2(abs_b[12]),
        .I3(\i_/digit4[2]_i_209_n_0 ),
        .I4(\i_/digit4[2]_i_210_n_0 ),
        .I5(\i_/digit4[2]_i_211_n_0 ),
        .O(\i_/digit4[2]_i_180_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF699969990000)) 
    \i_/digit4[2]_i_181 
       (.I0(\i_/digit4[2]_i_196_n_0 ),
        .I1(\i_/digit4[2]_i_195_n_0 ),
        .I2(abs_b[12]),
        .I3(abs_a[14]),
        .I4(\i_/digit4[2]_i_212_n_0 ),
        .I5(\i_/digit4[2]_i_193_n_0 ),
        .O(\i_/digit4[2]_i_181_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_185 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit4[2]_i_185_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_186 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit4[2]_i_186_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B8000000)) 
    \i_/digit4[2]_i_187 
       (.I0(\i_/digit4[2]_i_181_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[13]),
        .I3(abs_b[11]),
        .I4(\i_/digit4[2]_i_205_n_0 ),
        .I5(\i_/digit4[2]_i_204_n_0 ),
        .O(\i_/digit4[2]_i_187_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6A99955595)) 
    \i_/digit4[2]_i_188 
       (.I0(\i_/digit4[2]_i_219_n_0 ),
        .I1(abs_b[11]),
        .I2(a_IBUF[14]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_181_0 [1]),
        .I5(\i_/digit4[2]_i_220_n_0 ),
        .O(\i_/digit4[2]_i_188_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \i_/digit4[2]_i_189 
       (.I0(\i_/digit4[2]_i_221_n_0 ),
        .I1(\i_/digit4[2]_i_222_n_0 ),
        .I2(\i_/digit4[2]_i_223_n_0 ),
        .I3(\i_/digit4[2]_i_220_n_0 ),
        .I4(\i_/digit4[2]_i_219_n_0 ),
        .I5(\i_/digit4[2]_i_224_n_0 ),
        .O(\i_/digit4[2]_i_189_n_0 ));
  LUT6 #(
    .INIT(64'hB22B2BB22BB22BB2)) 
    \i_/digit4[2]_i_19 
       (.I0(\i_/digit4[0]_i_10_n_0 ),
        .I1(\i_/digit4[0]_i_9_n_0 ),
        .I2(\i_/digit4[0]_i_8_n_0 ),
        .I3(\i_/digit4[0]_i_7_n_0 ),
        .I4(abs_b[20]),
        .I5(abs_a[1]),
        .O(\i_/digit4[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_190 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit4[2]_i_190_n_0 ));
  LUT6 #(
    .INIT(64'h2A02BFABBFAB2A02)) 
    \i_/digit4[2]_i_191 
       (.I0(\i_/digit4[2]_i_197_n_0 ),
        .I1(\i_/digit4[0]_i_32_n_0 ),
        .I2(\i_/digit4[2]_i_203_n_0 ),
        .I3(\i_/digit4[2]_i_225_n_0 ),
        .I4(\i_/digit4[2]_i_204_n_0 ),
        .I5(\i_/digit4[2]_i_226_n_0 ),
        .O(\i_/digit4[2]_i_191_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_192 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit4[2]_i_192_n_0 ));
  LUT6 #(
    .INIT(64'hFEEAA880A880FEEA)) 
    \i_/digit4[2]_i_193 
       (.I0(\i_/digit4[2]_i_223_n_0 ),
        .I1(\i_/digit4[2]_i_220_n_0 ),
        .I2(\i_/digit4[2]_i_219_n_0 ),
        .I3(\i_/digit4[2]_i_224_n_0 ),
        .I4(\i_/digit4[2]_i_222_n_0 ),
        .I5(\i_/digit4[2]_i_221_n_0 ),
        .O(\i_/digit4[2]_i_193_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_194 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit4[2]_i_194_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit4[2]_i_195 
       (.I0(\i_/digit4[2]_i_221_n_0 ),
        .I1(\i_/digit4[2]_i_181_0 [2]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[15]),
        .I4(abs_b[11]),
        .I5(\i_/digit4[2]_i_227_n_0 ),
        .O(\i_/digit4[2]_i_195_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6A99955595)) 
    \i_/digit4[2]_i_196 
       (.I0(\i_/digit4[2]_i_228_n_0 ),
        .I1(abs_b[11]),
        .I2(a_IBUF[16]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_181_0 [3]),
        .I5(\i_/digit4[2]_i_229_n_0 ),
        .O(\i_/digit4[2]_i_196_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_197 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit4[2]_i_197_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_198 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[10]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [1]),
        .O(\i_/digit4[2]_i_198_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_199 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit4[2]_i_199_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit4[2]_i_20 
       (.I0(abs_a[2]),
        .I1(abs_b[23]),
        .I2(\i_/digit4[2]_i_35_n_0 ),
        .I3(\digit4[2]_i_36_n_0 ),
        .I4(\i_/digit4[2]_i_37_n_0 ),
        .I5(\i_/digit4[2]_i_38_n_0 ),
        .O(\i_/digit4[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_200 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit4[2]_i_200_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \i_/digit4[2]_i_201 
       (.I0(\i_/digit4[2]_i_230_n_0 ),
        .I1(\i_/digit4[2]_i_231_n_0 ),
        .I2(\i_/digit4[2]_i_232_n_0 ),
        .I3(\i_/digit4[2]_i_207_n_0 ),
        .I4(\i_/digit4[2]_i_233_n_0 ),
        .I5(\i_/digit4[2]_i_209_n_0 ),
        .O(\i_/digit4[2]_i_201_n_0 ));
  LUT6 #(
    .INIT(64'h1771717171171717)) 
    \i_/digit4[2]_i_202 
       (.I0(\i_/digit4[2]_i_211_n_0 ),
        .I1(\i_/digit4[2]_i_210_n_0 ),
        .I2(\i_/digit4[2]_i_209_n_0 ),
        .I3(abs_b[12]),
        .I4(abs_a[15]),
        .I5(\i_/digit4[2]_i_207_n_0 ),
        .O(\i_/digit4[2]_i_202_n_0 ));
  LUT6 #(
    .INIT(64'h000096669666FFFF)) 
    \i_/digit4[2]_i_203 
       (.I0(\i_/digit3[3]_i_142_n_0 ),
        .I1(\i_/digit3[3]_i_141_n_0 ),
        .I2(abs_b[9]),
        .I3(abs_a[12]),
        .I4(\i_/digit3[3]_i_139_n_0 ),
        .I5(\i_/digit4[0]_i_35_n_0 ),
        .O(\i_/digit4[2]_i_203_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \i_/digit4[2]_i_204 
       (.I0(\i_/digit4[2]_i_234_n_0 ),
        .I1(\i_/digit4[2]_i_235_n_0 ),
        .I2(\i_/digit4[2]_i_236_n_0 ),
        .I3(abs_a[13]),
        .I4(abs_b[10]),
        .I5(\i_/digit4[2]_i_237_n_0 ),
        .O(\i_/digit4[2]_i_204_n_0 ));
  LUT6 #(
    .INIT(64'hA2200000FBBA3030)) 
    \i_/digit4[2]_i_205 
       (.I0(abs_b[10]),
        .I1(\i_/digit3[3]_i_142_n_0 ),
        .I2(\i_/digit3[3]_i_141_n_0 ),
        .I3(abs_b[9]),
        .I4(abs_a[12]),
        .I5(\i_/digit4[0]_i_36_n_0 ),
        .O(\i_/digit4[2]_i_205_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit4[2]_i_207 
       (.I0(\i_/digit4[2]_i_238_n_0 ),
        .I1(abs_b[11]),
        .I2(a_IBUF[17]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_240_0 [0]),
        .I5(\i_/digit4[2]_i_240_n_0 ),
        .O(\i_/digit4[2]_i_207_n_0 ));
  LUT6 #(
    .INIT(64'hBABFFFFF202AAAAA)) 
    \i_/digit4[2]_i_209 
       (.I0(\i_/digit4[2]_i_229_n_0 ),
        .I1(\i_/digit4[2]_i_181_0 [3]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[16]),
        .I4(abs_b[11]),
        .I5(\i_/digit4[2]_i_228_n_0 ),
        .O(\i_/digit4[2]_i_209_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_210 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit4[2]_i_210_n_0 ));
  LUT6 #(
    .INIT(64'hFFD4D400D400FFD4)) 
    \i_/digit4[2]_i_211 
       (.I0(\i_/digit4[2]_i_227_n_0 ),
        .I1(\i_/digit4[2]_i_241_n_0 ),
        .I2(\i_/digit4[2]_i_221_n_0 ),
        .I3(\i_/digit4[2]_i_194_n_0 ),
        .I4(\digit4[2]_i_242_n_0 ),
        .I5(\i_/digit4[2]_i_229_n_0 ),
        .O(\i_/digit4[2]_i_211_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_212 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit4[2]_i_212_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_217 
       (.I0(b_IBUF[15]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [2]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit4[2]_i_217_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_218 
       (.I0(b_IBUF[14]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [1]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit4[2]_i_218_n_0 ));
  LUT6 #(
    .INIT(64'h8F08088F088F8F08)) 
    \i_/digit4[2]_i_219 
       (.I0(abs_a[13]),
        .I1(abs_b[10]),
        .I2(\i_/digit4[2]_i_237_n_0 ),
        .I3(\i_/digit4[2]_i_236_n_0 ),
        .I4(\i_/digit4[2]_i_235_n_0 ),
        .I5(\i_/digit4[2]_i_234_n_0 ),
        .O(\i_/digit4[2]_i_219_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit4[2]_i_22 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[27]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[1] [2]),
        .O(\i_/digit4[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \i_/digit4[2]_i_220 
       (.I0(\i_/digit4[2]_i_243_n_0 ),
        .I1(\i_/digit4[2]_i_244_n_0 ),
        .I2(\i_/digit4[2]_i_245_n_0 ),
        .I3(abs_a[14]),
        .I4(abs_b[10]),
        .I5(\i_/digit4[2]_i_246_n_0 ),
        .O(\i_/digit4[2]_i_220_n_0 ));
  LUT6 #(
    .INIT(64'h999696665AAA5AAA)) 
    \i_/digit4[2]_i_221 
       (.I0(\i_/digit4[2]_i_247_n_0 ),
        .I1(abs_b[10]),
        .I2(\i_/digit4[2]_i_245_n_0 ),
        .I3(\i_/digit4[2]_i_244_n_0 ),
        .I4(abs_b[9]),
        .I5(abs_a[15]),
        .O(\i_/digit4[2]_i_221_n_0 ));
  LUT6 #(
    .INIT(64'h96695555AAAA9669)) 
    \i_/digit4[2]_i_222 
       (.I0(\i_/digit4[2]_i_241_n_0 ),
        .I1(\i_/digit4[2]_i_243_n_0 ),
        .I2(\i_/digit4[2]_i_244_n_0 ),
        .I3(\i_/digit4[2]_i_245_n_0 ),
        .I4(\i_/digit4[2]_i_248_n_0 ),
        .I5(\i_/digit4[2]_i_246_n_0 ),
        .O(\i_/digit4[2]_i_222_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_223 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit4[2]_i_223_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_224 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit4[2]_i_224_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_225 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[12]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [3]),
        .O(\i_/digit4[2]_i_225_n_0 ));
  LUT6 #(
    .INIT(64'h599955599AAA999A)) 
    \i_/digit4[2]_i_226 
       (.I0(\i_/digit4[2]_i_249_n_0 ),
        .I1(\i_/digit4[0]_i_36_n_0 ),
        .I2(\i_/digit3[3]_i_140_n_0 ),
        .I3(\i_/digit3[3]_i_141_n_0 ),
        .I4(\i_/digit3[3]_i_142_n_0 ),
        .I5(\i_/digit4[2]_i_250_n_0 ),
        .O(\i_/digit4[2]_i_226_n_0 ));
  LUT6 #(
    .INIT(64'h2ABFBF2ABF2A2ABF)) 
    \i_/digit4[2]_i_227 
       (.I0(\i_/digit4[2]_i_246_n_0 ),
        .I1(abs_a[14]),
        .I2(abs_b[10]),
        .I3(\i_/digit4[2]_i_245_n_0 ),
        .I4(\i_/digit4[2]_i_244_n_0 ),
        .I5(\i_/digit4[2]_i_243_n_0 ),
        .O(\i_/digit4[2]_i_227_n_0 ));
  LUT6 #(
    .INIT(64'h0077177717FFFFFF)) 
    \i_/digit4[2]_i_228 
       (.I0(\i_/digit4[2]_i_245_n_0 ),
        .I1(\i_/digit4[2]_i_244_n_0 ),
        .I2(abs_b[9]),
        .I3(abs_a[15]),
        .I4(abs_b[10]),
        .I5(\i_/digit4[2]_i_247_n_0 ),
        .O(\i_/digit4[2]_i_228_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit4[2]_i_229 
       (.I0(\i_/digit4[2]_i_251_n_0 ),
        .I1(abs_b[10]),
        .I2(abs_a[16]),
        .I3(\i_/digit4[2]_i_253_n_0 ),
        .I4(\i_/digit4[2]_i_254_n_0 ),
        .I5(\i_/digit4[2]_i_255_n_0 ),
        .O(\i_/digit4[2]_i_229_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    \i_/digit4[2]_i_230 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[14]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [1]),
        .O(\i_/digit4[2]_i_230_n_0 ));
  LUT6 #(
    .INIT(64'h15017F57EAFE80A8)) 
    \i_/digit4[2]_i_231 
       (.I0(\i_/digit4[2]_i_256_n_0 ),
        .I1(\i_/digit4[2]_i_253_n_0 ),
        .I2(\i_/digit4[2]_i_254_n_0 ),
        .I3(\i_/digit4[2]_i_255_n_0 ),
        .I4(\i_/digit4[2]_i_257_n_0 ),
        .I5(\i_/digit4[2]_i_258_n_0 ),
        .O(\i_/digit4[2]_i_231_n_0 ));
  LUT5 #(
    .INIT(32'h70F78F08)) 
    \i_/digit4[2]_i_232 
       (.I0(abs_b[11]),
        .I1(abs_a[16]),
        .I2(\i_/digit4[2]_i_238_n_0 ),
        .I3(\i_/digit4[2]_i_240_n_0 ),
        .I4(\i_/digit4[2]_i_259_n_0 ),
        .O(\i_/digit4[2]_i_232_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_233 
       (.I0(b_IBUF[13]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [0]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit4[2]_i_233_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit4[2]_i_234 
       (.I0(\i_/digit4[2]_i_260_n_0 ),
        .I1(abs_b[8]),
        .I2(a_IBUF[16]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_181_0 [3]),
        .I5(\i_/digit4[2]_i_261_n_0 ),
        .O(\i_/digit4[2]_i_234_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_235 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit4[2]_i_235_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B8000000)) 
    \i_/digit4[2]_i_236 
       (.I0(\i_/digit4[2]_i_181_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[15]),
        .I3(abs_b[8]),
        .I4(\i_/digit4[2]_i_262_n_0 ),
        .I5(\i_/digit4[0]_i_38_n_0 ),
        .O(\i_/digit4[2]_i_236_n_0 ));
  LUT6 #(
    .INIT(64'h17FF0017001717FF)) 
    \i_/digit4[2]_i_237 
       (.I0(\i_/digit3[3]_i_156_n_0 ),
        .I1(\i_/digit3[3]_i_155_n_0 ),
        .I2(\i_/digit4[0]_i_40_n_0 ),
        .I3(\i_/digit4[0]_i_39_n_0 ),
        .I4(\i_/digit4[0]_i_38_n_0 ),
        .I5(\i_/digit4[0]_i_37_n_0 ),
        .O(\i_/digit4[2]_i_237_n_0 ));
  LUT6 #(
    .INIT(64'h96FFFFFF00969696)) 
    \i_/digit4[2]_i_238 
       (.I0(\i_/digit4[2]_i_255_n_0 ),
        .I1(\i_/digit4[2]_i_254_n_0 ),
        .I2(\i_/digit4[2]_i_253_n_0 ),
        .I3(abs_a[16]),
        .I4(abs_b[10]),
        .I5(\i_/digit4[2]_i_251_n_0 ),
        .O(\i_/digit4[2]_i_238_n_0 ));
  LUT6 #(
    .INIT(64'h69FF00699600FF96)) 
    \i_/digit4[2]_i_24 
       (.I0(\i_/digit4[2]_i_43_n_0 ),
        .I1(\i_/digit4[2]_i_44_n_0 ),
        .I2(\i_/digit4[2]_i_45_n_0 ),
        .I3(\i_/digit4[2]_i_46_n_0 ),
        .I4(\i_/digit4[2]_i_47_n_0 ),
        .I5(\i_/digit4[2]_i_48_n_0 ),
        .O(\i_/digit4[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \i_/digit4[2]_i_240 
       (.I0(\i_/digit4[2]_i_267_n_0 ),
        .I1(\i_/digit4[2]_i_268_n_0 ),
        .I2(\i_/digit4[2]_i_269_n_0 ),
        .I3(\i_/digit4[2]_i_270_n_0 ),
        .I4(abs_b[10]),
        .I5(abs_a[17]),
        .O(\i_/digit4[2]_i_240_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_241 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit4[2]_i_241_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_243 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit4[2]_i_243_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAAAAA8A800000)) 
    \i_/digit4[2]_i_244 
       (.I0(\i_/digit4[2]_i_261_n_0 ),
        .I1(\i_/digit4[2]_i_181_0 [3]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[16]),
        .I4(abs_b[8]),
        .I5(\i_/digit4[2]_i_260_n_0 ),
        .O(\i_/digit4[2]_i_244_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6A99955595)) 
    \i_/digit4[2]_i_245 
       (.I0(\i_/digit4[2]_i_273_n_0 ),
        .I1(abs_b[8]),
        .I2(a_IBUF[17]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_240_0 [0]),
        .I5(\i_/digit4[2]_i_274_n_0 ),
        .O(\i_/digit4[2]_i_245_n_0 ));
  LUT6 #(
    .INIT(64'h577F01150115577F)) 
    \i_/digit4[2]_i_246 
       (.I0(\i_/digit4[2]_i_235_n_0 ),
        .I1(\i_/digit4[0]_i_38_n_0 ),
        .I2(\i_/digit4[2]_i_262_n_0 ),
        .I3(\i_/digit4[2]_i_275_n_0 ),
        .I4(\i_/digit4[2]_i_276_n_0 ),
        .I5(\i_/digit4[2]_i_261_n_0 ),
        .O(\i_/digit4[2]_i_246_n_0 ));
  LUT6 #(
    .INIT(64'h6966996996996696)) 
    \i_/digit4[2]_i_247 
       (.I0(\i_/digit4[2]_i_277_n_0 ),
        .I1(\i_/digit4[2]_i_278_n_0 ),
        .I2(\i_/digit4[2]_i_274_n_0 ),
        .I3(\i_/digit4[2]_i_273_n_0 ),
        .I4(\i_/digit4[2]_i_279_n_0 ),
        .I5(\i_/digit4[2]_i_280_n_0 ),
        .O(\i_/digit4[2]_i_247_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_248 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit4[2]_i_248_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_249 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit4[2]_i_249_n_0 ));
  LUT6 #(
    .INIT(64'hE81717E817E8E817)) 
    \i_/digit4[2]_i_25 
       (.I0(\i_/digit4[2]_i_45_n_0 ),
        .I1(\i_/digit4[2]_i_44_n_0 ),
        .I2(\i_/digit4[2]_i_43_n_0 ),
        .I3(\i_/digit4[2]_i_49_n_0 ),
        .I4(\i_/digit4[2]_i_50_n_0 ),
        .I5(\i_/digit4[2]_i_51_n_0 ),
        .O(\i_/digit4[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_250 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[13]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [0]),
        .O(\i_/digit4[2]_i_250_n_0 ));
  LUT6 #(
    .INIT(64'h75F71051105175F7)) 
    \i_/digit4[2]_i_251 
       (.I0(\i_/digit4[2]_i_280_n_0 ),
        .I1(\i_/digit4[2]_i_279_n_0 ),
        .I2(\i_/digit4[2]_i_273_n_0 ),
        .I3(\i_/digit4[2]_i_274_n_0 ),
        .I4(\i_/digit4[2]_i_278_n_0 ),
        .I5(\i_/digit4[2]_i_277_n_0 ),
        .O(\i_/digit4[2]_i_251_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_253 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[18]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [1]),
        .O(\i_/digit4[2]_i_253_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAAAAA8A800000)) 
    \i_/digit4[2]_i_254 
       (.I0(\i_/digit4[2]_i_278_n_0 ),
        .I1(\i_/digit4[2]_i_240_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[18]),
        .I4(abs_b[8]),
        .I5(\i_/digit4[2]_i_281_n_0 ),
        .O(\i_/digit4[2]_i_254_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit4[2]_i_255 
       (.I0(\i_/digit4[2]_i_282_n_0 ),
        .I1(\i_/digit4[2]_i_283_n_0 ),
        .I2(abs_b[8]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit4[2]_i_255_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit4[2]_i_256 
       (.I0(\i_/digit4[2]_i_269_n_0 ),
        .I1(\i_/digit4[2]_i_268_n_0 ),
        .I2(abs_b[9]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit4[2]_i_256_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_257 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[18]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [1]),
        .O(\i_/digit4[2]_i_257_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \i_/digit4[2]_i_258 
       (.I0(\i_/digit4[2]_i_284_n_0 ),
        .I1(\i_/digit4[2]_i_285_n_0 ),
        .I2(\i_/digit4[2]_i_286_n_0 ),
        .I3(\i_/digit4[2]_i_267_n_0 ),
        .I4(\i_/digit4[2]_i_268_n_0 ),
        .I5(\i_/digit4[2]_i_269_n_0 ),
        .O(\i_/digit4[2]_i_258_n_0 ));
  LUT6 #(
    .INIT(64'h8777878787777777)) 
    \i_/digit4[2]_i_259 
       (.I0(abs_a[15]),
        .I1(abs_b[13]),
        .I2(abs_a[11]),
        .I3(\digit3_reg[0]_0 [1]),
        .I4(b_IBUF[31]),
        .I5(b_IBUF[18]),
        .O(\i_/digit4[2]_i_259_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit4[2]_i_26 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[30]),
        .I2(b_IBUF[31]),
        .I3(\i_/digit4[2]_i_14_0 [1]),
        .O(\i_/digit4[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h088F8F088F08088F)) 
    \i_/digit4[2]_i_260 
       (.I0(abs_a[15]),
        .I1(abs_b[7]),
        .I2(\i_/digit4[0]_i_45_n_0 ),
        .I3(\i_/digit4[0]_i_44_n_0 ),
        .I4(\i_/digit4[0]_i_43_n_0 ),
        .I5(\i_/digit4[0]_i_42_n_0 ),
        .O(\i_/digit4[2]_i_260_n_0 ));
  LUT6 #(
    .INIT(64'h42D2B222BD2D4DDD)) 
    \i_/digit4[2]_i_261 
       (.I0(\i_/digit4[0]_i_42_n_0 ),
        .I1(\i_/digit4[0]_i_44_n_0 ),
        .I2(abs_a[16]),
        .I3(abs_b[6]),
        .I4(abs_b[7]),
        .I5(\i_/digit4[2]_i_287_n_0 ),
        .O(\i_/digit4[2]_i_261_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6A956A950000)) 
    \i_/digit4[2]_i_262 
       (.I0(\i_/digit3[3]_i_172_n_0 ),
        .I1(abs_a[15]),
        .I2(abs_b[6]),
        .I3(\i_/digit3[3]_i_171_n_0 ),
        .I4(\i_/digit3[3]_i_170_n_0 ),
        .I5(\i_/digit3[3]_i_169_n_0 ),
        .O(\i_/digit4[2]_i_262_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    \i_/digit4[2]_i_267 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit4[2]_i_267_n_0 ));
  LUT6 #(
    .INIT(64'h202AAAAABABFFFFF)) 
    \i_/digit4[2]_i_268 
       (.I0(\i_/digit4[2]_i_282_n_0 ),
        .I1(\i_/digit4[2]_i_240_0 [2]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[19]),
        .I4(abs_b[8]),
        .I5(\i_/digit4[2]_i_283_n_0 ),
        .O(\i_/digit4[2]_i_268_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit4[2]_i_269 
       (.I0(\i_/digit4[2]_i_288_n_0 ),
        .I1(abs_b[8]),
        .I2(a_IBUF[20]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_240_0 [3]),
        .I5(\i_/digit4[2]_i_289_n_0 ),
        .O(\i_/digit4[2]_i_269_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    \i_/digit4[2]_i_27 
       (.I0(b_IBUF[27]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[1] [2]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit4[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFEEAA880A880FEEA)) 
    \i_/digit4[2]_i_270 
       (.I0(\i_/digit4[2]_i_253_n_0 ),
        .I1(\i_/digit4[2]_i_281_n_0 ),
        .I2(\i_/digit4[2]_i_290_n_0 ),
        .I3(\i_/digit4[2]_i_278_n_0 ),
        .I4(\i_/digit4[2]_i_282_n_0 ),
        .I5(\i_/digit4[2]_i_291_n_0 ),
        .O(\i_/digit4[2]_i_270_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_271 
       (.I0(b_IBUF[12]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [3]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit4[2]_i_271_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_272 
       (.I0(b_IBUF[11]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [2]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit4[2]_i_272_n_0 ));
  LUT6 #(
    .INIT(64'h2BFF22AABBFF2BFF)) 
    \i_/digit4[2]_i_273 
       (.I0(\i_/digit4[2]_i_287_n_0 ),
        .I1(abs_b[7]),
        .I2(abs_b[6]),
        .I3(abs_a[16]),
        .I4(\i_/digit4[0]_i_44_n_0 ),
        .I5(\i_/digit4[0]_i_42_n_0 ),
        .O(\i_/digit4[2]_i_273_n_0 ));
  LUT6 #(
    .INIT(64'h96AA66AA995596AA)) 
    \i_/digit4[2]_i_274 
       (.I0(\i_/digit4[2]_i_292_n_0 ),
        .I1(abs_b[7]),
        .I2(abs_b[6]),
        .I3(abs_a[17]),
        .I4(\i_/digit4[2]_i_293_n_0 ),
        .I5(\i_/digit4[2]_i_294_n_0 ),
        .O(\i_/digit4[2]_i_274_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_275 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[15]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [2]),
        .O(\i_/digit4[2]_i_275_n_0 ));
  LUT6 #(
    .INIT(64'h96695555AAAA9669)) 
    \i_/digit4[2]_i_276 
       (.I0(\i_/digit4[2]_i_295_n_0 ),
        .I1(\i_/digit4[0]_i_42_n_0 ),
        .I2(\i_/digit4[0]_i_43_n_0 ),
        .I3(\i_/digit4[0]_i_44_n_0 ),
        .I4(\i_/digit4[0]_i_45_n_0 ),
        .I5(\i_/digit4[2]_i_296_n_0 ),
        .O(\i_/digit4[2]_i_276_n_0 ));
  LUT6 #(
    .INIT(64'h5565656666A6A6AA)) 
    \i_/digit4[2]_i_277 
       (.I0(\i_/digit4[2]_i_290_n_0 ),
        .I1(\i_/digit4[2]_i_292_n_0 ),
        .I2(\i_/digit4[2]_i_294_n_0 ),
        .I3(\i_/digit4[2]_i_293_n_0 ),
        .I4(\i_/digit4[2]_i_297_n_0 ),
        .I5(\i_/digit4[2]_i_298_n_0 ),
        .O(\i_/digit4[2]_i_277_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit4[2]_i_278 
       (.I0(\i_/digit4[2]_i_299_n_0 ),
        .I1(\i_/digit4[2]_i_300_n_0 ),
        .I2(\i_/digit4[2]_i_301_n_0 ),
        .I3(abs_a[18]),
        .I4(abs_b[7]),
        .I5(\i_/digit4[2]_i_302_n_0 ),
        .O(\i_/digit4[2]_i_278_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_279 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[17]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [0]),
        .O(\i_/digit4[2]_i_279_n_0 ));
  LUT6 #(
    .INIT(64'hB22B2BB22BB22BB2)) 
    \i_/digit4[2]_i_28 
       (.I0(\i_/digit4[2]_i_37_n_0 ),
        .I1(\i_/digit4[2]_i_38_n_0 ),
        .I2(\digit4[2]_i_36_n_0 ),
        .I3(\i_/digit4[2]_i_35_n_0 ),
        .I4(abs_b[23]),
        .I5(abs_a[2]),
        .O(\i_/digit4[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_280 
       (.I0(b_IBUF[10]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [1]),
        .I3(a_IBUF[17]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [0]),
        .O(\i_/digit4[2]_i_280_n_0 ));
  LUT6 #(
    .INIT(64'hE0A0FFE08000A080)) 
    \i_/digit4[2]_i_281 
       (.I0(abs_b[7]),
        .I1(abs_b[6]),
        .I2(abs_a[17]),
        .I3(\i_/digit4[2]_i_293_n_0 ),
        .I4(\i_/digit4[2]_i_294_n_0 ),
        .I5(\i_/digit4[2]_i_292_n_0 ),
        .O(\i_/digit4[2]_i_281_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit4[2]_i_282 
       (.I0(\i_/digit4[2]_i_303_n_0 ),
        .I1(\i_/digit4[2]_i_304_n_0 ),
        .I2(\i_/digit4[2]_i_305_n_0 ),
        .I3(abs_b[6]),
        .I4(abs_a[20]),
        .I5(\digit4[2]_i_307_n_0 ),
        .O(\i_/digit4[2]_i_282_n_0 ));
  LUT6 #(
    .INIT(64'h088F8F088F08088F)) 
    \i_/digit4[2]_i_283 
       (.I0(abs_a[18]),
        .I1(abs_b[7]),
        .I2(\i_/digit4[2]_i_302_n_0 ),
        .I3(\i_/digit4[2]_i_301_n_0 ),
        .I4(\i_/digit4[2]_i_300_n_0 ),
        .I5(\i_/digit4[2]_i_299_n_0 ),
        .O(\i_/digit4[2]_i_283_n_0 ));
  LUT5 #(
    .INIT(32'hBF2A40D5)) 
    \i_/digit4[2]_i_284 
       (.I0(\i_/digit4[2]_i_288_n_0 ),
        .I1(abs_b[8]),
        .I2(abs_a[19]),
        .I3(\i_/digit4[2]_i_289_n_0 ),
        .I4(\i_/digit4[2]_i_309_n_0 ),
        .O(\i_/digit4[2]_i_284_n_0 ));
  LUT6 #(
    .INIT(64'hD4442BBB2BBB2BBB)) 
    \i_/digit4[2]_i_285 
       (.I0(\i_/digit4[2]_i_310_n_0 ),
        .I1(\i_/digit4[2]_i_311_n_0 ),
        .I2(abs_b[7]),
        .I3(abs_a[20]),
        .I4(abs_a[16]),
        .I5(abs_b[12]),
        .O(\i_/digit4[2]_i_285_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887788778)) 
    \i_/digit4[2]_i_286 
       (.I0(abs_a[14]),
        .I1(abs_b[14]),
        .I2(\i_/digit4[2]_i_313_n_0 ),
        .I3(\i_/digit4[2]_i_314_n_0 ),
        .I4(abs_a[20]),
        .I5(abs_b[8]),
        .O(\i_/digit4[2]_i_286_n_0 ));
  LUT6 #(
    .INIT(64'h6996969669696996)) 
    \i_/digit4[2]_i_287 
       (.I0(\i_/digit4[2]_i_315_n_0 ),
        .I1(\i_/digit4[2]_i_316_n_0 ),
        .I2(\i_/digit4[2]_i_297_n_0 ),
        .I3(\i_/digit4[0]_i_47_n_0 ),
        .I4(\i_/digit4[2]_i_317_n_0 ),
        .I5(\i_/digit4[0]_i_46_n_0 ),
        .O(\i_/digit4[2]_i_287_n_0 ));
  LUT6 #(
    .INIT(64'h6A95FFFF00006A95)) 
    \i_/digit4[2]_i_288 
       (.I0(\digit4[2]_i_307_n_0 ),
        .I1(abs_a[20]),
        .I2(abs_b[6]),
        .I3(\i_/digit4[2]_i_305_n_0 ),
        .I4(\i_/digit4[2]_i_304_n_0 ),
        .I5(\i_/digit4[2]_i_303_n_0 ),
        .O(\i_/digit4[2]_i_288_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \i_/digit4[2]_i_289 
       (.I0(\i_/digit4[2]_i_318_n_0 ),
        .I1(\i_/digit4[2]_i_319_n_0 ),
        .I2(\i_/digit4[2]_i_320_n_0 ),
        .I3(\i_/digit4[2]_i_311_n_0 ),
        .I4(abs_b[7]),
        .I5(abs_a[20]),
        .O(\i_/digit4[2]_i_289_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \i_/digit4[2]_i_29 
       (.I0(\i_/digit4[2]_i_43_n_0 ),
        .I1(\i_/digit4[2]_i_44_n_0 ),
        .I2(\i_/digit4[2]_i_45_n_0 ),
        .I3(abs_a[2]),
        .I4(abs_b[24]),
        .I5(\i_/digit4[2]_i_47_n_0 ),
        .O(\i_/digit4[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_290 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[18]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [1]),
        .O(\i_/digit4[2]_i_290_n_0 ));
  LUT6 #(
    .INIT(64'h96695555AAAA9669)) 
    \i_/digit4[2]_i_291 
       (.I0(\i_/digit4[2]_i_321_n_0 ),
        .I1(\i_/digit4[2]_i_299_n_0 ),
        .I2(\i_/digit4[2]_i_300_n_0 ),
        .I3(\i_/digit4[2]_i_301_n_0 ),
        .I4(\i_/digit4[2]_i_302_n_0 ),
        .I5(\i_/digit4[2]_i_322_n_0 ),
        .O(\i_/digit4[2]_i_291_n_0 ));
  LUT6 #(
    .INIT(64'h9669969669699669)) 
    \i_/digit4[2]_i_292 
       (.I0(\i_/digit4[2]_i_323_n_0 ),
        .I1(\i_/digit4[2]_i_324_n_0 ),
        .I2(\i_/digit4[2]_i_325_n_0 ),
        .I3(\i_/digit4[2]_i_316_n_0 ),
        .I4(\i_/digit4[2]_i_326_n_0 ),
        .I5(\i_/digit4[2]_i_327_n_0 ),
        .O(\i_/digit4[2]_i_292_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit4[2]_i_293 
       (.I0(\i_/digit4[0]_i_47_n_0 ),
        .I1(\i_/digit4[2]_i_240_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[18]),
        .I4(abs_b[5]),
        .I5(\i_/digit4[0]_i_46_n_0 ),
        .O(\i_/digit4[2]_i_293_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit4[2]_i_294 
       (.I0(\i_/digit4[2]_i_316_n_0 ),
        .I1(\i_/digit4[2]_i_326_n_0 ),
        .I2(abs_b[5]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit4[2]_i_294_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_295 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit4[2]_i_295_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_296 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[16]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_181_0 [3]),
        .O(\i_/digit4[2]_i_296_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_297 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[18]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [1]),
        .O(\i_/digit4[2]_i_297_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_298 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[18]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [1]),
        .O(\i_/digit4[2]_i_298_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_299 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[20]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [3]),
        .O(\i_/digit4[2]_i_299_n_0 ));
  LUT6 #(
    .INIT(64'hA96695AA56666AAA)) 
    \i_/digit4[2]_i_3 
       (.I0(\i_/digit4[2]_i_7_n_0 ),
        .I1(\i_/digit4[2]_i_8_n_0 ),
        .I2(abs_b[23]),
        .I3(a_IBUF[0]),
        .I4(\i_/digit4[2]_i_10_n_0 ),
        .I5(abs_b[24]),
        .O(p_0[26]));
  LUT6 #(
    .INIT(64'h8EE8E88EE88EE88E)) 
    \i_/digit4[2]_i_30 
       (.I0(\i_/digit4[3]_i_22_n_0 ),
        .I1(\i_/digit4[3]_i_21_n_0 ),
        .I2(\i_/digit4[3]_i_20_n_0 ),
        .I3(\i_/digit4[3]_i_19_n_0 ),
        .I4(abs_b[23]),
        .I5(abs_a[1]),
        .O(\i_/digit4[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000B800B800FFFF)) 
    \i_/digit4[2]_i_300 
       (.I0(\i_/digit4[2]_i_240_0 [3]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[20]),
        .I3(abs_b[5]),
        .I4(\i_/digit4[2]_i_328_n_0 ),
        .I5(\i_/digit4[2]_i_323_n_0 ),
        .O(\i_/digit4[2]_i_300_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit4[2]_i_301 
       (.I0(\i_/digit4[2]_i_329_n_0 ),
        .I1(abs_b[5]),
        .I2(a_IBUF[21]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_348_0 [0]),
        .I5(\i_/digit4[2]_i_331_n_0 ),
        .O(\i_/digit4[2]_i_301_n_0 ));
  LUT6 #(
    .INIT(64'h105175F775F71051)) 
    \i_/digit4[2]_i_302 
       (.I0(\i_/digit4[2]_i_325_n_0 ),
        .I1(\i_/digit4[2]_i_327_n_0 ),
        .I2(\i_/digit4[2]_i_326_n_0 ),
        .I3(\i_/digit4[2]_i_316_n_0 ),
        .I4(\i_/digit4[2]_i_323_n_0 ),
        .I5(\i_/digit4[2]_i_324_n_0 ),
        .O(\i_/digit4[2]_i_302_n_0 ));
  LUT6 #(
    .INIT(64'h4054D5FDD5FD4054)) 
    \i_/digit4[2]_i_303 
       (.I0(\i_/digit4[2]_i_299_n_0 ),
        .I1(\i_/digit4[2]_i_323_n_0 ),
        .I2(\i_/digit4[2]_i_328_n_0 ),
        .I3(\i_/digit4[2]_i_332_n_0 ),
        .I4(\i_/digit4[2]_i_333_n_0 ),
        .I5(\i_/digit4[2]_i_331_n_0 ),
        .O(\i_/digit4[2]_i_303_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_304 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[20]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [3]),
        .O(\i_/digit4[2]_i_304_n_0 ));
  LUT6 #(
    .INIT(64'h202AAAAABABFFFFF)) 
    \i_/digit4[2]_i_305 
       (.I0(\i_/digit4[2]_i_331_n_0 ),
        .I1(\i_/digit4[2]_i_348_0 [0]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[21]),
        .I4(abs_b[5]),
        .I5(\i_/digit4[2]_i_329_n_0 ),
        .O(\i_/digit4[2]_i_305_n_0 ));
  LUT6 #(
    .INIT(64'hB80047FF47FF47FF)) 
    \i_/digit4[2]_i_309 
       (.I0(\i_/digit4[2]_i_240_0 [2]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[19]),
        .I3(abs_b[10]),
        .I4(abs_a[17]),
        .I5(abs_b[11]),
        .O(\i_/digit4[2]_i_309_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit4[2]_i_31 
       (.I0(\i_/digit4[0]_i_13_n_0 ),
        .I1(abs_a[2]),
        .I2(\digit4_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[21]),
        .I5(\i_/digit4[0]_i_14_n_0 ),
        .O(\i_/digit4[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit4[2]_i_310 
       (.I0(\i_/digit4[2]_i_320_n_0 ),
        .I1(abs_b[6]),
        .I2(a_IBUF[22]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_348_0 [1]),
        .I5(\i_/digit4[2]_i_318_n_0 ),
        .O(\i_/digit4[2]_i_310_n_0 ));
  LUT6 #(
    .INIT(64'h80A8EAFEEAFE80A8)) 
    \i_/digit4[2]_i_311 
       (.I0(\i_/digit4[2]_i_336_n_0 ),
        .I1(\i_/digit4[2]_i_329_n_0 ),
        .I2(\i_/digit4[2]_i_337_n_0 ),
        .I3(\i_/digit4[2]_i_331_n_0 ),
        .I4(\i_/digit4[2]_i_334_n_0 ),
        .I5(\i_/digit4[2]_i_338_n_0 ),
        .O(\i_/digit4[2]_i_311_n_0 ));
  LUT5 #(
    .INIT(32'h69999666)) 
    \i_/digit4[2]_i_313 
       (.I0(\i_/digit4[2]_i_339_n_0 ),
        .I1(\i_/digit4[2]_i_340_n_0 ),
        .I2(abs_a[19]),
        .I3(abs_b[9]),
        .I4(\i_/digit4[2]_i_341_n_0 ),
        .O(\i_/digit4[2]_i_313_n_0 ));
  LUT6 #(
    .INIT(64'hDFD5555545400000)) 
    \i_/digit4[2]_i_314 
       (.I0(\i_/digit4[2]_i_320_n_0 ),
        .I1(\i_/digit4[2]_i_348_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[22]),
        .I4(abs_b[6]),
        .I5(\i_/digit4[2]_i_318_n_0 ),
        .O(\i_/digit4[2]_i_314_n_0 ));
  LUT5 #(
    .INIT(32'h65FFA6CC)) 
    \i_/digit4[2]_i_315 
       (.I0(abs_b[5]),
        .I1(\i_/digit4[0]_i_50_n_0 ),
        .I2(abs_b[4]),
        .I3(abs_a[18]),
        .I4(\i_/digit4[2]_i_342_n_0 ),
        .O(\i_/digit4[2]_i_315_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \i_/digit4[2]_i_316 
       (.I0(\i_/digit4[2]_i_343_n_0 ),
        .I1(\i_/digit4[2]_i_344_n_0 ),
        .I2(\i_/digit4[2]_i_345_n_0 ),
        .I3(\i_/digit4[2]_i_346_n_0 ),
        .I4(abs_b[4]),
        .I5(abs_a[19]),
        .O(\i_/digit4[2]_i_316_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_317 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[18]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [1]),
        .O(\i_/digit4[2]_i_317_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit4[2]_i_318 
       (.I0(\i_/digit4[2]_i_347_n_0 ),
        .I1(\i_/digit4[2]_i_348_0 [2]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[23]),
        .I4(abs_b[5]),
        .I5(\i_/digit4[2]_i_348_n_0 ),
        .O(\i_/digit4[2]_i_318_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_319 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[22]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [1]),
        .O(\i_/digit4[2]_i_319_n_0 ));
  LUT6 #(
    .INIT(64'h6999696969999999)) 
    \i_/digit4[2]_i_32 
       (.I0(\i_/digit4[2]_i_52_n_0 ),
        .I1(\i_/digit4[2]_i_53_n_0 ),
        .I2(abs_a[3]),
        .I3(\digit4_reg[0] [0]),
        .I4(b_IBUF[31]),
        .I5(b_IBUF[21]),
        .O(\i_/digit4[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hBABFFFFF202AAAAA)) 
    \i_/digit4[2]_i_320 
       (.I0(\i_/digit4[2]_i_335_n_0 ),
        .I1(\i_/digit4[2]_i_348_0 [1]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[22]),
        .I4(abs_b[5]),
        .I5(\i_/digit4[2]_i_334_n_0 ),
        .O(\i_/digit4[2]_i_320_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_321 
       (.I0(b_IBUF[9]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0] [0]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit4[2]_i_321_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_322 
       (.I0(b_IBUF[8]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [3]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit4[2]_i_322_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \i_/digit4[2]_i_323 
       (.I0(\i_/digit4[2]_i_349_n_0 ),
        .I1(\i_/digit4[2]_i_350_n_0 ),
        .I2(\i_/digit4[2]_i_351_n_0 ),
        .I3(\i_/digit4[2]_i_352_n_0 ),
        .I4(abs_b[4]),
        .I5(abs_a[20]),
        .O(\i_/digit4[2]_i_323_n_0 ));
  LUT5 #(
    .INIT(32'h8E117111)) 
    \i_/digit4[2]_i_324 
       (.I0(\i_/digit4[2]_i_353_n_0 ),
        .I1(\i_/digit4[2]_i_346_n_0 ),
        .I2(abs_b[4]),
        .I3(abs_a[19]),
        .I4(abs_b[5]),
        .O(\i_/digit4[2]_i_324_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_325 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit4[2]_i_325_n_0 ));
  LUT6 #(
    .INIT(64'h2BFFFFFF00BB2BBB)) 
    \i_/digit4[2]_i_326 
       (.I0(\i_/digit3[3]_i_191_n_0 ),
        .I1(\i_/digit3[3]_i_190_n_0 ),
        .I2(abs_b[3]),
        .I3(abs_a[18]),
        .I4(abs_b[4]),
        .I5(\i_/digit4[0]_i_50_n_0 ),
        .O(\i_/digit4[2]_i_326_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_327 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit4[2]_i_327_n_0 ));
  LUT6 #(
    .INIT(64'h9600FF96FF96FF96)) 
    \i_/digit4[2]_i_328 
       (.I0(\i_/digit4[2]_i_345_n_0 ),
        .I1(\i_/digit4[2]_i_344_n_0 ),
        .I2(\i_/digit4[2]_i_343_n_0 ),
        .I3(\i_/digit4[2]_i_346_n_0 ),
        .I4(abs_b[4]),
        .I5(abs_a[19]),
        .O(\i_/digit4[2]_i_328_n_0 ));
  LUT6 #(
    .INIT(64'h96FF009600960096)) 
    \i_/digit4[2]_i_329 
       (.I0(\i_/digit4[2]_i_351_n_0 ),
        .I1(\i_/digit4[2]_i_350_n_0 ),
        .I2(\i_/digit4[2]_i_349_n_0 ),
        .I3(\i_/digit4[2]_i_352_n_0 ),
        .I4(abs_a[20]),
        .I5(abs_b[4]),
        .O(\i_/digit4[2]_i_329_n_0 ));
  LUT6 #(
    .INIT(64'hFEEAA880A880FEEA)) 
    \i_/digit4[2]_i_33 
       (.I0(\i_/digit4[3]_i_37_n_0 ),
        .I1(\i_/digit3[3]_i_40_n_0 ),
        .I2(\i_/digit4[2]_i_54_n_0 ),
        .I3(\i_/digit3[3]_i_41_n_0 ),
        .I4(\i_/digit4[0]_i_13_n_0 ),
        .I5(\i_/digit4[2]_i_55_n_0 ),
        .O(\i_/digit4[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h999696665AAA5AAA)) 
    \i_/digit4[2]_i_331 
       (.I0(\i_/digit4[2]_i_358_n_0 ),
        .I1(abs_b[4]),
        .I2(\i_/digit4[2]_i_351_n_0 ),
        .I3(\i_/digit4[2]_i_350_n_0 ),
        .I4(abs_b[3]),
        .I5(abs_a[21]),
        .O(\i_/digit4[2]_i_331_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_332 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[20]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [3]),
        .O(\i_/digit4[2]_i_332_n_0 ));
  LUT6 #(
    .INIT(64'h65A6A665A66565A6)) 
    \i_/digit4[2]_i_333 
       (.I0(\i_/digit4[2]_i_337_n_0 ),
        .I1(\i_/digit4[2]_i_359_n_0 ),
        .I2(\i_/digit4[2]_i_352_n_0 ),
        .I3(\i_/digit4[2]_i_349_n_0 ),
        .I4(\i_/digit4[2]_i_350_n_0 ),
        .I5(\i_/digit4[2]_i_351_n_0 ),
        .O(\i_/digit4[2]_i_333_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit4[2]_i_334 
       (.I0(\i_/digit4[2]_i_360_n_0 ),
        .I1(abs_b[4]),
        .I2(abs_a[22]),
        .I3(\i_/digit4[2]_i_362_n_0 ),
        .I4(\i_/digit4[2]_i_363_n_0 ),
        .I5(\i_/digit4[2]_i_364_n_0 ),
        .O(\i_/digit4[2]_i_334_n_0 ));
  LUT6 #(
    .INIT(64'h17FFFFFF00771777)) 
    \i_/digit4[2]_i_335 
       (.I0(\i_/digit4[2]_i_351_n_0 ),
        .I1(\i_/digit4[2]_i_350_n_0 ),
        .I2(abs_b[3]),
        .I3(abs_a[21]),
        .I4(abs_b[4]),
        .I5(\i_/digit4[2]_i_358_n_0 ),
        .O(\i_/digit4[2]_i_335_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_336 
       (.I0(b_IBUF[7]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [2]),
        .I3(a_IBUF[21]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [0]),
        .O(\i_/digit4[2]_i_336_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_337 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[21]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [0]),
        .O(\i_/digit4[2]_i_337_n_0 ));
  LUT5 #(
    .INIT(32'h65FFA6CC)) 
    \i_/digit4[2]_i_338 
       (.I0(abs_b[5]),
        .I1(\i_/digit4[2]_i_358_n_0 ),
        .I2(abs_b[4]),
        .I3(abs_a[21]),
        .I4(\i_/digit4[2]_i_365_n_0 ),
        .O(\i_/digit4[2]_i_338_n_0 ));
  LUT6 #(
    .INIT(64'h80EA7F157F157F15)) 
    \i_/digit4[2]_i_339 
       (.I0(\i_/digit4[2]_i_348_n_0 ),
        .I1(abs_b[5]),
        .I2(abs_a[22]),
        .I3(\i_/digit4[2]_i_347_n_0 ),
        .I4(abs_a[21]),
        .I5(abs_b[7]),
        .O(\i_/digit4[2]_i_339_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_34 
       (.I0(b_IBUF[23]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [2]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit4[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h577FFFFF01153F3F)) 
    \i_/digit4[2]_i_340 
       (.I0(abs_b[4]),
        .I1(\i_/digit4[2]_i_364_n_0 ),
        .I2(\i_/digit4[2]_i_363_n_0 ),
        .I3(abs_b[3]),
        .I4(abs_a[23]),
        .I5(\i_/digit4[2]_i_367_n_0 ),
        .O(\i_/digit4[2]_i_340_n_0 ));
  LUT6 #(
    .INIT(64'h718E8E8E8E717171)) 
    \i_/digit4[2]_i_341 
       (.I0(\i_/digit4[2]_i_368_n_0 ),
        .I1(\i_/digit4[2]_i_369_n_0 ),
        .I2(\digit4[2]_i_370_n_0 ),
        .I3(abs_b[6]),
        .I4(abs_a[22]),
        .I5(\i_/digit4[2]_i_371_n_0 ),
        .O(\i_/digit4[2]_i_341_n_0 ));
  LUT6 #(
    .INIT(64'h105175F775F71051)) 
    \i_/digit4[2]_i_342 
       (.I0(\i_/digit3[3]_i_189_n_0 ),
        .I1(\i_/digit3[3]_i_195_n_0 ),
        .I2(\i_/digit3[3]_i_196_n_0 ),
        .I3(\i_/digit4[2]_i_372_n_0 ),
        .I4(\i_/digit4[2]_i_373_n_0 ),
        .I5(\i_/digit3[3]_i_198_n_0 ),
        .O(\i_/digit4[2]_i_342_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_343 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[21]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [0]),
        .O(\i_/digit4[2]_i_343_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit4[2]_i_344 
       (.I0(\i_/digit4[0]_i_54_n_0 ),
        .I1(\i_/digit4[2]_i_348_0 [0]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[21]),
        .I4(abs_b[2]),
        .I5(\i_/digit4[2]_i_374_n_0 ),
        .O(\i_/digit4[2]_i_344_n_0 ));
  LUT6 #(
    .INIT(64'h9696966666669666)) 
    \i_/digit4[2]_i_345 
       (.I0(\i_/digit4[2]_i_375_n_0 ),
        .I1(\i_/digit4[2]_i_376_n_0 ),
        .I2(abs_b[2]),
        .I3(a_IBUF[22]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [1]),
        .O(\i_/digit4[2]_i_345_n_0 ));
  LUT6 #(
    .INIT(64'h066F6F6F0606066F)) 
    \i_/digit4[2]_i_346 
       (.I0(\i_/digit4[0]_i_55_n_0 ),
        .I1(\i_/digit4[0]_i_54_n_0 ),
        .I2(\i_/digit4[0]_i_53_n_0 ),
        .I3(\i_/digit3[3]_i_197_n_0 ),
        .I4(\i_/digit4[0]_i_52_n_0 ),
        .I5(\i_/digit3[3]_i_198_n_0 ),
        .O(\i_/digit4[2]_i_346_n_0 ));
  LUT6 #(
    .INIT(64'h99A6A666556A6AAA)) 
    \i_/digit4[2]_i_347 
       (.I0(\i_/digit4[2]_i_367_n_0 ),
        .I1(abs_a[23]),
        .I2(abs_b[3]),
        .I3(\i_/digit4[2]_i_363_n_0 ),
        .I4(\i_/digit4[2]_i_364_n_0 ),
        .I5(abs_b[4]),
        .O(\i_/digit4[2]_i_347_n_0 ));
  LUT6 #(
    .INIT(64'hEA8080EA80EAEA80)) 
    \i_/digit4[2]_i_348 
       (.I0(\i_/digit4[2]_i_360_n_0 ),
        .I1(abs_a[22]),
        .I2(abs_b[4]),
        .I3(\i_/digit4[2]_i_364_n_0 ),
        .I4(\i_/digit4[2]_i_363_n_0 ),
        .I5(\i_/digit4[2]_i_362_n_0 ),
        .O(\i_/digit4[2]_i_348_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_349 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[22]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [1]),
        .O(\i_/digit4[2]_i_349_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEAAA80888000)) 
    \i_/digit4[2]_i_35 
       (.I0(\i_/digit4[3]_i_29_n_0 ),
        .I1(abs_a[2]),
        .I2(\digit4_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[24]),
        .I5(\i_/digit4[3]_i_28_n_0 ),
        .O(\i_/digit4[2]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB22222222222)) 
    \i_/digit4[2]_i_350 
       (.I0(\i_/digit4[2]_i_375_n_0 ),
        .I1(\i_/digit4[2]_i_376_n_0 ),
        .I2(\i_/digit4[2]_i_348_0 [1]),
        .I3(a_IBUF[31]),
        .I4(a_IBUF[22]),
        .I5(abs_b[2]),
        .O(\i_/digit4[2]_i_350_n_0 ));
  LUT6 #(
    .INIT(64'h99955595666AAA6A)) 
    \i_/digit4[2]_i_351 
       (.I0(\i_/digit4[2]_i_377_n_0 ),
        .I1(abs_b[2]),
        .I2(a_IBUF[23]),
        .I3(a_IBUF[31]),
        .I4(\i_/digit4[2]_i_348_0 [2]),
        .I5(\i_/digit4[2]_i_378_n_0 ),
        .O(\i_/digit4[2]_i_351_n_0 ));
  LUT6 #(
    .INIT(64'h06066F066F066F6F)) 
    \i_/digit4[2]_i_352 
       (.I0(\i_/digit4[2]_i_375_n_0 ),
        .I1(\i_/digit4[2]_i_379_n_0 ),
        .I2(\i_/digit4[2]_i_343_n_0 ),
        .I3(\i_/digit4[2]_i_374_n_0 ),
        .I4(\i_/digit4[2]_i_380_n_0 ),
        .I5(\i_/digit4[0]_i_54_n_0 ),
        .O(\i_/digit4[2]_i_352_n_0 ));
  LUT6 #(
    .INIT(64'h6999666996669996)) 
    \i_/digit4[2]_i_353 
       (.I0(\i_/digit4[2]_i_379_n_0 ),
        .I1(\i_/digit4[2]_i_375_n_0 ),
        .I2(\i_/digit4[0]_i_54_n_0 ),
        .I3(\i_/digit4[2]_i_380_n_0 ),
        .I4(\i_/digit4[2]_i_374_n_0 ),
        .I5(\i_/digit4[2]_i_343_n_0 ),
        .O(\i_/digit4[2]_i_353_n_0 ));
  LUT6 #(
    .INIT(64'hA995566A566AA995)) 
    \i_/digit4[2]_i_358 
       (.I0(\i_/digit4[2]_i_381_n_0 ),
        .I1(\i_/digit4[2]_i_377_n_0 ),
        .I2(\i_/digit4[2]_i_382_n_0 ),
        .I3(\i_/digit4[2]_i_378_n_0 ),
        .I4(\digit4[2]_i_383_n_0 ),
        .I5(\i_/digit4[2]_i_384_n_0 ),
        .O(\i_/digit4[2]_i_358_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_359 
       (.I0(b_IBUF[5]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [0]),
        .I3(a_IBUF[21]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [0]),
        .O(\i_/digit4[2]_i_359_n_0 ));
  LUT6 #(
    .INIT(64'hA880FEEAFEEAA880)) 
    \i_/digit4[2]_i_360 
       (.I0(\i_/digit4[2]_i_381_n_0 ),
        .I1(\i_/digit4[2]_i_377_n_0 ),
        .I2(\i_/digit4[2]_i_382_n_0 ),
        .I3(\i_/digit4[2]_i_378_n_0 ),
        .I4(\digit4[2]_i_383_n_0 ),
        .I5(\i_/digit4[2]_i_384_n_0 ),
        .O(\i_/digit4[2]_i_360_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_362 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[24]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [3]),
        .O(\i_/digit4[2]_i_362_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBB22222222222)) 
    \i_/digit4[2]_i_363 
       (.I0(\i_/digit4[2]_i_384_n_0 ),
        .I1(\i_/digit4[2]_i_385_n_0 ),
        .I2(\i_/digit4[2]_i_348_0 [3]),
        .I3(a_IBUF[31]),
        .I4(a_IBUF[24]),
        .I5(abs_b[2]),
        .O(\i_/digit4[2]_i_363_n_0 ));
  LUT6 #(
    .INIT(64'h656AAAAA9A955555)) 
    \i_/digit4[2]_i_364 
       (.I0(\i_/digit4[2]_i_386_n_0 ),
        .I1(\i_/digit4[2]_i_397_0 [0]),
        .I2(a_IBUF[31]),
        .I3(a_IBUF[25]),
        .I4(abs_b[2]),
        .I5(\i_/digit4[2]_i_388_n_0 ),
        .O(\i_/digit4[2]_i_364_n_0 ));
  LUT6 #(
    .INIT(64'h75F71051105175F7)) 
    \i_/digit4[2]_i_365 
       (.I0(\i_/digit4[2]_i_349_n_0 ),
        .I1(\i_/digit4[2]_i_389_n_0 ),
        .I2(\i_/digit4[2]_i_376_n_0 ),
        .I3(\i_/digit4[2]_i_375_n_0 ),
        .I4(\i_/digit4[2]_i_390_n_0 ),
        .I5(\i_/digit4[2]_i_378_n_0 ),
        .O(\i_/digit4[2]_i_365_n_0 ));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    \i_/digit4[2]_i_367 
       (.I0(\i_/digit4[2]_i_391_n_0 ),
        .I1(\i_/digit4[2]_i_388_n_0 ),
        .I2(\i_/digit4[2]_i_386_n_0 ),
        .I3(\i_/digit4[2]_i_369_n_0 ),
        .I4(\i_/digit4[2]_i_392_n_0 ),
        .I5(\i_/digit4[2]_i_393_n_0 ),
        .O(\i_/digit4[2]_i_367_n_0 ));
  LUT6 #(
    .INIT(64'hB800FFFF0000B800)) 
    \i_/digit4[2]_i_368 
       (.I0(\i_/digit4[2]_i_397_0 [0]),
        .I1(a_IBUF[31]),
        .I2(a_IBUF[25]),
        .I3(abs_b[2]),
        .I4(\i_/digit4[2]_i_388_n_0 ),
        .I5(\i_/digit4[2]_i_386_n_0 ),
        .O(\i_/digit4[2]_i_368_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_369 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[25]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_397_0 [0]),
        .O(\i_/digit4[2]_i_369_n_0 ));
  LUT6 #(
    .INIT(64'h71FF0071007171FF)) 
    \i_/digit4[2]_i_37 
       (.I0(\i_/digit4[3]_i_23_n_0 ),
        .I1(\i_/digit4[3]_i_42_n_0 ),
        .I2(\i_/digit4[3]_i_24_n_0 ),
        .I3(\i_/digit4[2]_i_40_n_0 ),
        .I4(\i_/digit4[3]_i_28_n_0 ),
        .I5(\i_/digit4[2]_i_58_n_0 ),
        .O(\i_/digit4[2]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h78888777)) 
    \i_/digit4[2]_i_371 
       (.I0(abs_b[4]),
        .I1(abs_a[24]),
        .I2(abs_b[3]),
        .I3(abs_a[25]),
        .I4(\i_/digit4[2]_i_397_n_0 ),
        .O(\i_/digit4[2]_i_371_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_372 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[19]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_240_0 [2]),
        .O(\i_/digit4[2]_i_372_n_0 ));
  LUT6 #(
    .INIT(64'h4848444848888888)) 
    \i_/digit4[2]_i_373 
       (.I0(abs_b[2]),
        .I1(abs_a[19]),
        .I2(abs_b[1]),
        .I3(b_IBUF[0]),
        .I4(abs_a[21]),
        .I5(\i_/digit4[2]_i_398_n_0 ),
        .O(\i_/digit4[2]_i_373_n_0 ));
  LUT6 #(
    .INIT(64'h0777FFFFDFFFFFFF)) 
    \i_/digit4[2]_i_374 
       (.I0(b_IBUF[0]),
        .I1(abs_a[22]),
        .I2(abs_b[0]),
        .I3(abs_a[21]),
        .I4(abs_a[20]),
        .I5(abs_b[1]),
        .O(\i_/digit4[2]_i_374_n_0 ));
  LUT6 #(
    .INIT(64'h653F6AC06AC06AC0)) 
    \i_/digit4[2]_i_375 
       (.I0(abs_a[24]),
        .I1(abs_b[1]),
        .I2(abs_a[22]),
        .I3(b_IBUF[0]),
        .I4(abs_a[23]),
        .I5(abs_b[0]),
        .O(\i_/digit4[2]_i_375_n_0 ));
  LUT6 #(
    .INIT(64'h77577FFF7FFF7FFF)) 
    \i_/digit4[2]_i_376 
       (.I0(abs_a[21]),
        .I1(abs_b[1]),
        .I2(b_IBUF[0]),
        .I3(abs_a[23]),
        .I4(abs_b[0]),
        .I5(abs_a[22]),
        .O(\i_/digit4[2]_i_376_n_0 ));
  LUT6 #(
    .INIT(64'hF888080000000000)) 
    \i_/digit4[2]_i_377 
       (.I0(abs_a[23]),
        .I1(abs_b[0]),
        .I2(abs_a[24]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[22]),
        .O(\i_/digit4[2]_i_377_n_0 ));
  LUT6 #(
    .INIT(64'h4777B88878887888)) 
    \i_/digit4[2]_i_378 
       (.I0(abs_b[1]),
        .I1(abs_a[23]),
        .I2(abs_a[24]),
        .I3(abs_b[0]),
        .I4(abs_a[25]),
        .I5(b_IBUF[0]),
        .O(\i_/digit4[2]_i_378_n_0 ));
  LUT6 #(
    .INIT(64'hA9995955FFFFFFFF)) 
    \i_/digit4[2]_i_379 
       (.I0(abs_b[2]),
        .I1(\i_/digit4[2]_i_399_n_0 ),
        .I2(abs_a[23]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[21]),
        .O(\i_/digit4[2]_i_379_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_38 
       (.I0(b_IBUF[26]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[1] [1]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit4[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_380 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[21]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [0]),
        .O(\i_/digit4[2]_i_380_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_381 
       (.I0(b_IBUF[4]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [3]),
        .I3(a_IBUF[23]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [2]),
        .O(\i_/digit4[2]_i_381_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_382 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[23]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [2]),
        .O(\i_/digit4[2]_i_382_n_0 ));
  LUT6 #(
    .INIT(64'h4777B88878887888)) 
    \i_/digit4[2]_i_384 
       (.I0(abs_b[1]),
        .I1(abs_a[24]),
        .I2(abs_a[25]),
        .I3(abs_b[0]),
        .I4(abs_a[26]),
        .I5(b_IBUF[0]),
        .O(\i_/digit4[2]_i_384_n_0 ));
  LUT6 #(
    .INIT(64'h0777FFFFDFFFFFFF)) 
    \i_/digit4[2]_i_385 
       (.I0(b_IBUF[0]),
        .I1(abs_a[25]),
        .I2(abs_b[0]),
        .I3(abs_a[24]),
        .I4(abs_a[23]),
        .I5(abs_b[1]),
        .O(\i_/digit4[2]_i_385_n_0 ));
  LUT6 #(
    .INIT(64'h653F6AC06AC06AC0)) 
    \i_/digit4[2]_i_386 
       (.I0(abs_a[27]),
        .I1(abs_b[1]),
        .I2(abs_a[25]),
        .I3(b_IBUF[0]),
        .I4(abs_a[26]),
        .I5(abs_b[0]),
        .O(\i_/digit4[2]_i_386_n_0 ));
  LUT6 #(
    .INIT(64'h0777FFFFDFFFFFFF)) 
    \i_/digit4[2]_i_388 
       (.I0(b_IBUF[0]),
        .I1(abs_a[26]),
        .I2(abs_b[0]),
        .I3(abs_a[25]),
        .I4(abs_a[24]),
        .I5(abs_b[1]),
        .O(\i_/digit4[2]_i_388_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_389 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[22]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [1]),
        .O(\i_/digit4[2]_i_389_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_39 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[27]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[1] [2]),
        .O(\i_/digit4[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h4848444848888888)) 
    \i_/digit4[2]_i_390 
       (.I0(abs_b[2]),
        .I1(abs_a[22]),
        .I2(abs_b[1]),
        .I3(b_IBUF[0]),
        .I4(abs_a[24]),
        .I5(\i_/digit4[2]_i_407_n_0 ),
        .O(\i_/digit4[2]_i_390_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_391 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[25]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_397_0 [0]),
        .O(\i_/digit4[2]_i_391_n_0 ));
  LUT6 #(
    .INIT(64'h4777B88878887888)) 
    \i_/digit4[2]_i_392 
       (.I0(abs_b[1]),
        .I1(abs_a[26]),
        .I2(abs_a[27]),
        .I3(abs_b[0]),
        .I4(abs_a[28]),
        .I5(b_IBUF[0]),
        .O(\i_/digit4[2]_i_392_n_0 ));
  LUT6 #(
    .INIT(64'h4848444848888888)) 
    \i_/digit4[2]_i_393 
       (.I0(abs_b[2]),
        .I1(abs_a[25]),
        .I2(abs_b[1]),
        .I3(b_IBUF[0]),
        .I4(abs_a[27]),
        .I5(\i_/digit4[2]_i_409_n_0 ),
        .O(\i_/digit4[2]_i_393_n_0 ));
  LUT6 #(
    .INIT(64'hF888080000000000)) 
    \i_/digit4[2]_i_394 
       (.I0(abs_a[26]),
        .I1(abs_b[0]),
        .I2(abs_a[27]),
        .I3(b_IBUF[0]),
        .I4(abs_b[1]),
        .I5(abs_a[25]),
        .O(\i_/digit4[2]_i_394_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \i_/digit4[2]_i_397 
       (.I0(\i_/digit4[2]_i_394_n_0 ),
        .I1(\i_/digit4[2]_i_410_n_0 ),
        .I2(\i_/digit4[2]_i_411_n_0 ),
        .I3(\i_/digit4[2]_i_412_n_0 ),
        .I4(\i_/digit4[2]_i_413_n_0 ),
        .I5(\i_/digit4[2]_i_414_n_0 ),
        .O(\i_/digit4[2]_i_397_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_398 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[21]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [0]),
        .O(\i_/digit4[2]_i_398_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_399 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[23]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [2]),
        .O(\i_/digit4[2]_i_399_n_0 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \i_/digit4[2]_i_4 
       (.I0(\i_/digit4[2]_i_12_n_0 ),
        .I1(\i_/digit4[2]_i_13_n_0 ),
        .I2(\i_/digit4[2]_i_14_n_0 ),
        .I3(\i_/digit4[2]_i_15_n_0 ),
        .I4(\i_/digit4[2]_i_16_n_0 ),
        .I5(\i_/digit4[2]_i_17_n_0 ),
        .O(p_0[30]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_40 
       (.I0(b_IBUF[25]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[1] [0]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit4[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_400 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[25]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_397_0 [0]),
        .O(\i_/digit4[2]_i_400_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_407 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[24]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [3]),
        .O(\i_/digit4[2]_i_407_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_409 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[27]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_397_0 [2]),
        .O(\i_/digit4[2]_i_409_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_410 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[26]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_397_0 [1]),
        .O(\i_/digit4[2]_i_410_n_0 ));
  LUT6 #(
    .INIT(64'h69965AA59669A55A)) 
    \i_/digit4[2]_i_411 
       (.I0(\i_/digit4[2]_i_416_n_0 ),
        .I1(\i_/digit4[2]_i_417_n_0 ),
        .I2(\i_/digit4[2]_i_418_n_0 ),
        .I3(\i_/digit4[2]_i_419_n_0 ),
        .I4(\i_/digit4[2]_i_420_n_0 ),
        .I5(\i_/digit4[2]_i_421_n_0 ),
        .O(\i_/digit4[2]_i_411_n_0 ));
  LUT6 #(
    .INIT(64'h7877788888888888)) 
    \i_/digit4[2]_i_412 
       (.I0(abs_a[27]),
        .I1(abs_b[0]),
        .I2(\i_/digit4[2]_i_411_0 [0]),
        .I3(a_IBUF[31]),
        .I4(a_IBUF[29]),
        .I5(b_IBUF[0]),
        .O(\i_/digit4[2]_i_412_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_413 
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [1]),
        .I3(a_IBUF[27]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_397_0 [2]),
        .O(\i_/digit4[2]_i_413_n_0 ));
  LUT6 #(
    .INIT(64'h8088800000000000)) 
    \i_/digit4[2]_i_414 
       (.I0(abs_a[26]),
        .I1(b_IBUF[0]),
        .I2(\i_/digit4[2]_i_397_0 [3]),
        .I3(a_IBUF[31]),
        .I4(a_IBUF[28]),
        .I5(abs_b[0]),
        .O(\i_/digit4[2]_i_414_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_416 
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [1]),
        .I3(a_IBUF[28]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_397_0 [3]),
        .O(\i_/digit4[2]_i_416_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit4[2]_i_417 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[28]),
        .I2(a_IBUF[31]),
        .I3(\i_/digit4[2]_i_397_0 [3]),
        .O(\i_/digit4[2]_i_417_n_0 ));
  LUT6 #(
    .INIT(64'h1D1D1DFFFFFF1DFF)) 
    \i_/digit4[2]_i_418 
       (.I0(b_IBUF[6]),
        .I1(b_IBUF[31]),
        .I2(\digit2_reg[0]_0 [1]),
        .I3(a_IBUF[24]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_348_0 [3]),
        .O(\i_/digit4[2]_i_418_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_419 
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [2]),
        .I3(a_IBUF[27]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_397_0 [2]),
        .O(\i_/digit4[2]_i_419_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_420 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[31]),
        .I2(\digit1_reg[0]_0 [0]),
        .I3(a_IBUF[29]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit4[2]_i_411_0 [0]),
        .O(\i_/digit4[2]_i_420_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit4[2]_i_421 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[30]),
        .I2(a_IBUF[31]),
        .I3(\i_/digit4[2]_i_411_0 [1]),
        .O(\i_/digit4[2]_i_421_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_43 
       (.I0(b_IBUF[25]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[1] [0]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit4[2]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEAAA80888000)) 
    \i_/digit4[2]_i_44 
       (.I0(\i_/digit4[2]_i_57_n_0 ),
        .I1(abs_a[3]),
        .I2(\digit4_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[24]),
        .I5(\i_/digit4[2]_i_56_n_0 ),
        .O(\i_/digit4[2]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit4[2]_i_45 
       (.I0(\i_/digit4[2]_i_59_n_0 ),
        .I1(\i_/digit4[2]_i_60_n_0 ),
        .I2(b_IBUF[24]),
        .I3(b_IBUF[31]),
        .I4(\digit4_reg[0] [3]),
        .I5(abs_a[4]),
        .O(\i_/digit4[2]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_46 
       (.I0(b_IBUF[26]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[1] [1]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit4[2]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h577F01150115577F)) 
    \i_/digit4[2]_i_47 
       (.I0(\i_/digit4[2]_i_61_n_0 ),
        .I1(\i_/digit4[3]_i_28_n_0 ),
        .I2(\i_/digit4[2]_i_62_n_0 ),
        .I3(\i_/digit4[3]_i_29_n_0 ),
        .I4(\i_/digit4[2]_i_56_n_0 ),
        .I5(\i_/digit4[2]_i_63_n_0 ),
        .O(\i_/digit4[2]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h8788877777777777)) 
    \i_/digit4[2]_i_48 
       (.I0(abs_a[1]),
        .I1(abs_b[25]),
        .I2(\i_/digit4[2]_i_14_0 [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[29]),
        .I5(abs_a[0]),
        .O(\i_/digit4[2]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hBF2A40D540D540D5)) 
    \i_/digit4[2]_i_49 
       (.I0(\i_/digit4[2]_i_60_n_0 ),
        .I1(abs_b[22]),
        .I2(abs_a[4]),
        .I3(\i_/digit4[2]_i_59_n_0 ),
        .I4(abs_a[3]),
        .I5(abs_b[24]),
        .O(\i_/digit4[2]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h9666999669996669)) 
    \i_/digit4[2]_i_50 
       (.I0(\i_/digit4[2]_i_66_n_0 ),
        .I1(\i_/digit4[2]_i_67_n_0 ),
        .I2(\i_/digit4[2]_i_68_n_0 ),
        .I3(\i_/digit4[2]_i_69_n_0 ),
        .I4(\i_/digit4[2]_i_70_n_0 ),
        .I5(\i_/digit4[2]_i_71_n_0 ),
        .O(\i_/digit4[2]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hB22B2BB24DD4D44D)) 
    \i_/digit4[2]_i_51 
       (.I0(\i_/digit4[2]_i_72_n_0 ),
        .I1(\i_/digit4[2]_i_73_n_0 ),
        .I2(\i_/digit4[2]_i_68_n_0 ),
        .I3(\i_/digit4[2]_i_69_n_0 ),
        .I4(\i_/digit4[2]_i_70_n_0 ),
        .I5(\i_/digit4[2]_i_74_n_0 ),
        .O(\i_/digit4[2]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \i_/digit4[2]_i_52 
       (.I0(\i_/digit4[2]_i_75_n_0 ),
        .I1(\i_/digit4[2]_i_76_n_0 ),
        .I2(\i_/digit4[2]_i_77_n_0 ),
        .I3(\i_/digit4[2]_i_78_n_0 ),
        .I4(abs_a[4]),
        .I5(abs_b[19]),
        .O(\i_/digit4[2]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h577FFFFF01153F3F)) 
    \i_/digit4[2]_i_53 
       (.I0(abs_b[19]),
        .I1(\i_/digit3[3]_i_53_n_0 ),
        .I2(\i_/digit3[3]_i_52_n_0 ),
        .I3(abs_b[18]),
        .I4(abs_a[3]),
        .I5(\i_/digit4[0]_i_16_n_0 ),
        .O(\i_/digit4[2]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_54 
       (.I0(b_IBUF[21]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [0]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit4[2]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h566A6A566A56566A)) 
    \i_/digit4[2]_i_55 
       (.I0(\i_/digit4[3]_i_46_n_0 ),
        .I1(\i_/digit3[3]_i_54_n_0 ),
        .I2(\i_/digit3[3]_i_55_n_0 ),
        .I3(\i_/digit4[2]_i_79_n_0 ),
        .I4(\i_/digit3[3]_i_52_n_0 ),
        .I5(\i_/digit3[3]_i_53_n_0 ),
        .O(\i_/digit4[2]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \i_/digit4[2]_i_56 
       (.I0(\i_/digit4[2]_i_80_n_0 ),
        .I1(abs_b[20]),
        .I2(abs_a[5]),
        .I3(\i_/digit4[2]_i_81_n_0 ),
        .I4(\i_/digit4[2]_i_82_n_0 ),
        .I5(\i_/digit4[2]_i_83_n_0 ),
        .O(\i_/digit4[2]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h69990000FFFF6999)) 
    \i_/digit4[2]_i_57 
       (.I0(\i_/digit4[3]_i_41_n_0 ),
        .I1(\i_/digit4[3]_i_40_n_0 ),
        .I2(abs_b[20]),
        .I3(abs_a[4]),
        .I4(\i_/digit4[3]_i_39_n_0 ),
        .I5(\i_/digit4[3]_i_38_n_0 ),
        .O(\i_/digit4[2]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h555596699669AAAA)) 
    \i_/digit4[2]_i_58 
       (.I0(\i_/digit4[2]_i_62_n_0 ),
        .I1(\i_/digit4[3]_i_48_n_0 ),
        .I2(\i_/digit4[3]_i_33_n_0 ),
        .I3(\i_/digit4[3]_i_34_n_0 ),
        .I4(\i_/digit4[3]_i_36_n_0 ),
        .I5(\i_/digit4[3]_i_35_n_0 ),
        .O(\i_/digit4[2]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hE6732ABF198CD540)) 
    \i_/digit4[2]_i_59 
       (.I0(\i_/digit4[2]_i_80_n_0 ),
        .I1(abs_a[5]),
        .I2(abs_b[20]),
        .I3(\i_/digit4[2]_i_81_n_0 ),
        .I4(abs_b[21]),
        .I5(\i_/digit4[2]_i_84_n_0 ),
        .O(\i_/digit4[2]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h7117171717717171)) 
    \i_/digit4[2]_i_60 
       (.I0(\i_/digit4[2]_i_83_n_0 ),
        .I1(\i_/digit4[2]_i_82_n_0 ),
        .I2(\i_/digit4[2]_i_81_n_0 ),
        .I3(abs_a[5]),
        .I4(abs_b[20]),
        .I5(\i_/digit4[2]_i_80_n_0 ),
        .O(\i_/digit4[2]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_61 
       (.I0(b_IBUF[25]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[1] [0]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit4[2]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_62 
       (.I0(b_IBUF[24]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [3]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit4[2]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'h9A59599A599A9A59)) 
    \i_/digit4[2]_i_63 
       (.I0(\i_/digit4[2]_i_85_n_0 ),
        .I1(\i_/digit4[3]_i_38_n_0 ),
        .I2(\i_/digit4[3]_i_39_n_0 ),
        .I3(\i_/digit4[2]_i_86_n_0 ),
        .I4(\i_/digit4[3]_i_40_n_0 ),
        .I5(\i_/digit4[3]_i_41_n_0 ),
        .O(\i_/digit4[2]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h7F777FFF15111555)) 
    \i_/digit4[2]_i_66 
       (.I0(\i_/digit4[2]_i_87_n_0 ),
        .I1(abs_a[7]),
        .I2(\digit4_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[21]),
        .I5(\i_/digit4[2]_i_89_n_0 ),
        .O(\i_/digit4[2]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h7787878888787877)) 
    \i_/digit4[2]_i_67 
       (.I0(abs_b[20]),
        .I1(abs_a[7]),
        .I2(\i_/digit4[2]_i_90_n_0 ),
        .I3(\i_/digit4[2]_i_91_n_0 ),
        .I4(\digit4[2]_i_92_n_0 ),
        .I5(\i_/digit4[2]_i_93_n_0 ),
        .O(\i_/digit4[2]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h56A6AAAAA9595555)) 
    \i_/digit4[2]_i_68 
       (.I0(\i_/digit4[2]_i_87_n_0 ),
        .I1(b_IBUF[21]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[0] [0]),
        .I4(abs_a[7]),
        .I5(\i_/digit4[2]_i_89_n_0 ),
        .O(\i_/digit4[2]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_69 
       (.I0(b_IBUF[22]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [1]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit4[2]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit4[2]_i_7 
       (.I0(\i_/digit4[3]_i_11_n_0 ),
        .I1(\i_/digit4[3]_i_12_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[25]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[1] [0]),
        .O(\i_/digit4[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8EEE8E8E8EEEEEEE)) 
    \i_/digit4[2]_i_70 
       (.I0(\i_/digit4[2]_i_94_n_0 ),
        .I1(\i_/digit4[2]_i_95_n_0 ),
        .I2(abs_a[6]),
        .I3(\digit4_reg[0] [0]),
        .I4(b_IBUF[31]),
        .I5(b_IBUF[21]),
        .O(\i_/digit4[2]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h8A80757F757F757F)) 
    \i_/digit4[2]_i_71 
       (.I0(abs_a[4]),
        .I1(\digit4_reg[1] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[25]),
        .I4(abs_a[5]),
        .I5(abs_b[22]),
        .O(\i_/digit4[2]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit4[2]_i_72 
       (.I0(\i_/digit4[2]_i_80_n_0 ),
        .I1(abs_a[5]),
        .I2(\digit4_reg[0] [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[22]),
        .I5(\i_/digit4[2]_i_81_n_0 ),
        .O(\i_/digit4[2]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_73 
       (.I0(b_IBUF[23]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [2]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit4[2]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_74 
       (.I0(b_IBUF[27]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[1] [2]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit4[2]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hA959555556A6AAAA)) 
    \i_/digit4[2]_i_75 
       (.I0(\i_/digit4[2]_i_96_n_0 ),
        .I1(b_IBUF[18]),
        .I2(b_IBUF[31]),
        .I3(\digit3_reg[0]_0 [1]),
        .I4(abs_a[6]),
        .I5(\i_/digit4[2]_i_97_n_0 ),
        .O(\i_/digit4[2]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_76 
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [2]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit4[2]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBFFF2A222AAA)) 
    \i_/digit4[2]_i_77 
       (.I0(\i_/digit4[0]_i_18_n_0 ),
        .I1(abs_a[5]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[18]),
        .I5(\i_/digit4[2]_i_98_n_0 ),
        .O(\i_/digit4[2]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h00B2B2FFB2FF00B2)) 
    \i_/digit4[2]_i_78 
       (.I0(\i_/digit3[3]_i_67_n_0 ),
        .I1(\i_/digit4[0]_i_20_n_0 ),
        .I2(\i_/digit3[3]_i_66_n_0 ),
        .I3(\i_/digit4[0]_i_21_n_0 ),
        .I4(\digit4[0]_i_19_n_0 ),
        .I5(\i_/digit4[0]_i_18_n_0 ),
        .O(\i_/digit4[2]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_79 
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [2]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit4[2]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h6969699999996999)) 
    \i_/digit4[2]_i_8 
       (.I0(\i_/digit4[2]_i_18_n_0 ),
        .I1(\i_/digit4[2]_i_19_n_0 ),
        .I2(abs_a[0]),
        .I3(b_IBUF[24]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [3]),
        .O(\i_/digit4[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit4[2]_i_80 
       (.I0(\i_/digit4[3]_i_52_n_0 ),
        .I1(abs_a[5]),
        .I2(\digit4_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[21]),
        .I5(\i_/digit4[3]_i_51_n_0 ),
        .O(\i_/digit4[2]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h8A80757F757F8A80)) 
    \i_/digit4[2]_i_81 
       (.I0(abs_a[6]),
        .I1(\digit4_reg[0] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[21]),
        .I4(\i_/digit4[2]_i_95_n_0 ),
        .I5(\i_/digit4[2]_i_94_n_0 ),
        .O(\i_/digit4[2]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hFFD4D400D400FFD4)) 
    \i_/digit4[2]_i_82 
       (.I0(\i_/digit4[3]_i_44_n_0 ),
        .I1(\i_/digit4[3]_i_58_n_0 ),
        .I2(\i_/digit4[3]_i_45_n_0 ),
        .I3(\i_/digit4[2]_i_86_n_0 ),
        .I4(\i_/digit4[2]_i_99_n_0 ),
        .I5(\i_/digit4[3]_i_52_n_0 ),
        .O(\i_/digit4[2]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_83 
       (.I0(b_IBUF[23]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [2]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit4[2]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h718E8E718E71718E)) 
    \i_/digit4[2]_i_84 
       (.I0(\i_/digit4[2]_i_94_n_0 ),
        .I1(\i_/digit4[2]_i_95_n_0 ),
        .I2(\i_/digit4[2]_i_100_n_0 ),
        .I3(\i_/digit4[2]_i_69_n_0 ),
        .I4(\i_/digit4[2]_i_89_n_0 ),
        .I5(\i_/digit4[2]_i_101_n_0 ),
        .O(\i_/digit4[2]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_85 
       (.I0(b_IBUF[24]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [3]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit4[2]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_86 
       (.I0(b_IBUF[22]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [1]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit4[2]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h088F8F088F08088F)) 
    \i_/digit4[2]_i_87 
       (.I0(abs_a[7]),
        .I1(abs_b[19]),
        .I2(\i_/digit4[2]_i_102_n_0 ),
        .I3(\i_/digit4[2]_i_103_n_0 ),
        .I4(\i_/digit4[2]_i_104_n_0 ),
        .I5(\i_/digit4[2]_i_105_n_0 ),
        .O(\i_/digit4[2]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit4[2]_i_89 
       (.I0(\i_/digit4[2]_i_91_n_0 ),
        .I1(\i_/digit4[2]_i_90_n_0 ),
        .I2(\i_/digit4[2]_i_106_n_0 ),
        .I3(abs_a[9]),
        .I4(abs_b[18]),
        .I5(\i_/digit4[2]_i_108_n_0 ),
        .O(\i_/digit4[2]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[2]_i_90 
       (.I0(b_IBUF[20]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [3]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit4[2]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h6F0606066F6F6F06)) 
    \i_/digit4[2]_i_91 
       (.I0(\i_/digit4[2]_i_110_n_0 ),
        .I1(\i_/digit4[2]_i_111_n_0 ),
        .I2(\i_/digit4[2]_i_104_n_0 ),
        .I3(\i_/digit4[2]_i_112_n_0 ),
        .I4(\i_/digit4[2]_i_113_n_0 ),
        .I5(\i_/digit4[2]_i_114_n_0 ),
        .O(\i_/digit4[2]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hEA80157F157FEA80)) 
    \i_/digit4[2]_i_93 
       (.I0(\i_/digit4[2]_i_108_n_0 ),
        .I1(abs_b[18]),
        .I2(abs_a[9]),
        .I3(\i_/digit4[2]_i_106_n_0 ),
        .I4(\i_/digit4[2]_i_115_n_0 ),
        .I5(\i_/digit4[2]_i_116_n_0 ),
        .O(\i_/digit4[2]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \i_/digit4[2]_i_94 
       (.I0(\i_/digit4[2]_i_105_n_0 ),
        .I1(\i_/digit4[2]_i_104_n_0 ),
        .I2(\i_/digit4[2]_i_103_n_0 ),
        .I3(abs_a[7]),
        .I4(abs_b[19]),
        .I5(\i_/digit4[2]_i_102_n_0 ),
        .O(\i_/digit4[2]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h6A95FFFF00006A95)) 
    \i_/digit4[2]_i_95 
       (.I0(\i_/digit4[3]_i_63_n_0 ),
        .I1(abs_b[18]),
        .I2(abs_a[7]),
        .I3(\i_/digit4[3]_i_62_n_0 ),
        .I4(\i_/digit4[3]_i_61_n_0 ),
        .I5(\i_/digit4[3]_i_60_n_0 ),
        .O(\i_/digit4[2]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h8000A800EA00FECC)) 
    \i_/digit4[2]_i_96 
       (.I0(abs_b[16]),
        .I1(\i_/digit3[3]_i_82_n_0 ),
        .I2(abs_b[15]),
        .I3(abs_a[6]),
        .I4(\i_/digit3[3]_i_80_n_0 ),
        .I5(\i_/digit4[0]_i_22_n_0 ),
        .O(\i_/digit4[2]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \i_/digit4[2]_i_97 
       (.I0(\i_/digit4[2]_i_117_n_0 ),
        .I1(\i_/digit4[2]_i_118_n_0 ),
        .I2(abs_a[8]),
        .I3(abs_b[15]),
        .I4(\i_/digit4[2]_i_119_n_0 ),
        .I5(\i_/digit4[2]_i_120_n_0 ),
        .O(\i_/digit4[2]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hBF2A2ABF2ABFBF2A)) 
    \i_/digit4[2]_i_98 
       (.I0(\i_/digit3[3]_i_83_n_0 ),
        .I1(abs_a[5]),
        .I2(abs_b[16]),
        .I3(\i_/digit3[3]_i_82_n_0 ),
        .I4(\i_/digit3[3]_i_81_n_0 ),
        .I5(\i_/digit3[3]_i_80_n_0 ),
        .O(\i_/digit4[2]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h555569966996AAAA)) 
    \i_/digit4[2]_i_99 
       (.I0(\i_/digit4[2]_i_121_n_0 ),
        .I1(\i_/digit4[3]_i_55_n_0 ),
        .I2(\i_/digit4[3]_i_68_n_0 ),
        .I3(\i_/digit4[3]_i_56_n_0 ),
        .I4(\i_/digit4[3]_i_53_n_0 ),
        .I5(\i_/digit4[3]_i_54_n_0 ),
        .O(\i_/digit4[2]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h8778788778878778)) 
    \i_/digit4[3]_i_10 
       (.I0(abs_a[1]),
        .I1(abs_b[23]),
        .I2(\i_/digit4[3]_i_19_n_0 ),
        .I3(\i_/digit4[3]_i_20_n_0 ),
        .I4(\i_/digit4[3]_i_21_n_0 ),
        .I5(\i_/digit4[3]_i_22_n_0 ),
        .O(\i_/digit4[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit4[3]_i_11 
       (.I0(\i_/digit4[3]_i_23_n_0 ),
        .I1(\i_/digit4[3]_i_24_n_0 ),
        .I2(b_IBUF[24]),
        .I3(b_IBUF[31]),
        .I4(\digit4_reg[0] [3]),
        .I5(abs_a[1]),
        .O(\i_/digit4[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8A800000EFEAAAAA)) 
    \i_/digit4[3]_i_12 
       (.I0(\i_/digit4[2]_i_19_n_0 ),
        .I1(\digit4_reg[0] [3]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[24]),
        .I4(abs_a[0]),
        .I5(\i_/digit4[2]_i_18_n_0 ),
        .O(\i_/digit4[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit4[3]_i_13 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[26]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[1] [1]),
        .O(\i_/digit4[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF660F6F66060F660)) 
    \i_/digit4[3]_i_14 
       (.I0(\i_/digit4[2]_i_18_n_0 ),
        .I1(\digit4[3]_i_25_n_0 ),
        .I2(\i_/digit4[3]_i_26_n_0 ),
        .I3(\i_/digit4[3]_i_27_n_0 ),
        .I4(\i_/digit4[0]_i_5_n_0 ),
        .I5(\i_/digit4[0]_i_4_n_0 ),
        .O(\i_/digit4[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit4[3]_i_19 
       (.I0(\i_/digit4[3]_i_24_n_0 ),
        .I1(abs_a[1]),
        .I2(\digit4_reg[0] [3]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[24]),
        .I5(\i_/digit4[3]_i_23_n_0 ),
        .O(\i_/digit4[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit4[3]_i_20 
       (.I0(\i_/digit4[3]_i_28_n_0 ),
        .I1(\i_/digit4[3]_i_29_n_0 ),
        .I2(b_IBUF[24]),
        .I3(b_IBUF[31]),
        .I4(\digit4_reg[0] [3]),
        .I5(abs_a[2]),
        .O(\i_/digit4[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFD4D400D400FFD4)) 
    \i_/digit4[3]_i_21 
       (.I0(\i_/digit4[2]_i_18_n_0 ),
        .I1(\i_/digit4[3]_i_30_n_0 ),
        .I2(\i_/digit4[2]_i_19_n_0 ),
        .I3(\i_/digit4[3]_i_31_n_0 ),
        .I4(\i_/digit4[3]_i_23_n_0 ),
        .I5(\i_/digit4[3]_i_32_n_0 ),
        .O(\i_/digit4[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_22 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[26]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[1] [1]),
        .O(\i_/digit4[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h7887877887787887)) 
    \i_/digit4[3]_i_23 
       (.I0(abs_a[3]),
        .I1(abs_b[20]),
        .I2(\i_/digit4[3]_i_33_n_0 ),
        .I3(\i_/digit4[3]_i_34_n_0 ),
        .I4(\i_/digit4[3]_i_35_n_0 ),
        .I5(\i_/digit4[3]_i_36_n_0 ),
        .O(\i_/digit4[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h1771711771177117)) 
    \i_/digit4[3]_i_24 
       (.I0(\i_/digit4[2]_i_34_n_0 ),
        .I1(\i_/digit4[2]_i_33_n_0 ),
        .I2(\i_/digit4[2]_i_32_n_0 ),
        .I3(\i_/digit4[2]_i_31_n_0 ),
        .I4(abs_b[20]),
        .I5(abs_a[2]),
        .O(\i_/digit4[3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit4[3]_i_26 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[25]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[1] [0]),
        .O(\i_/digit4[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \i_/digit4[3]_i_27 
       (.I0(a_IBUF[0]),
        .I1(b_IBUF[24]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[0] [3]),
        .O(\i_/digit4[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \i_/digit4[3]_i_28 
       (.I0(\i_/digit4[3]_i_38_n_0 ),
        .I1(\i_/digit4[3]_i_39_n_0 ),
        .I2(abs_a[4]),
        .I3(abs_b[20]),
        .I4(\i_/digit4[3]_i_40_n_0 ),
        .I5(\i_/digit4[3]_i_41_n_0 ),
        .O(\i_/digit4[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8EE8E88EE88EE88E)) 
    \i_/digit4[3]_i_29 
       (.I0(\i_/digit4[3]_i_35_n_0 ),
        .I1(\i_/digit4[3]_i_36_n_0 ),
        .I2(\i_/digit4[3]_i_34_n_0 ),
        .I3(\i_/digit4[3]_i_33_n_0 ),
        .I4(abs_b[20]),
        .I5(abs_a[3]),
        .O(\i_/digit4[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6A99955595)) 
    \i_/digit4[3]_i_3 
       (.I0(\i_/digit4[3]_i_8_n_0 ),
        .I1(a_IBUF[0]),
        .I2(b_IBUF[27]),
        .I3(b_IBUF[31]),
        .I4(\digit4_reg[1] [2]),
        .I5(\i_/digit4[3]_i_10_n_0 ),
        .O(p_0[27]));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_30 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[24]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[0] [3]),
        .O(\i_/digit4[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_31 
       (.I0(a_IBUF[1]),
        .I1(a_IBUF[31]),
        .I2(O[0]),
        .I3(b_IBUF[25]),
        .I4(b_IBUF[31]),
        .I5(\digit4_reg[1] [0]),
        .O(\i_/digit4[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA966996695555)) 
    \i_/digit4[3]_i_32 
       (.I0(\i_/digit4[3]_i_42_n_0 ),
        .I1(\i_/digit4[3]_i_43_n_0 ),
        .I2(\i_/digit4[2]_i_31_n_0 ),
        .I3(\i_/digit4[2]_i_32_n_0 ),
        .I4(\i_/digit4[2]_i_33_n_0 ),
        .I5(\i_/digit4[2]_i_34_n_0 ),
        .O(\i_/digit4[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A80FFFF)) 
    \i_/digit4[3]_i_33 
       (.I0(abs_a[3]),
        .I1(\digit4_reg[0] [0]),
        .I2(b_IBUF[31]),
        .I3(b_IBUF[21]),
        .I4(\i_/digit4[2]_i_53_n_0 ),
        .I5(\i_/digit4[2]_i_52_n_0 ),
        .O(\i_/digit4[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h9996669666666666)) 
    \i_/digit4[3]_i_34 
       (.I0(\i_/digit4[3]_i_44_n_0 ),
        .I1(\i_/digit4[3]_i_45_n_0 ),
        .I2(b_IBUF[21]),
        .I3(b_IBUF[31]),
        .I4(\digit4_reg[0] [0]),
        .I5(abs_a[4]),
        .O(\i_/digit4[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hEAFE80A880A8EAFE)) 
    \i_/digit4[3]_i_35 
       (.I0(\i_/digit4[3]_i_43_n_0 ),
        .I1(\i_/digit4[0]_i_14_n_0 ),
        .I2(\i_/digit4[3]_i_46_n_0 ),
        .I3(\i_/digit4[0]_i_13_n_0 ),
        .I4(\i_/digit4[2]_i_52_n_0 ),
        .I5(\i_/digit4[3]_i_47_n_0 ),
        .O(\i_/digit4[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_36 
       (.I0(b_IBUF[23]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [2]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit4[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_37 
       (.I0(b_IBUF[22]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [1]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit4[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h4054D5FDD5FD4054)) 
    \i_/digit4[3]_i_38 
       (.I0(\i_/digit4[3]_i_48_n_0 ),
        .I1(\i_/digit4[2]_i_52_n_0 ),
        .I2(\i_/digit4[2]_i_53_n_0 ),
        .I3(\i_/digit4[3]_i_49_n_0 ),
        .I4(\i_/digit4[3]_i_44_n_0 ),
        .I5(\i_/digit4[3]_i_50_n_0 ),
        .O(\i_/digit4[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_39 
       (.I0(b_IBUF[23]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [2]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit4[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h80888000EAEEEAAA)) 
    \i_/digit4[3]_i_40 
       (.I0(\i_/digit4[3]_i_45_n_0 ),
        .I1(abs_a[4]),
        .I2(\digit4_reg[0] [0]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[21]),
        .I5(\i_/digit4[3]_i_44_n_0 ),
        .O(\i_/digit4[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hA959555556A6AAAA)) 
    \i_/digit4[3]_i_41 
       (.I0(\i_/digit4[3]_i_51_n_0 ),
        .I1(b_IBUF[21]),
        .I2(b_IBUF[31]),
        .I3(\digit4_reg[0] [0]),
        .I4(abs_a[5]),
        .I5(\i_/digit4[3]_i_52_n_0 ),
        .O(\i_/digit4[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_42 
       (.I0(b_IBUF[24]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [3]),
        .I3(a_IBUF[2]),
        .I4(a_IBUF[31]),
        .I5(O[1]),
        .O(\i_/digit4[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_43 
       (.I0(b_IBUF[22]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [1]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit4[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \i_/digit4[3]_i_44 
       (.I0(\i_/digit4[3]_i_53_n_0 ),
        .I1(\i_/digit4[3]_i_54_n_0 ),
        .I2(\i_/digit4[3]_i_55_n_0 ),
        .I3(abs_b[18]),
        .I4(abs_a[6]),
        .I5(\i_/digit4[3]_i_56_n_0 ),
        .O(\i_/digit4[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h8F08088F088F8F08)) 
    \i_/digit4[3]_i_45 
       (.I0(abs_a[4]),
        .I1(abs_b[19]),
        .I2(\i_/digit4[2]_i_78_n_0 ),
        .I3(\i_/digit4[2]_i_77_n_0 ),
        .I4(\i_/digit4[2]_i_76_n_0 ),
        .I5(\i_/digit4[2]_i_75_n_0 ),
        .O(\i_/digit4[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_46 
       (.I0(b_IBUF[21]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [0]),
        .I3(a_IBUF[3]),
        .I4(a_IBUF[31]),
        .I5(O[2]),
        .O(\i_/digit4[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h666A6AAA55565666)) 
    \i_/digit4[3]_i_47 
       (.I0(\i_/digit4[3]_i_49_n_0 ),
        .I1(\i_/digit4[3]_i_57_n_0 ),
        .I2(\i_/digit3[3]_i_53_n_0 ),
        .I3(\i_/digit3[3]_i_52_n_0 ),
        .I4(\i_/digit4[2]_i_79_n_0 ),
        .I5(\i_/digit4[0]_i_16_n_0 ),
        .O(\i_/digit4[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_48 
       (.I0(b_IBUF[22]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [1]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit4[3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_49 
       (.I0(b_IBUF[21]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [0]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit4[3]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h69965555AAAA6996)) 
    \i_/digit4[3]_i_50 
       (.I0(\i_/digit4[3]_i_58_n_0 ),
        .I1(\i_/digit4[2]_i_75_n_0 ),
        .I2(\i_/digit4[2]_i_76_n_0 ),
        .I3(\i_/digit4[2]_i_77_n_0 ),
        .I4(\i_/digit4[2]_i_78_n_0 ),
        .I5(\i_/digit4[3]_i_59_n_0 ),
        .O(\i_/digit4[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hE88E8E8E8EE8E8E8)) 
    \i_/digit4[3]_i_51 
       (.I0(\i_/digit4[3]_i_54_n_0 ),
        .I1(\i_/digit4[3]_i_53_n_0 ),
        .I2(\i_/digit4[3]_i_56_n_0 ),
        .I3(abs_a[6]),
        .I4(abs_b[18]),
        .I5(\i_/digit4[3]_i_55_n_0 ),
        .O(\i_/digit4[3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \i_/digit4[3]_i_52 
       (.I0(\i_/digit4[3]_i_60_n_0 ),
        .I1(\i_/digit4[3]_i_61_n_0 ),
        .I2(\i_/digit4[3]_i_62_n_0 ),
        .I3(abs_a[7]),
        .I4(abs_b[18]),
        .I5(\i_/digit4[3]_i_63_n_0 ),
        .O(\i_/digit4[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_53 
       (.I0(b_IBUF[20]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [3]),
        .I3(a_IBUF[6]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [1]),
        .O(\i_/digit4[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hBAFB20A220A2BAFB)) 
    \i_/digit4[3]_i_54 
       (.I0(\i_/digit4[2]_i_76_n_0 ),
        .I1(\i_/digit4[2]_i_98_n_0 ),
        .I2(\i_/digit4[0]_i_23_n_0 ),
        .I3(\i_/digit4[0]_i_18_n_0 ),
        .I4(\i_/digit4[3]_i_64_n_0 ),
        .I5(\i_/digit4[2]_i_97_n_0 ),
        .O(\i_/digit4[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h2A222AAABFBBBFFF)) 
    \i_/digit4[3]_i_55 
       (.I0(\i_/digit4[2]_i_97_n_0 ),
        .I1(abs_a[6]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[18]),
        .I5(\i_/digit4[2]_i_96_n_0 ),
        .O(\i_/digit4[3]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h6A666AAA95999555)) 
    \i_/digit4[3]_i_56 
       (.I0(\i_/digit4[3]_i_65_n_0 ),
        .I1(abs_a[7]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[18]),
        .I5(\i_/digit4[3]_i_66_n_0 ),
        .O(\i_/digit4[3]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_57 
       (.I0(b_IBUF[20]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [3]),
        .I3(a_IBUF[4]),
        .I4(a_IBUF[31]),
        .I5(O[3]),
        .O(\i_/digit4[3]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_58 
       (.I0(b_IBUF[21]),
        .I1(b_IBUF[31]),
        .I2(\digit4_reg[0] [0]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit4[3]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_59 
       (.I0(b_IBUF[20]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [3]),
        .I3(a_IBUF[5]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [0]),
        .O(\i_/digit4[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h007171FF71FF0071)) 
    \i_/digit4[3]_i_60 
       (.I0(\i_/digit4[2]_i_96_n_0 ),
        .I1(\i_/digit4[3]_i_67_n_0 ),
        .I2(\i_/digit4[2]_i_97_n_0 ),
        .I3(\i_/digit4[3]_i_68_n_0 ),
        .I4(\i_/digit4[3]_i_65_n_0 ),
        .I5(\i_/digit4[3]_i_69_n_0 ),
        .O(\i_/digit4[3]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_61 
       (.I0(b_IBUF[20]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [3]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit4[3]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h6A666AAA95999555)) 
    \i_/digit4[3]_i_62 
       (.I0(\i_/digit4[2]_i_112_n_0 ),
        .I1(abs_a[8]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[18]),
        .I5(\i_/digit4[2]_i_113_n_0 ),
        .O(\i_/digit4[3]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBBFFF2A222AAA)) 
    \i_/digit4[3]_i_63 
       (.I0(\i_/digit4[3]_i_66_n_0 ),
        .I1(abs_a[7]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(b_IBUF[31]),
        .I4(b_IBUF[18]),
        .I5(\i_/digit4[3]_i_65_n_0 ),
        .O(\i_/digit4[3]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h5595959999A9A9AA)) 
    \i_/digit4[3]_i_64 
       (.I0(\i_/digit4[3]_i_67_n_0 ),
        .I1(\i_/digit4[0]_i_22_n_0 ),
        .I2(\i_/digit3[3]_i_80_n_0 ),
        .I3(\i_/digit3[3]_i_81_n_0 ),
        .I4(\i_/digit3[3]_i_82_n_0 ),
        .I5(\i_/digit4[3]_i_70_n_0 ),
        .O(\i_/digit4[3]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    \i_/digit4[3]_i_65 
       (.I0(\i_/digit4[2]_i_149_n_0 ),
        .I1(\i_/digit4[2]_i_148_n_0 ),
        .I2(\i_/digit4[2]_i_147_n_0 ),
        .I3(\i_/digit4[2]_i_146_n_0 ),
        .I4(abs_b[15]),
        .I5(abs_a[9]),
        .O(\i_/digit4[3]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h000096669666FFFF)) 
    \i_/digit4[3]_i_66 
       (.I0(\i_/digit4[2]_i_120_n_0 ),
        .I1(\i_/digit4[2]_i_119_n_0 ),
        .I2(abs_b[15]),
        .I3(abs_a[8]),
        .I4(\i_/digit4[2]_i_118_n_0 ),
        .I5(\i_/digit4[2]_i_117_n_0 ),
        .O(\i_/digit4[3]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_67 
       (.I0(b_IBUF[18]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [1]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit4[3]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_68 
       (.I0(b_IBUF[19]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [2]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit4[3]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h009696FFFF696900)) 
    \i_/digit4[3]_i_69 
       (.I0(\i_/digit4[2]_i_120_n_0 ),
        .I1(\i_/digit4[2]_i_119_n_0 ),
        .I2(\i_/digit4[3]_i_71_n_0 ),
        .I3(\i_/digit4[2]_i_118_n_0 ),
        .I4(\i_/digit4[2]_i_117_n_0 ),
        .I5(\i_/digit4[2]_i_126_n_0 ),
        .O(\i_/digit4[3]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_70 
       (.I0(b_IBUF[17]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0]_0 [0]),
        .I3(a_IBUF[7]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[2]_i_54_0 [2]),
        .O(\i_/digit4[3]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2000000E200)) 
    \i_/digit4[3]_i_71 
       (.I0(b_IBUF[16]),
        .I1(b_IBUF[31]),
        .I2(\digit3_reg[0] [3]),
        .I3(a_IBUF[9]),
        .I4(a_IBUF[31]),
        .I5(\i_/digit3[3]_i_126_0 [0]),
        .O(\i_/digit4[3]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF699969990000)) 
    \i_/digit4[3]_i_8 
       (.I0(\i_/digit4[3]_i_11_n_0 ),
        .I1(\i_/digit4[3]_i_12_n_0 ),
        .I2(abs_a[0]),
        .I3(abs_b[23]),
        .I4(\i_/digit4[3]_i_13_n_0 ),
        .I5(\i_/digit4[3]_i_14_n_0 ),
        .O(\i_/digit4[3]_i_8_n_0 ));
endmodule

module seg7
   (seg1_OBUF,
    Q);
  output [6:0]seg1_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire [6:0]seg1_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD6FB)) 
    \seg1_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg1_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h617F)) 
    \seg1_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(seg1_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F67)) 
    \seg1_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg1_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg1_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg1_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \seg1_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg1_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAE6F)) 
    \seg1_OBUF[5]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg1_OBUF[5]));
  LUT4 #(
    .INIT(16'hBFDA)) 
    \seg1_OBUF[6]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(seg1_OBUF[6]));
endmodule

(* ORIG_REF_NAME = "seg7" *) 
module seg7_0
   (seg2_OBUF,
    Q);
  output [6:0]seg2_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire [6:0]seg2_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hD6FB)) 
    \seg2_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg2_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h617F)) 
    \seg2_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(seg2_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F67)) 
    \seg2_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg2_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg2_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg2_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \seg2_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg2_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAE6F)) 
    \seg2_OBUF[5]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg2_OBUF[5]));
  LUT4 #(
    .INIT(16'hBFDA)) 
    \seg2_OBUF[6]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(seg2_OBUF[6]));
endmodule

(* ORIG_REF_NAME = "seg7" *) 
module seg7_1
   (seg3_OBUF,
    Q);
  output [6:0]seg3_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire [6:0]seg3_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hD6FB)) 
    \seg3_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg3_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h617F)) 
    \seg3_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(seg3_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F67)) 
    \seg3_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg3_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg3_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg3_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \seg3_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg3_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAE6F)) 
    \seg3_OBUF[5]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg3_OBUF[5]));
  LUT4 #(
    .INIT(16'hBFDA)) 
    \seg3_OBUF[6]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(seg3_OBUF[6]));
endmodule

(* ORIG_REF_NAME = "seg7" *) 
module seg7_2
   (seg4_OBUF,
    Q);
  output [6:0]seg4_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire [6:0]seg4_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hD6FB)) 
    \seg4_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg4_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h617F)) 
    \seg4_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(seg4_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F67)) 
    \seg4_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg4_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg4_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg4_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA8EF)) 
    \seg4_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg4_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAE6F)) 
    \seg4_OBUF[5]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(seg4_OBUF[5]));
  LUT4 #(
    .INIT(16'hBFDA)) 
    \seg4_OBUF[6]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(seg4_OBUF[6]));
endmodule

(* NotValidForBitStream *)
module top
   (sysclk_p,
    sysclk_n,
    a,
    b,
    seg1,
    seg2,
    seg3,
    seg4,
    ans);
  input sysclk_p;
  input sysclk_n;
  input [31:0]a;
  input [31:0]b;
  output [6:0]seg1;
  output [6:0]seg2;
  output [6:0]seg3;
  output [6:0]seg4;
  output [7:0]ans;

  wire DIS_n_1;
  wire DIS_n_10;
  wire DIS_n_11;
  wire DIS_n_12;
  wire DIS_n_120;
  wire DIS_n_121;
  wire DIS_n_13;
  wire DIS_n_14;
  wire DIS_n_15;
  wire DIS_n_16;
  wire DIS_n_17;
  wire DIS_n_18;
  wire DIS_n_19;
  wire DIS_n_2;
  wire DIS_n_20;
  wire DIS_n_21;
  wire DIS_n_22;
  wire DIS_n_23;
  wire DIS_n_24;
  wire DIS_n_25;
  wire DIS_n_26;
  wire DIS_n_27;
  wire DIS_n_28;
  wire DIS_n_29;
  wire DIS_n_3;
  wire DIS_n_30;
  wire DIS_n_31;
  wire DIS_n_32;
  wire DIS_n_33;
  wire DIS_n_34;
  wire DIS_n_35;
  wire DIS_n_36;
  wire DIS_n_37;
  wire DIS_n_38;
  wire DIS_n_39;
  wire DIS_n_4;
  wire DIS_n_40;
  wire DIS_n_41;
  wire DIS_n_42;
  wire DIS_n_43;
  wire DIS_n_44;
  wire DIS_n_45;
  wire DIS_n_46;
  wire DIS_n_47;
  wire DIS_n_48;
  wire DIS_n_49;
  wire DIS_n_5;
  wire DIS_n_50;
  wire DIS_n_51;
  wire DIS_n_52;
  wire DIS_n_53;
  wire DIS_n_54;
  wire DIS_n_55;
  wire DIS_n_56;
  wire DIS_n_57;
  wire DIS_n_58;
  wire DIS_n_59;
  wire DIS_n_6;
  wire DIS_n_60;
  wire DIS_n_7;
  wire DIS_n_8;
  wire DIS_n_9;
  wire [31:0]a;
  wire [31:0]a_IBUF;
  wire [29:1]abs_a;
  wire [28:1]abs_b;
  wire [7:0]ans;
  wire [1:0]ans_OBUF;
  wire [31:0]b;
  wire [31:0]b_IBUF;
  wire [29:25]c0;
  wire clk;
  wire multipleAB32_n_10;
  wire multipleAB32_n_11;
  wire multipleAB32_n_12;
  wire multipleAB32_n_13;
  wire multipleAB32_n_14;
  wire multipleAB32_n_15;
  wire multipleAB32_n_16;
  wire multipleAB32_n_17;
  wire multipleAB32_n_18;
  wire multipleAB32_n_19;
  wire multipleAB32_n_2;
  wire multipleAB32_n_3;
  wire multipleAB32_n_4;
  wire multipleAB32_n_6;
  wire multipleAB32_n_7;
  wire multipleAB32_n_8;
  wire multipleAB32_n_9;
  wire [31:31]p;
  wire [2:0]p_0_in;
  wire p_0_in_0;
  wire [25:25]p_1;
  wire [6:0]seg1;
  wire [6:0]seg1_OBUF;
  wire [6:0]seg2;
  wire [6:0]seg2_OBUF;
  wire [6:0]seg3;
  wire [6:0]seg3_OBUF;
  wire [6:0]seg4;
  wire [6:0]seg4_OBUF;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire sysclk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire sysclk_p;
  wire NLW_instance_name_clk_out2_UNCONNECTED;
  wire NLW_instance_name_locked_UNCONNECTED;

  display DIS
       (.D({multipleAB32_n_15,multipleAB32_n_16,multipleAB32_n_17,multipleAB32_n_18}),
        .O({DIS_n_1,DIS_n_2,DIS_n_3,DIS_n_4}),
        .a_IBUF(a_IBUF),
        .abs_a(abs_a),
        .abs_b({abs_b[28],abs_b[26:22],abs_b[20:1]}),
        .ans_OBUF(ans_OBUF),
        .\b[0] (DIS_n_120),
        .\b[0]_0 (DIS_n_121),
        .b_IBUF(b_IBUF),
        .c0({c0[29],c0[25]}),
        .clk_out1(clk),
        .\digit1[2]_i_32_0 ({DIS_n_5,DIS_n_6,DIS_n_7,DIS_n_8}),
        .\digit1[3]_i_27_0 ({DIS_n_31,DIS_n_32,DIS_n_33,DIS_n_34}),
        .\digit1[3]_i_33_0 ({DIS_n_35,DIS_n_36,DIS_n_37,DIS_n_38}),
        .\digit2[3]_i_29_0 ({DIS_n_39,DIS_n_40,DIS_n_41,DIS_n_42}),
        .\digit2[3]_i_37_0 ({DIS_n_43,DIS_n_44,DIS_n_45,DIS_n_46}),
        .\digit2_reg[3]_0 ({multipleAB32_n_11,multipleAB32_n_12,multipleAB32_n_13,multipleAB32_n_14}),
        .\digit3[3]_i_25_0 ({DIS_n_47,DIS_n_48,DIS_n_49,DIS_n_50}),
        .\digit3[3]_i_35_0 ({DIS_n_51,DIS_n_52,DIS_n_53,DIS_n_54}),
        .\digit3_reg[3]_0 ({multipleAB32_n_7,multipleAB32_n_8,multipleAB32_n_9,multipleAB32_n_10}),
        .\digit4[2]_i_134_0 ({DIS_n_9,DIS_n_10,DIS_n_11,DIS_n_12}),
        .\digit4[2]_i_216_0 ({DIS_n_13,DIS_n_14,DIS_n_15,DIS_n_16}),
        .\digit4[2]_i_266_0 ({DIS_n_17,DIS_n_18,DIS_n_19,DIS_n_20}),
        .\digit4[2]_i_357_0 ({DIS_n_21,DIS_n_22,DIS_n_23,DIS_n_24}),
        .\digit4[2]_i_406_0 ({DIS_n_25,DIS_n_26,DIS_n_27,DIS_n_28}),
        .\digit4[2]_i_423_0 ({DIS_n_29,DIS_n_30}),
        .\digit4[2]_i_42_0 ({DIS_n_59,DIS_n_60}),
        .\digit4[3]_i_18_0 ({DIS_n_55,DIS_n_56,DIS_n_57,DIS_n_58}),
        .\digit4_reg[1]_0 (multipleAB32_n_19),
        .\digit4_reg[1]_1 (multipleAB32_n_6),
        .\digit4_reg[3]_0 ({multipleAB32_n_2,multipleAB32_n_3,multipleAB32_n_4}),
        .p(p),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .p_1(p_1),
        .seg1_OBUF(seg1_OBUF),
        .seg2_OBUF(seg2_OBUF),
        .seg3_OBUF(seg3_OBUF),
        .seg4_OBUF(seg4_OBUF));
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[10]_inst 
       (.I(a[10]),
        .O(a_IBUF[10]));
  IBUF \a_IBUF[11]_inst 
       (.I(a[11]),
        .O(a_IBUF[11]));
  IBUF \a_IBUF[12]_inst 
       (.I(a[12]),
        .O(a_IBUF[12]));
  IBUF \a_IBUF[13]_inst 
       (.I(a[13]),
        .O(a_IBUF[13]));
  IBUF \a_IBUF[14]_inst 
       (.I(a[14]),
        .O(a_IBUF[14]));
  IBUF \a_IBUF[15]_inst 
       (.I(a[15]),
        .O(a_IBUF[15]));
  IBUF \a_IBUF[16]_inst 
       (.I(a[16]),
        .O(a_IBUF[16]));
  IBUF \a_IBUF[17]_inst 
       (.I(a[17]),
        .O(a_IBUF[17]));
  IBUF \a_IBUF[18]_inst 
       (.I(a[18]),
        .O(a_IBUF[18]));
  IBUF \a_IBUF[19]_inst 
       (.I(a[19]),
        .O(a_IBUF[19]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[20]_inst 
       (.I(a[20]),
        .O(a_IBUF[20]));
  IBUF \a_IBUF[21]_inst 
       (.I(a[21]),
        .O(a_IBUF[21]));
  IBUF \a_IBUF[22]_inst 
       (.I(a[22]),
        .O(a_IBUF[22]));
  IBUF \a_IBUF[23]_inst 
       (.I(a[23]),
        .O(a_IBUF[23]));
  IBUF \a_IBUF[24]_inst 
       (.I(a[24]),
        .O(a_IBUF[24]));
  IBUF \a_IBUF[25]_inst 
       (.I(a[25]),
        .O(a_IBUF[25]));
  IBUF \a_IBUF[26]_inst 
       (.I(a[26]),
        .O(a_IBUF[26]));
  IBUF \a_IBUF[27]_inst 
       (.I(a[27]),
        .O(a_IBUF[27]));
  IBUF \a_IBUF[28]_inst 
       (.I(a[28]),
        .O(a_IBUF[28]));
  IBUF \a_IBUF[29]_inst 
       (.I(a[29]),
        .O(a_IBUF[29]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[30]_inst 
       (.I(a[30]),
        .O(a_IBUF[30]));
  IBUF \a_IBUF[31]_inst 
       (.I(a[31]),
        .O(a_IBUF[31]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \a_IBUF[4]_inst 
       (.I(a[4]),
        .O(a_IBUF[4]));
  IBUF \a_IBUF[5]_inst 
       (.I(a[5]),
        .O(a_IBUF[5]));
  IBUF \a_IBUF[6]_inst 
       (.I(a[6]),
        .O(a_IBUF[6]));
  IBUF \a_IBUF[7]_inst 
       (.I(a[7]),
        .O(a_IBUF[7]));
  IBUF \a_IBUF[8]_inst 
       (.I(a[8]),
        .O(a_IBUF[8]));
  IBUF \a_IBUF[9]_inst 
       (.I(a[9]),
        .O(a_IBUF[9]));
  OBUF \ans_OBUF[0]_inst 
       (.I(ans_OBUF[0]),
        .O(ans[0]));
  OBUF \ans_OBUF[1]_inst 
       (.I(ans_OBUF[1]),
        .O(ans[1]));
  OBUF \ans_OBUF[2]_inst 
       (.I(ans_OBUF[0]),
        .O(ans[2]));
  OBUF \ans_OBUF[3]_inst 
       (.I(ans_OBUF[1]),
        .O(ans[3]));
  OBUF \ans_OBUF[4]_inst 
       (.I(ans_OBUF[0]),
        .O(ans[4]));
  OBUF \ans_OBUF[5]_inst 
       (.I(ans_OBUF[1]),
        .O(ans[5]));
  OBUF \ans_OBUF[6]_inst 
       (.I(ans_OBUF[0]),
        .O(ans[6]));
  OBUF \ans_OBUF[7]_inst 
       (.I(ans_OBUF[1]),
        .O(ans[7]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[10]_inst 
       (.I(b[10]),
        .O(b_IBUF[10]));
  IBUF \b_IBUF[11]_inst 
       (.I(b[11]),
        .O(b_IBUF[11]));
  IBUF \b_IBUF[12]_inst 
       (.I(b[12]),
        .O(b_IBUF[12]));
  IBUF \b_IBUF[13]_inst 
       (.I(b[13]),
        .O(b_IBUF[13]));
  IBUF \b_IBUF[14]_inst 
       (.I(b[14]),
        .O(b_IBUF[14]));
  IBUF \b_IBUF[15]_inst 
       (.I(b[15]),
        .O(b_IBUF[15]));
  IBUF \b_IBUF[16]_inst 
       (.I(b[16]),
        .O(b_IBUF[16]));
  IBUF \b_IBUF[17]_inst 
       (.I(b[17]),
        .O(b_IBUF[17]));
  IBUF \b_IBUF[18]_inst 
       (.I(b[18]),
        .O(b_IBUF[18]));
  IBUF \b_IBUF[19]_inst 
       (.I(b[19]),
        .O(b_IBUF[19]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[20]_inst 
       (.I(b[20]),
        .O(b_IBUF[20]));
  IBUF \b_IBUF[21]_inst 
       (.I(b[21]),
        .O(b_IBUF[21]));
  IBUF \b_IBUF[22]_inst 
       (.I(b[22]),
        .O(b_IBUF[22]));
  IBUF \b_IBUF[23]_inst 
       (.I(b[23]),
        .O(b_IBUF[23]));
  IBUF \b_IBUF[24]_inst 
       (.I(b[24]),
        .O(b_IBUF[24]));
  IBUF \b_IBUF[25]_inst 
       (.I(b[25]),
        .O(b_IBUF[25]));
  IBUF \b_IBUF[26]_inst 
       (.I(b[26]),
        .O(b_IBUF[26]));
  IBUF \b_IBUF[27]_inst 
       (.I(b[27]),
        .O(b_IBUF[27]));
  IBUF \b_IBUF[28]_inst 
       (.I(b[28]),
        .O(b_IBUF[28]));
  IBUF \b_IBUF[29]_inst 
       (.I(b[29]),
        .O(b_IBUF[29]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[30]_inst 
       (.I(b[30]),
        .O(b_IBUF[30]));
  IBUF \b_IBUF[31]_inst 
       (.I(b[31]),
        .O(b_IBUF[31]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \b_IBUF[4]_inst 
       (.I(b[4]),
        .O(b_IBUF[4]));
  IBUF \b_IBUF[5]_inst 
       (.I(b[5]),
        .O(b_IBUF[5]));
  IBUF \b_IBUF[6]_inst 
       (.I(b[6]),
        .O(b_IBUF[6]));
  IBUF \b_IBUF[7]_inst 
       (.I(b[7]),
        .O(b_IBUF[7]));
  IBUF \b_IBUF[8]_inst 
       (.I(b[8]),
        .O(b_IBUF[8]));
  IBUF \b_IBUF[9]_inst 
       (.I(b[9]),
        .O(b_IBUF[9]));
  (* IMPORTED_FROM = "e:/project/display_multi/display/display.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 instance_name
       (.clk_in1_n(sysclk_n),
        .clk_in1_p(sysclk_p),
        .clk_out1(clk),
        .clk_out2(NLW_instance_name_clk_out2_UNCONNECTED),
        .locked(NLW_instance_name_locked_UNCONNECTED),
        .reset(1'b0));
  multipleAB32 multipleAB32
       (.D({multipleAB32_n_15,multipleAB32_n_16,multipleAB32_n_17,multipleAB32_n_18}),
        .O({DIS_n_1,DIS_n_2,DIS_n_3,DIS_n_4}),
        .\a[0] (p_1),
        .a_IBUF(a_IBUF),
        .abs_a(abs_a),
        .abs_b({abs_b[28],abs_b[26:22],abs_b[20:1]}),
        .\b[28] (multipleAB32_n_6),
        .b_IBUF(b_IBUF),
        .\count_reg[16] ({multipleAB32_n_2,multipleAB32_n_3,multipleAB32_n_4}),
        .\count_reg[16]_0 ({multipleAB32_n_7,multipleAB32_n_8,multipleAB32_n_9,multipleAB32_n_10}),
        .\count_reg[16]_1 ({multipleAB32_n_11,multipleAB32_n_12,multipleAB32_n_13,multipleAB32_n_14}),
        .\digit1_reg[0] (p_0_in),
        .\digit1_reg[0]_0 ({DIS_n_31,DIS_n_32,DIS_n_33,DIS_n_34}),
        .\digit2[3]_i_119 (DIS_n_120),
        .\digit2_reg[0] ({DIS_n_39,DIS_n_40,DIS_n_41,DIS_n_42}),
        .\digit2_reg[0]_0 ({DIS_n_35,DIS_n_36,DIS_n_37,DIS_n_38}),
        .\digit3_reg[0] ({DIS_n_43,DIS_n_44,DIS_n_45,DIS_n_46}),
        .\digit3_reg[0]_0 ({DIS_n_47,DIS_n_48,DIS_n_49,DIS_n_50}),
        .\digit4[2]_i_6 ({c0[29],c0[25]}),
        .\digit4_reg[0] ({DIS_n_51,DIS_n_52,DIS_n_53,DIS_n_54}),
        .\digit4_reg[1] ({DIS_n_55,DIS_n_56,DIS_n_57,DIS_n_58}),
        .\i_/digit3[2]_i_54 ({DIS_n_5,DIS_n_6,DIS_n_7,DIS_n_8}),
        .\i_/digit3[2]_i_71 (DIS_n_121),
        .\i_/digit3[3]_i_126 ({DIS_n_9,DIS_n_10,DIS_n_11,DIS_n_12}),
        .\i_/digit4[1]_i_10 (multipleAB32_n_19),
        .\i_/digit4[2]_i_14 ({DIS_n_59,DIS_n_60}),
        .\i_/digit4[2]_i_181 ({DIS_n_13,DIS_n_14,DIS_n_15,DIS_n_16}),
        .\i_/digit4[2]_i_240 ({DIS_n_17,DIS_n_18,DIS_n_19,DIS_n_20}),
        .\i_/digit4[2]_i_348 ({DIS_n_21,DIS_n_22,DIS_n_23,DIS_n_24}),
        .\i_/digit4[2]_i_397 ({DIS_n_25,DIS_n_26,DIS_n_27,DIS_n_28}),
        .\i_/digit4[2]_i_411 ({DIS_n_29,DIS_n_30}),
        .p(p),
        .p_0_in(p_0_in_0));
  OBUF \seg1_OBUF[0]_inst 
       (.I(seg1_OBUF[0]),
        .O(seg1[0]));
  OBUF \seg1_OBUF[1]_inst 
       (.I(seg1_OBUF[1]),
        .O(seg1[1]));
  OBUF \seg1_OBUF[2]_inst 
       (.I(seg1_OBUF[2]),
        .O(seg1[2]));
  OBUF \seg1_OBUF[3]_inst 
       (.I(seg1_OBUF[3]),
        .O(seg1[3]));
  OBUF \seg1_OBUF[4]_inst 
       (.I(seg1_OBUF[4]),
        .O(seg1[4]));
  OBUF \seg1_OBUF[5]_inst 
       (.I(seg1_OBUF[5]),
        .O(seg1[5]));
  OBUF \seg1_OBUF[6]_inst 
       (.I(seg1_OBUF[6]),
        .O(seg1[6]));
  OBUF \seg2_OBUF[0]_inst 
       (.I(seg2_OBUF[0]),
        .O(seg2[0]));
  OBUF \seg2_OBUF[1]_inst 
       (.I(seg2_OBUF[1]),
        .O(seg2[1]));
  OBUF \seg2_OBUF[2]_inst 
       (.I(seg2_OBUF[2]),
        .O(seg2[2]));
  OBUF \seg2_OBUF[3]_inst 
       (.I(seg2_OBUF[3]),
        .O(seg2[3]));
  OBUF \seg2_OBUF[4]_inst 
       (.I(seg2_OBUF[4]),
        .O(seg2[4]));
  OBUF \seg2_OBUF[5]_inst 
       (.I(seg2_OBUF[5]),
        .O(seg2[5]));
  OBUF \seg2_OBUF[6]_inst 
       (.I(seg2_OBUF[6]),
        .O(seg2[6]));
  OBUF \seg3_OBUF[0]_inst 
       (.I(seg3_OBUF[0]),
        .O(seg3[0]));
  OBUF \seg3_OBUF[1]_inst 
       (.I(seg3_OBUF[1]),
        .O(seg3[1]));
  OBUF \seg3_OBUF[2]_inst 
       (.I(seg3_OBUF[2]),
        .O(seg3[2]));
  OBUF \seg3_OBUF[3]_inst 
       (.I(seg3_OBUF[3]),
        .O(seg3[3]));
  OBUF \seg3_OBUF[4]_inst 
       (.I(seg3_OBUF[4]),
        .O(seg3[4]));
  OBUF \seg3_OBUF[5]_inst 
       (.I(seg3_OBUF[5]),
        .O(seg3[5]));
  OBUF \seg3_OBUF[6]_inst 
       (.I(seg3_OBUF[6]),
        .O(seg3[6]));
  OBUF \seg4_OBUF[0]_inst 
       (.I(seg4_OBUF[0]),
        .O(seg4[0]));
  OBUF \seg4_OBUF[1]_inst 
       (.I(seg4_OBUF[1]),
        .O(seg4[1]));
  OBUF \seg4_OBUF[2]_inst 
       (.I(seg4_OBUF[2]),
        .O(seg4[2]));
  OBUF \seg4_OBUF[3]_inst 
       (.I(seg4_OBUF[3]),
        .O(seg4[3]));
  OBUF \seg4_OBUF[4]_inst 
       (.I(seg4_OBUF[4]),
        .O(seg4[4]));
  OBUF \seg4_OBUF[5]_inst 
       (.I(seg4_OBUF[5]),
        .O(seg4[5]));
  OBUF \seg4_OBUF[6]_inst 
       (.I(seg4_OBUF[6]),
        .O(seg4[6]));
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
