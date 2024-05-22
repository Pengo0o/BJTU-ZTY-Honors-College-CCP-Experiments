`timescale 1ns / 1ns
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


module top_tb ();

  logic [31:0] res;
  logic clk;
  logic [31:0] a;
  logic key;
  //output logic [1:0]led,
  logic [6:0] seg1;
  logic [6:0] seg2;
  logic [6:0] seg3;
  logic [6:0] seg4;
  logic [7:0] ans;

  initial begin
    clk = 1'b1;
    forever #10 clk = ~clk;
  end

  initial begin
    key = 1'b0;
    // a   = 32'b001111_00000_00001_0000_0000_0000_0011;
    // #200 key = 1'b1;
    // a = 32'b001000_00001_00010_0000_0000_0000_0100;
    // #200 key = 1'b1;
    // a = 32'b000000_00010_00010_00011_00000_100000;
    // #200 $stop;
    a   = 32'b001111_00000_00001_1010_0101_1010_0101;
    #200 a = 32'b001000_00001_00010_0101_101001011010;
    key = 1'b1;
    #200 a = 32'b00111100000000111010010110100101;
    key = 1'b1;
    #200 a = 32'b00111100000001001010101001010101;
    key = 1'b1;
    #200 a = 32'b00000000011001000010100000100000;
    key = 1'b1;
    #200 a = 32'b00000000011001000011000000100100;
    key = 1'b1;
    #200 a = 32'b00000000011001000011000000100101;
    key = 1'b1;
    #200 $stop;
  end

  //   clk_wiz_0 instance_name (
  //       // Clock out ports
  //       .clk_out1(clk),     // output clk_out1
  //       .clk_out2(clk_10),
  //       .locked(locked),
  //       // Status and control signals
  //       .reset(1'b0), // input reset
  //       // Clock in ports
  //       .clk_in1_p(sysclk_p),    // input clk_in1_p
  //       .clk_in1_n(sysclk_n)
  //   );  // input clk_in1_n
  //   top top_inst (
  //       .sysclk_p(1'b1),
  //       .sysclk_n(1'b0),
  //       .a(a),
  //       .key(key),
  //       .res(res),
  //       .seg1(seg1),
  //       .seg2(seg2),
  //       .seg3(seg3),
  //       .seg4(seg4),
  //       .ans(ans)

  //   );

  logic [4:0] raddr_1;
  logic [4:0] raddr_2;
  logic re_1;
  logic re_2;
  logic [31:0] rdata_1;
  logic [31:0] rdata_2;
  logic [5:0] aluop;
  logic [31:0] reg_1;
  logic [31:0] reg_2;
  logic [4:0] waddr;
  logic we;


  inst_dec DECODE (
      .inst(a),
      .raddr_1(raddr_1),
      .raddr_2(raddr_2),
      .re_1(re_1),
      .re_2(re_2),
      .rdata_1(rdata_1),
      .rdata_2(rdata_2),
      .aluop(aluop),
      .reg_1(reg_1),
      .reg_2(reg_2),
      .waddr(waddr),
      .we(we)
  );

  regfile REGs (
      .clk(clk),
      .rst(~key),
      .we(we),
      .waddr(waddr),
      .wdata(reg_2),
      .re_1(re_1),
      .raddr_1(raddr_1),
      .rdata_1(rdata_1),
      .re_2(re_2),
      .raddr_2(raddr_2),
      .rdata_2(rdata_2)
  );
  /*
  logic [ 5:0] aluop;
  logic [31:0] reg_1;
  logic [31:0] reg_2;
  logic [31:0] res;
  initial begin
    aluop = 6'b000000;
    reg_1 = 32'h00000000;
    reg_2 = 32'h00000000;
    #200 aluop = 6'b000001;
    reg_1 = 32'h0001000;
    reg_2 = 32'h0001000;
    #200 aluop = 6'b000010;
    reg_1 = 32'h01010101;
    reg_2 = 32'h00000000;
    #200 aluop = 6'b001010;
    reg_1 = 32'h05200000;
    reg_2 = 32'h00001314;
    #200 $stop;
  end
*/
  alu ALU (
      .aluop(aluop),
      .reg_1(reg_1),
      .reg_2(reg_2),
      .res  (res)
  );


  display DIS (
      .clk(clk),
      .rst(rst),
      .s(res),
      .seg1(seg1),
      .seg2(seg2),
      .seg3(seg3),
      .seg4(seg4),
      .ans(ans)
  );


endmodule
