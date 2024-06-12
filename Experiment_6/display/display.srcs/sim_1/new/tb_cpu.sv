`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/02 11:28:22
// Design Name: 
// Module Name: tb_cpu
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
    ram_data_i = 32'h00000000;
    #10  //
      rst = 1'b0;

  end
endmodule

