`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 22:56:23
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////






module top (
    input logic sysclk_p,
    input logic sysclk_n,
    input logic [31:0] a,
    input logic key,
    // output logic [31:0] res,
    //output logic [1:0]led,
    output logic [6:0] seg1,
    output logic [6:0] seg2,
    output logic [6:0] seg3,
    output logic [6:0] seg4,
    output logic [7:0] ans
);
  assign inst = a;

  logic clk;
  logic clk_10;
  logic locked;

  clk_wiz_0 instance_name (
      // Clock out ports
      .clk_out1(clk),     // output clk_out1
      .clk_out2(clk_10),
      .locked(locked),
      // Status and control signals
      .reset(1'b0), // input reset
      // Clock in ports
      .clk_in1_p(sysclk_p),    // input clk_in1_p
      .clk_in1_n(sysclk_n)
  );  // input clk_in1_n

  //    multipler32 multipler32(
  //        .a(a),
  //        .b(b),
  //        .p(p)
  //    );

  logic [4:0] raddr_1;
  logic [4:0] raddr_2;
  logic re_1;
  logic re_2;
  logic [31:0] rdata_1;
  logic [31:0] rdata_2;
  logic [5:0] aluop;
  logic [31:0] reg_1;
  logic [31:0] reg_2;
  logic [4:0] waddr;
  logic we;
  logic [31:0] res;

  inst_dec DECODE (
      .inst(a),
      .raddr_1(raddr_1),
      .raddr_2(raddr_2),
      .re_1(re_1),
      .re_2(re_2),
      .rdata_1(rdata_1),
      .rdata_2(rdata_2),
      .aluop(aluop),
      .reg_1(reg_1),
      .reg_2(reg_2),
      .waddr(waddr),
      .we(we)
  );

  regfile REGs (
      .clk(clk),
      .rst(~key),
      .we(we),
      .waddr(waddr),
      .wdata(reg_2),
      .re_1(re_1),
      .raddr_1(raddr_1),
      .rdata_1(rdata_1),
      .re_2(re_2),
      .raddr_2(raddr_2),
      .rdata_2(rdata_2)
  );

  alu ALU (
      .aluop(aluop),
      .reg_1(reg_1),
      .reg_2(reg_2),
      .res  (res)
  );

  display DIS (
      clk,
      1'b0,
      res,
      seg1,
      seg2,
      seg3,
      seg4,
      ans
  );


endmodule
