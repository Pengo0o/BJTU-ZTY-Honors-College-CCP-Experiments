// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Apr 19 00:08:06 2024
// Host        : DESKTOP-RN8TL0Q running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               F:/Test/display/display.sim/sim_1/impl/timing/xsim/display_tb_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

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
  wire reset;
  wire NLW_inst_clk_out2_UNCONNECTED;
  wire NLW_inst_locked_UNCONNECTED;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1_n(clk_in1_n),
        .clk_in1_p(clk_in1_p),
        .clk_out1(clk_out1),
        .clk_out2(NLW_inst_clk_out2_UNCONNECTED),
        .locked(NLW_inst_locked_UNCONNECTED),
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
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
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
  (* OPT_MODIFIED = "SWEEP" *) 
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
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
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
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module display
   (seg1_OBUF,
    seg2_OBUF,
    seg3_OBUF,
    seg4_OBUF,
    ans_OBUF,
    clk_out1,
    a_IBUF,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output [6:0]seg1_OBUF;
  output [6:0]seg2_OBUF;
  output [6:0]seg3_OBUF;
  output [6:0]seg4_OBUF;
  output [1:0]ans_OBUF;
  input clk_out1;
  input [31:0]a_IBUF;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire [31:0]a_IBUF;
  wire \ans[6]_i_1_n_0 ;
  wire [1:0]ans_OBUF;
  wire \ans_reg[6]_lopt_replica_1 ;
  wire \ans_reg[6]_lopt_replica_2_1 ;
  wire \ans_reg[6]_lopt_replica_3_1 ;
  wire \ans_reg[7]_lopt_replica_1 ;
  wire \ans_reg[7]_lopt_replica_2_1 ;
  wire \ans_reg[7]_lopt_replica_3_1 ;
  wire clk_out1;
  wire \count[0]_i_2_n_0 ;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
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
  wire \digit1[0]_i_1_n_0 ;
  wire \digit1[1]_i_1_n_0 ;
  wire \digit1[2]_i_1_n_0 ;
  wire \digit1[3]_i_1_n_0 ;
  wire \digit1_reg_n_0_[0] ;
  wire \digit1_reg_n_0_[1] ;
  wire \digit1_reg_n_0_[2] ;
  wire \digit1_reg_n_0_[3] ;
  wire \digit2[0]_i_1_n_0 ;
  wire \digit2[1]_i_1_n_0 ;
  wire \digit2[2]_i_1_n_0 ;
  wire \digit2[3]_i_1_n_0 ;
  wire \digit2_reg_n_0_[0] ;
  wire \digit2_reg_n_0_[1] ;
  wire \digit2_reg_n_0_[2] ;
  wire \digit2_reg_n_0_[3] ;
  wire \digit3[0]_i_1_n_0 ;
  wire \digit3[1]_i_1_n_0 ;
  wire \digit3[2]_i_1_n_0 ;
  wire \digit3[3]_i_1_n_0 ;
  wire \digit3_reg_n_0_[0] ;
  wire \digit3_reg_n_0_[1] ;
  wire \digit3_reg_n_0_[2] ;
  wire \digit3_reg_n_0_[3] ;
  wire \digit4[0]_i_1_n_0 ;
  wire \digit4[1]_i_1_n_0 ;
  wire \digit4[2]_i_1_n_0 ;
  wire \digit4[3]_i_1_n_0 ;
  wire \digit4_reg_n_0_[0] ;
  wire \digit4_reg_n_0_[1] ;
  wire \digit4_reg_n_0_[2] ;
  wire \digit4_reg_n_0_[3] ;
  wire p_0_in;
  wire [6:0]seg1_OBUF;
  wire [6:0]seg2_OBUF;
  wire [6:0]seg3_OBUF;
  wire [6:0]seg4_OBUF;
  wire [2:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  assign lopt = \ans_reg[6]_lopt_replica_1 ;
  assign lopt_1 = \ans_reg[6]_lopt_replica_2_1 ;
  assign lopt_2 = \ans_reg[6]_lopt_replica_3_1 ;
  assign lopt_4 = \ans_reg[7]_lopt_replica_1 ;
  assign lopt_5 = \ans_reg[7]_lopt_replica_2_1 ;
  assign lopt_6 = \ans_reg[7]_lopt_replica_3_1 ;
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
       (.I0(p_0_in),
        .O(\ans[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b1),
        .Q(ans_OBUF[0]),
        .R(\ans[6]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[6]_lopt_replica 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b1),
        .Q(\ans_reg[6]_lopt_replica_1 ),
        .R(\ans[6]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[6]_lopt_replica_2 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b1),
        .Q(\ans_reg[6]_lopt_replica_2_1 ),
        .R(\ans[6]_i_1_n_0 ));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[6]_lopt_replica_3 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b1),
        .Q(\ans_reg[6]_lopt_replica_3_1 ),
        .R(\ans[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\ans[6]_i_1_n_0 ),
        .Q(ans_OBUF[1]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[7]_lopt_replica 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\ans[6]_i_1_n_0 ),
        .Q(\ans_reg[7]_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[7]_lopt_replica_2 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\ans[6]_i_1_n_0 ),
        .Q(\ans_reg[7]_lopt_replica_2_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ans_reg[7]_lopt_replica_3 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\ans[6]_i_1_n_0 ),
        .Q(\ans_reg[7]_lopt_replica_3_1 ),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
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
        .Q(p_0_in),
        .R(1'b0));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [3:1],\count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,p_0_in}));
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[0]_i_1 
       (.I0(a_IBUF[4]),
        .I1(p_0_in),
        .I2(a_IBUF[0]),
        .O(\digit1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[1]_i_1 
       (.I0(a_IBUF[5]),
        .I1(p_0_in),
        .I2(a_IBUF[1]),
        .O(\digit1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[2]_i_1 
       (.I0(a_IBUF[6]),
        .I1(p_0_in),
        .I2(a_IBUF[2]),
        .O(\digit1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit1[3]_i_1 
       (.I0(a_IBUF[7]),
        .I1(p_0_in),
        .I2(a_IBUF[3]),
        .O(\digit1[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit1[0]_i_1_n_0 ),
        .Q(\digit1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit1[1]_i_1_n_0 ),
        .Q(\digit1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit1[2]_i_1_n_0 ),
        .Q(\digit1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit1[3]_i_1_n_0 ),
        .Q(\digit1_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[0]_i_1 
       (.I0(a_IBUF[12]),
        .I1(p_0_in),
        .I2(a_IBUF[8]),
        .O(\digit2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[1]_i_1 
       (.I0(a_IBUF[13]),
        .I1(p_0_in),
        .I2(a_IBUF[9]),
        .O(\digit2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[2]_i_1 
       (.I0(a_IBUF[14]),
        .I1(p_0_in),
        .I2(a_IBUF[10]),
        .O(\digit2[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit2[3]_i_1 
       (.I0(a_IBUF[15]),
        .I1(p_0_in),
        .I2(a_IBUF[11]),
        .O(\digit2[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit2[0]_i_1_n_0 ),
        .Q(\digit2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit2[1]_i_1_n_0 ),
        .Q(\digit2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit2[2]_i_1_n_0 ),
        .Q(\digit2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit2[3]_i_1_n_0 ),
        .Q(\digit2_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[0]_i_1 
       (.I0(a_IBUF[20]),
        .I1(p_0_in),
        .I2(a_IBUF[16]),
        .O(\digit3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[1]_i_1 
       (.I0(a_IBUF[21]),
        .I1(p_0_in),
        .I2(a_IBUF[17]),
        .O(\digit3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[2]_i_1 
       (.I0(a_IBUF[22]),
        .I1(p_0_in),
        .I2(a_IBUF[18]),
        .O(\digit3[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit3[3]_i_1 
       (.I0(a_IBUF[23]),
        .I1(p_0_in),
        .I2(a_IBUF[19]),
        .O(\digit3[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit3[0]_i_1_n_0 ),
        .Q(\digit3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit3[1]_i_1_n_0 ),
        .Q(\digit3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit3[2]_i_1_n_0 ),
        .Q(\digit3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit3_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit3[3]_i_1_n_0 ),
        .Q(\digit3_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[0]_i_1 
       (.I0(a_IBUF[28]),
        .I1(p_0_in),
        .I2(a_IBUF[24]),
        .O(\digit4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[1]_i_1 
       (.I0(a_IBUF[29]),
        .I1(p_0_in),
        .I2(a_IBUF[25]),
        .O(\digit4[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[2]_i_1 
       (.I0(a_IBUF[30]),
        .I1(p_0_in),
        .I2(a_IBUF[26]),
        .O(\digit4[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \digit4[3]_i_1 
       (.I0(a_IBUF[31]),
        .I1(p_0_in),
        .I2(a_IBUF[27]),
        .O(\digit4[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit4[0]_i_1_n_0 ),
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
        .D(\digit4[2]_i_1_n_0 ),
        .Q(\digit4_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit4_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\digit4[3]_i_1_n_0 ),
        .Q(\digit4_reg_n_0_[3] ),
        .R(1'b0));
endmodule

module seg7
   (seg1_OBUF,
    Q);
  output [6:0]seg1_OBUF;
  input [3:0]Q;

  wire [3:0]Q;
  wire [6:0]seg1_OBUF;

  LUT4 #(
    .INIT(16'hD6FB)) 
    \seg1_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg1_OBUF[0]));
  LUT4 #(
    .INIT(16'h617F)) 
    \seg1_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(seg1_OBUF[1]));
  LUT4 #(
    .INIT(16'h7F67)) 
    \seg1_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg1_OBUF[2]));
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg1_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg1_OBUF[3]));
  LUT4 #(
    .INIT(16'hA8EF)) 
    \seg1_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg1_OBUF[4]));
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

  LUT4 #(
    .INIT(16'hD6FB)) 
    \seg2_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg2_OBUF[0]));
  LUT4 #(
    .INIT(16'h617F)) 
    \seg2_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(seg2_OBUF[1]));
  LUT4 #(
    .INIT(16'h7F67)) 
    \seg2_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg2_OBUF[2]));
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg2_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg2_OBUF[3]));
  LUT4 #(
    .INIT(16'hA8EF)) 
    \seg2_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg2_OBUF[4]));
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

  LUT4 #(
    .INIT(16'hD6FB)) 
    \seg3_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg3_OBUF[0]));
  LUT4 #(
    .INIT(16'h617F)) 
    \seg3_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(seg3_OBUF[1]));
  LUT4 #(
    .INIT(16'h7F67)) 
    \seg3_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg3_OBUF[2]));
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg3_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg3_OBUF[3]));
  LUT4 #(
    .INIT(16'hA8EF)) 
    \seg3_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg3_OBUF[4]));
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

  LUT4 #(
    .INIT(16'hD6FB)) 
    \seg4_OBUF[0]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg4_OBUF[0]));
  LUT4 #(
    .INIT(16'h617F)) 
    \seg4_OBUF[1]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(seg4_OBUF[1]));
  LUT4 #(
    .INIT(16'h7F67)) 
    \seg4_OBUF[2]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg4_OBUF[2]));
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg4_OBUF[3]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(seg4_OBUF[3]));
  LUT4 #(
    .INIT(16'hA8EF)) 
    \seg4_OBUF[4]_inst_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(seg4_OBUF[4]));
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

(* ECO_CHECKSUM = "dc17f858" *) 
(* NotValidForBitStream *)
module top
   (sysclk_p,
    sysclk_n,
    a,
    seg1,
    seg2,
    seg3,
    seg4,
    ans);
  input sysclk_p;
  input sysclk_n;
  input [31:0]a;
  output [6:0]seg1;
  output [6:0]seg2;
  output [6:0]seg3;
  output [6:0]seg4;
  output [7:0]ans;

  wire [31:0]a;
  wire [31:0]a_IBUF;
  wire [7:0]ans;
  wire [1:0]ans_OBUF;
  wire clk;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
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
  wire NLW_DIS_lopt_3_UNCONNECTED;
  wire NLW_DIS_lopt_7_UNCONNECTED;
  wire NLW_instance_name_clk_out2_UNCONNECTED;
  wire NLW_instance_name_locked_UNCONNECTED;

initial begin
 $sdf_annotate("display_tb_time_impl.sdf",,,,"tool_control");
end
  display DIS
       (.a_IBUF(a_IBUF),
        .ans_OBUF(ans_OBUF),
        .clk_out1(clk),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(NLW_DIS_lopt_3_UNCONNECTED),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(NLW_DIS_lopt_7_UNCONNECTED),
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
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \ans_OBUF[0]_inst 
       (.I(lopt),
        .O(ans[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \ans_OBUF[1]_inst 
       (.I(lopt_4),
        .O(ans[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \ans_OBUF[2]_inst 
       (.I(lopt_1),
        .O(ans[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \ans_OBUF[3]_inst 
       (.I(lopt_5),
        .O(ans[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \ans_OBUF[4]_inst 
       (.I(lopt_2),
        .O(ans[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \ans_OBUF[5]_inst 
       (.I(lopt_6),
        .O(ans[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \ans_OBUF[6]_inst 
       (.I(ans_OBUF[0]),
        .O(ans[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \ans_OBUF[7]_inst 
       (.I(ans_OBUF[1]),
        .O(ans[7]));
  (* IMPORTED_FROM = "f:/Test/display/display.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_0 instance_name
       (.clk_in1_n(sysclk_n),
        .clk_in1_p(sysclk_p),
        .clk_out1(clk),
        .clk_out2(NLW_instance_name_clk_out2_UNCONNECTED),
        .locked(NLW_instance_name_locked_UNCONNECTED),
        .reset(1'b0));
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
