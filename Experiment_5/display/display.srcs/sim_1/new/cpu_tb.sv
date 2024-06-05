`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/05 19:52:12
// Design Name: 
// Module Name: cpu_tb
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



module tb_cpu ();
  logic clk;
  logic rst;
  logic [31:0] inst;
  logic [31:0] ram_data_i;
  logic [31:0] res;
  logic [31:0] ram_data_o;
  logic [31:0] ram_addr_o;
  logic [31:0] rom_addr_o;
  logic ram_we_o;
  logic [3:0] ram_sel_n;
  logic ram_ce_o;
  // 实例化 micro_cpu 模块
  micro_cpu CPU (
      .clk(clk),
      .rst(rst),
      .inst(inst),
      .res(res),
      .ram_data_i(ram_data_i),
      .ram_data_o(ram_data_o),
      .ram_addr_o(ram_addr_o),
      .ram_we_o(ram_we_o),
      .ram_sel_n(ram_sel_n),
      .ram_ce_o(ram_ce_o),
      .rom_addr_o(rom_addr_o)
  );

  // 初始化输入
  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end
  initial begin
    rst = 1'b1;
    #10 rst = 1'b0;
    #40  //LUI %01H FFFFH
      inst = 32'b001111_00000_00001_1111_1111_1111_1111;
    ram_data_i = 32'h00000000;
    #50  //ADDI %02H %01H FFFFH
      inst = 32'b001000_00001_00010_1111_1111_1111_1111;
    #50  //LUI %03H 0000H
      inst = 32'b001111_00000_00011_0000_0000_0000_0000;
    #50  //ADDI %04H %03H 0001H
      inst = 32'b001000_00011_00100_0000_0000_0000_0001;
    #50  //BEQ %02H %02H FFFEH
      inst = 32'b000100_00010_00010_1111_1111_1111_1110;
    #50  //BNE %02H %04H FFFEH
      inst = 32'b000101_00010_00100_1111_1111_1111_1110;
    #50  //BLEZ %02H FFFEH
      inst = 32'b000110_00010_00000_1111_1111_1111_1110;
    #50  //BGTZ %04H FFFEH
      inst = 32'b000111_00100_00000_1111_1111_1111_1110;
    #50  //J 0000004H
      inst = 32'b000010_00_0000_0000_0000_0000_0000_0100;
    #50 rst = 1'b1;
    $stop;
  end
endmodule

