`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 23:47:23
// Design Name: 
// Module Name: display_tb
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


module display_tb ();
  logic clk;
  logic rst;
  logic [31:0] a;
  logic [31:0] b;
  logic key;
  logic [31:0] sum;
  logic [1:0] led;
  logic [6:0] seg1;
  logic [6:0] seg2;
  logic [6:0] seg3;
  logic [6:0] seg4;
  logic [7:0] ans;

  initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
  end

  initial begin
    rst = 1'b0;
    a   = 32'b01111111111111111111111111111111;
    b   = 32'b00000000000000000000000000000001;
    key = 0;
    #200 a = 32'b11011010111100001111000011110000;
    b   = 32'b00110011001100110011001100110011;
    key = 0;
    #200 a = 32'b11011010111100001111000011110000;
    b   = 32'b00110011001100110011001100110011;
    key = 1;
    #200 $stop;
  end
  adder32 adder32_inist (
      .A(a),
      .B(b),
      .m(key),
      .sum(sum),
      .v(led[0]),
      .cout(led[1])
  );
  display DIS (
      .clk(clk),
      .rst(rst),
      .s(sum),
      .seg1(seg1),
      .seg2(seg2),
      .seg3(seg3),
      .seg4(seg4),
      .ans(ans)
  );
endmodule
