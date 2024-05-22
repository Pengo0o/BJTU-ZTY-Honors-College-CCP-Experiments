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
    output logic [31:0] res
);
  always_comb begin
    res = 32'h00000000;

    case (aluop)
      `EXE_AND: begin
        res = reg_1 & reg_2;
      end
      `EXE_OR: begin
        res = reg_1 | reg_2;
      end
      `EXE_ADD: begin
        res = reg_1 + reg_2;
      end
      default: begin
        res = 32'h00000000;
      end
    endcase
  end
endmodule


