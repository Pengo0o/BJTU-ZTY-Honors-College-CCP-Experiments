`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 19:55:35
// Design Name: 
// Module Name: alu
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
`include "define.vh"


module alu (
    input  logic [ 5:0] aluop,
    input  logic [31:0] reg_1,
    input  logic [31:0] reg_2,
    output logic [31:0] res,

    input logic [4:0] waddr,
    input logic we,
    output logic [4:0] waddr_o,
    output logic we_o,

    input  logic [31:0] inst,
    output logic [ 3:0] mem_op,
    output logic [31:0] mem_addr_o,
    output logic [31:0] mem_data_o

);
  assign waddr_o = waddr;
  assign we_o = we;

  logic [31:0] imms;
  assign imms = {{16{inst[15]}}, inst[15:0]};

  always_comb begin


    case (aluop)
      `EXE_AND: begin
        res = reg_1 & reg_2;
        mem_op = `MEM_NOP;
        mem_addr_o = `ZeroWord;
        mem_data_o = `ZeroWord;
      end
      `EXE_OR: begin
        res = reg_1 | reg_2;
        mem_op = `MEM_NOP;
        mem_addr_o = `ZeroWord;
        mem_data_o = `ZeroWord;
      end
      `EXE_ADD: begin
        res = reg_1 + reg_2;
        mem_op = `MEM_NOP;
        mem_addr_o = `ZeroWord;
        mem_data_o = `ZeroWord;
      end
      `EXE_LB: begin
        res = 32'h00000000;
        mem_op = `MEM_LB;
        mem_addr_o = reg_1 + imms;
        mem_data_o = `ZeroWord;
      end
      `EXE_LW: begin
        res = 32'h00000000;
        mem_op = `MEM_LW;
        mem_addr_o = reg_1 + imms;
        mem_data_o = `ZeroWord;
      end
      `EXE_SB: begin
        res = 32'h00000000;
        mem_op = `MEM_SB;
        mem_addr_o = reg_1 + imms;
        mem_data_o = reg_2;
      end
      `EXE_SW: begin
        res = 32'h00000000;
        mem_op = `MEM_SW;
        mem_addr_o = reg_1 + imms;
        mem_data_o = reg_2;
      end
      default: begin
        mem_op = `MEM_NOP;
        mem_addr_o = `ZeroWord;
        mem_data_o = `ZeroWord;
        res = 32'h00000000;
      end
    endcase
  end
endmodule


