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
    //output logic [1:0]led,
    output logic [6:0] seg1,
    output logic [6:0] seg2,
    output logic [6:0] seg3,
    output logic [6:0] seg4,
    output logic [7:0] ans
);
  logic ram_data_o_1, ram_data_o_2, ram_data_o_3, ram_data_o_4;
  logic [3:0] ram_ce_sel;

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
