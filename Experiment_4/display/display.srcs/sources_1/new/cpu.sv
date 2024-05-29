`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/28 19:31:54
// Design Name: 
// Module Name: cpu
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


module micro_cpu (
    input logic clk,
    input logic rst,
    input logic [31:0] inst,  //指令
    output logic [31:0] res,
    input logic [31:0] ram_data_i,
    output logic [31:0] ram_data_o,
    output logic [31:0] ram_addr_o,
    output logic ram_we_o,
    output logic [3:0] ram_sel_n,
    output logic ram_ce_o

);
  logic [31:0][31:0] regs;
  logic [31:0] inst_o;
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
  logic [4:0] waddr_o;
  logic we_o;
  logic [3:0] mem_op;
  logic [31:0] mem_addr_o;
  logic [31:0] mem_data_o;
  logic [4:0] waddr_o_back;
  //   logic [31:0] wdata_o_back;
  logic we_o_back;
  logic [31:0] wdata_i;

  inst_dec DECODE (
      .inst(inst),  //指令输入
      .inst_o(inst_o),  //指令输出
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
  alu ALU (
      .aluop(aluop),
      .reg_1(reg_1),
      .reg_2(reg_2),
      .res(wdata_i),
      .waddr(waddr),
      .we(we),
      .waddr_o(waddr_o),
      .we_o(we_o),
      .inst(inst_o),
      .mem_op(mem_op),
      .mem_addr_o(mem_addr_o),
      .mem_data_o(mem_data_o)
  );
  mem MEM (
      .we_i(we_o),
      .waddr_i(waddr_o),
      .wdata_i(wdata_i),
      .ram_data_i(ram_data_i),
      .mem_op(mem_op),
      .mem_addr_i(mem_addr_o),
      .mem_data_i(mem_data_o),

      .we_o(we_o_back),
      .waddr_o(waddr_o_back),
      .wdata_o(res),

      .mem_addr_o(ram_addr_o),
      .mem_data_o(ram_data_o),
      .mem_sel_n (ram_sel_n),
      .mem_ce_o  (ram_ce_o),
      .mem_we_o  (ram_we_o)
  );
  regfile REGs (
      .clk(clk),
      .rst(rst),
      .we(we_o_back),
      .waddr(waddr_o_back),
      .wdata(res),
      .re_1(re_1),
      .raddr_1(raddr_1),
      .rdata_1(rdata_1),
      .re_2(re_2),
      .raddr_2(raddr_2),
      .rdata_2(rdata_2),
      .rin(regs),
      .rout(regs)
  );

endmodule
