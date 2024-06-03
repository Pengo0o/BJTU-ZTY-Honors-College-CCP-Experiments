`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/11 20:00:23
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

`include "define.svh"

module top (
    input logic sysclk_p,
    input logic sysclk_n,
    input logic [31:0] a,
    input logic key_erase_crosstalk,
    input logic key_reg_0,
    output logic [6:0] seg1,
    output logic [6:0] seg2,
    output logic [6:0] seg3,
    output logic [6:0] seg4,
    output logic [7:0] ans
);

  logic [31:0] inst;
  assign inst = a & {32{~key_erase_crosstalk}};

  logic [31:0] res;
  logic [31:0] dis_res;
  logic [31:0] ram_data_i;
  logic [31:0] ram_data_o;
  logic [31:0] ram_addr_o;
  logic [31:0] rom_addr;
  logic [3:0] ram_data_sel_ext;
  logic wea_ext;
  logic ram_ce_ext;

  logic clk;
  logic clk_10;
  logic locked;
  assign inst = a;
  clk_wiz_0 instance_name (
      // Clock out ports
      .clk_out1 (clk),       // output clk_out1
      .clk_out2 (clk_10),    // output clk_out2
      .locked   (locked),    // output locked
      // Status and control signals
      .reset    (1'b0),      // input reset
      // Clock in ports
      .clk_in1_p(sysclk_p),  // input clk_in1_p
      .clk_in1_n(sysclk_n)   // input clk_in1_n
  );

  assign inst = a;
  rom_bit_extension ROM (
      .clk(clk),
      .addra(rom_addr[17:0]),
      .rom_data_o(inst)
  );
  micro_cpu cpu (
      .clk(clk),
      .rst(~key_reg_0),
      .inst(inst),
      .res(res),
      .ram_data_i(ram_data_o),
      .ram_data_o(ram_data_i),
      .ram_addr_o(ram_addr_o),
      .ram_we_o(wea_ext),
      .ram_sel_n(ram_data_sel_ext),
      .ram_ce_o(ram_ce_ext),
      .rom_addr_o(rom_addr)
  );
  bit_extension bit_ext (
      .clk(clk),
      .ram_data_i(ram_data_i),
      .ram_data_o(ram_data_o),
      .ram_addr_i(ram_addr_o[15:0]),
      .ram_data_sel(ram_data_sel_ext),
      .wea(wea_ext),
      .ram_ce(ram_ce_ext)
  );
  dis_buffer DIS_BUF (
      .clk(clk),
      .rst(~key_reg_0),
      .data(res),
      .data_o(dis_res)
  );
  display DIS (
      .clk(clk),
      .rst(1'b0),
      .s(dis_res),
      .seg1(seg1),
      .seg2(seg2),
      .seg3(seg3),
      .seg4(seg4),
      .ans(ans)
  );
endmodule
