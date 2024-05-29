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
  logic [31:0] inst;
  assign inst = a;

  logic clk;
  logic clk_10;
  logic locked;
  logic [31:0] res;
  //   logic [31:0] res;
  logic [31:0] ram_data_i;
  logic [31:0] ram_data_o;
  logic [31:0] ram_addr_o;
  logic ram_we_o;
  logic [3:0] ram_sel_n;
  logic ram_ce_o;
  logic res_o;

  //   assign res = res_o;



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


  micro_cpu CPU (
      .clk(clk),
      .rst(~key),
      .inst(inst),
      .res(res),
      .ram_data_i(ram_data_i),
      .ram_data_o(ram_data_o),
      .ram_addr_o(ram_addr_o),
      .ram_we_o(ram_we_o),
      .ram_sel_n(ram_sel_n),
      .ram_ce_o(ram_ce_o)
  );

  part3_bit_extension Block_RAM (
      .clk(clk),
      .ram_data_i(ram_data_o),
      .ram_data_o(ram_data_i),
      .ram_addr_i(ram_addr_o),
      .ram_data_sel(ram_sel_n),
      .wea(ram_we_o),
      .ram_ce(ram_ce_o)
  );

  display DIS (
      .clk(clk),
      .rst(1'b0),
      .s(res),
      .seg1(seg1),
      .seg2(seg2),
      .seg3(seg3),
      .seg4(seg4),
      .ans(ans)
  );




endmodule
