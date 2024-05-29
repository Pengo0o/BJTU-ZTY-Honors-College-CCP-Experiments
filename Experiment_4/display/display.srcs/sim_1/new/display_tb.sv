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
  logic clk;
  logic [31:0] inst;
  logic key;
  //  logic [31:0] res,
  // logic [1:0]led,
  logic [6:0] seg1;
  logic [6:0] seg2;
  logic [6:0] seg3;
  logic [6:0] seg4;
  logic [7:0] ans;

  logic [31:0] res;
  //   logic [31:0] res;
  logic [31:0] ram_data_i;
  logic [31:0] ram_data_o;
  logic [31:0] ram_addr_o;
  logic ram_we_o;
  logic [3:0] ram_sel_n;
  logic ram_ce_o;



  initial begin
    clk = 1'b1;
    forever #10 clk = ~clk;
  end



  initial begin
    key  = 1;
    inst = 32'b001111_00000_00001_0000_0000_0000_0011;
    #200 key = 1;
    inst = 32'b001000_00001_00010_0000_0000_0000_0100;
    #200;
    key  = 1;
    inst = 32'b101011_00001_00010_0000_0000_0000_0100;
    #200;
    key  = 1;
    inst = 32'b100011_00001_00011_0000_0000_0000_0100;
    #200 $stop;
  end

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
/*
module micro_cpu_tb ();
  //  logic clk,
  logic key;
  logic [31:0] inst;  //指令
  logic [31:0] res;
  logic [31:0] ram_data_i;
  logic [31:0] ram_data_o;
  logic [31:0] ram_addr_o;
  logic ram_we_o;
  logic [3:0] ram_sel_n;
  logic ram_ce_o;


  logic clk;
  assign rst = ~key;
  initial begin
    clk = 1'b1;
    forever #10 clk = ~clk;
  end

  initial begin
    ram_data_i = 32'b0;
    key = 1'b1;
    inst = 32'b001111_00000_00001_0000_0000_0000_0011;
    #200;
    key  = 1'b1;
    inst = 32'b001000_00001_00010_0000_0000_0000_0100;
    #200;
    key  = 1'b1;
    inst = 32'b000000_00010_00010_00011_00000_100000;
    #200 $stop;
  end

  logic [31:0] inst_o;
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
  logic [4:0] waddr_o;
  logic we_o;
  logic [3:0] mem_op;
  logic [31:0] mem_addr_o;
  logic [31:0] mem_data_o;
  logic [4:0] waddr_o_back;
  //   logic [31:0] wdata_o_back;
  logic we_o_back;
  logic [31:0] wdata_i;

  inst_dec DECODE (
      .inst(inst),  //指令输入
      .inst_o(inst_o),  //指令输出
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
  alu ALU (
      .aluop(aluop),
      .reg_1(reg_1),
      .reg_2(reg_2),
      .res(wdata_i),
      .waddr(waddr),
      .we(we),
      .waddr_o(waddr_o),
      .we_o(we_o),
      .inst(inst_o),
      .mem_op(mem_op),
      .mem_addr_o(mem_addr_o),
      .mem_data_o(mem_data_o)
  );
  mem MEM (
      .we_i(we_o),
      .waddr_i(waddr_o),
      .wdata_i(wdata_i),
      .ram_data_i(ram_data_i),
      .mem_op(mem_op),
      .mem_addr_i(mem_addr_o),
      .mem_data_i(mem_data_o),

      .we_o(we_o_back),
      .waddr_o(waddr_o_back),
      .wdata_o(res),

      .mem_addr_o(ram_addr_o),
      .mem_data_o(ram_data_o),
      .mem_sel_n (ram_sel_n),
      .mem_ce_o  (ram_ce_o),
      .mem_we_o  (ram_we_o)
  );
  regfile REGs (
      .clk(clk),
      .rst(rst),
      .we(we_o_back),
      .waddr(waddr_o_back),
      .wdata(res),
      .re_1(re_1),
      .raddr_1(raddr_1),
      .rdata_1(rdata_1),
      .re_2(re_2),
      .raddr_2(raddr_2),
      .rdata_2(rdata_2)
  );

endmodule
*/

