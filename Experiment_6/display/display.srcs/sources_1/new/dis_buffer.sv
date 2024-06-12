`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/31 09:32:29
// Design Name: 
// Module Name: dis_buffer
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
module dis_buffer (
    input logic clk,
    input logic rst,
    input logic [31:0] data,
    output logic [31:0] data_o
);
  logic [31:0] fresh_data;
  always_ff @(posedge clk) begin
    if (rst) begin
      fresh_data <= `ZeroWord;
    end else begin
      if (data != fresh_data & data != `ZeroWord) begin
        fresh_data <= data;
      end
    end
  end
  assign data_o = fresh_data;
endmodule
