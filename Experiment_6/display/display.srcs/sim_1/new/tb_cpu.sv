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
    #100  //lui $t1,0
      inst = 32'b00111100000001000000000000000000;
    #100  //addi $t1,$t1,16
      inst = 32'b00100000100010010000000001100100;
    #100  //sll $t0,$t1,2
      inst = 32'b00000000000010010101000010000000;
    #100  //srl $t0,$t1,2
      inst = 32'b00000000000010010101000010000010;
    #100  //lui $t2,0
      inst = 32'b00111100000010100000000000000000;
    #100  //addi $t2,$t2,2
      inst = 32'b00100000100010100000000000000010;
    #100  //sllv $t0,$t1,$t2    
      inst = 32'b00000001010010010100000000000100;
    #100  //srlv $t0,$t1,$t2
      inst = 32'b00000001010010010100000000000110;
    #100  //xor $t0,$t1,$t2
      inst = 32'b00000001001010100100000000100110;
    #100  //add $t0,$t1,$t2
      inst = 32'b00000001001010100100000000100000;
    #50  //bne loop
      inst = 32'b00010100101001001111111111111001;
    #50  //j 0x4
      inst = 32'b000010_00_0000_0000_0000_0000_0000_0100;
    #100 $stop;
  end
endmodule

