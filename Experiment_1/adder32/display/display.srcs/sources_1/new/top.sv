`timescale 1ns / 1ps
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

module adder (
    input  logic a,
    input  logic b,
    input  logic cin,
    output logic s,
    output logic cout
);
  assign s = ((~a) & (~b) & cin) | ((~a) & b & (~cin)) | (a & (~b) & (~cin)) | (a & b & cin);
  assign cout = (b & cin) | (a & b) | (a & cin);
endmodule

module adder32 (
    input logic [31:0] A,
    input logic [31:0] B,
    input logic m,
    output logic [31:0] sum,
    output logic v,
    output logic cout
);
  logic [32:0] c;
  logic s32;

  adder ADD0 (
      .a(A[0]),
      .b(B[0] ^ m),
      .cin(m),
      .s(sum[0]),
      .cout(c[0])
  );

  for (genvar i = 1; i < 32; i++) begin
    adder ADD (
        .a(A[i]),
        .b(B[i] ^ m),
        .cin(c[i-1]),
        .s(sum[i]),
        .cout(c[i])
    );
  end

  adder ADD (
      .a(A[31]),
      .b(B[31] ^ m),
      .cin(c[31]),
      .s(s32),
      .cout(c[32])
  );

  assign cout = c[32];
  assign v = sum[31] ^ s32;

endmodule


module top (
    input logic sysclk_p,
    input logic sysclk_n,
    input logic [31:0] a,
    input logic [31:0] b,
    input logic key,
    // output logic [31:0] sum,
    output logic [1:0] led,
    output logic [6:0] seg1,
    output logic [6:0] seg2,
    output logic [6:0] seg3,
    output logic [6:0] seg4,
    output logic [7:0] ans
);
  logic [31:0] sum;
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

  adder32 adder32_inst (
      .A(a),
      .B(b),
      .m(key),
      .sum(sum),
      .v(led[0]),
      .cout(led[1])
  );

  display DIS (
      clk,
      1'b0,
      sum,
      seg1,
      seg2,
      seg3,
      seg4,
      ans
  );

endmodule
