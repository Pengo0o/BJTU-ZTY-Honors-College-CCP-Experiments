`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/26 23:11:40
// Design Name: 
// Module Name: mem
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
module mem (
    //来自执行阶段的信息
    input logic we_i,  //写使能
    input logic [4:0] waddr_i,  //写地址
    input logic [31:0] wdata_i,  //存取嫩据

    //从数据存储器读取的信息
    input logic [31:0] ram_data_i,
    input logic [3:0] mem_op,  //访存操作类型
    input logic [31:0] mem_addr_i,  //访存地址
    input logic [31:0] mem_data_i,  //访存数据

    //需要回写的信息
    output logic we_o,  //写使能
    output logic [4:0] waddr_o,  //写地址
    output logic [31:0] wdata_o,  //写数据

    //送到数据存储的信息
    output logic [31:0] mem_addr_o,  //访存地址
    output logic [31:0] mem_data_o,  //访存数据
    output logic [3:0] mem_sel_n,  //字节选择信号
    output logic mem_ce_o,  //是否可以访间存储器
    output logic mem_we_o  //是否可以写存储器
);

  always_comb begin
    we_o = we_i;
    waddr_o = waddr_i;
    wdata_o = wdata_i;
    case (mem_op)
      // LB
      `MEM_LB: begin
        wdata_o = ram_data_i;
        mem_addr_o = mem_addr_i;
        mem_data_o = `ZeroWord;
        mem_ce_o = `ChipEnable;
        mem_we_o = `WriteDisable;
        case (mem_addr_i[1:0])
          2'b00: begin
            mem_sel_n = 4'b0001;
          end
          2'b01: begin
            mem_sel_n = 4'b0010;
          end
          2'b10: begin
            mem_sel_n = 4'b0100;
          end
          2'b11: begin
            mem_sel_n = 4'b1000;
          end
          default: begin
            mem_sel_n = 4'b0000;
          end
        endcase
      end

      //LW
      `MEM_LW: begin
        wdata_o = ram_data_i;
        mem_addr_o = mem_addr_i;
        mem_data_o = `ZeroWord;
        mem_ce_o = `ChipEnable;
        mem_we_o = `WriteDisable;
        mem_sel_n = 4'b1111;
      end

      //SW
      `MEM_SW: begin
        wdata_o = `ZeroWord;
        mem_addr_o = mem_addr_i;
        mem_data_o = mem_data_i;
        mem_ce_o = `ChipEnable;
        mem_we_o = `WriteEnable;
        mem_sel_n = 4'b1111;
      end

      // SB
      `MEM_SB: begin
        wdata_o = `ZeroWord;
        mem_addr_o = mem_addr_i;
        mem_data_o = {4{mem_data_i[7:0]}};
        mem_ce_o = `ChipEnable;
        mem_we_o = `WriteEnable;
        case (mem_addr_i[1:0])
          2'b00: begin
            mem_sel_n = 4'b0001;
          end
          2'b01: begin
            mem_sel_n = 4'b0010;
          end
          2'b10: begin
            mem_sel_n = 4'b0100;
          end
          2'b11: begin
            mem_sel_n = 4'b1000;
          end
          default: begin
            mem_sel_n = 4'b0000;
          end
        endcase

      end

      default: begin
        wdata_o = wdata_i;
        mem_addr_o = `ZeroWord;
        mem_data_o = `ZeroWord;
        mem_ce_o = `ChipDisable;
        mem_we_o = `WriteDisable;
        mem_sel_n = 4'b0000;
      end
    endcase
  end
endmodule
