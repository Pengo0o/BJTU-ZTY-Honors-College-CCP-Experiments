`timescale 1ns / 1ns

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
    #100  //nor $t0,$t1,$t2
      inst = 32'b00000001001010100100000000100111;
    #100  //sub $t0,$t1,$t2
      inst = 32'b00000001001010100100000000100010;
    #50  //addu $t0,$t1,$t2
      inst = 32'b00000001001000010100000000100001;
    #50  //blez $t1,l1
      inst = 32'b00000101001000000000000000000000;
    #50  //bgez $t1,l2
      inst = 32'b00000101001000010000000000000000;
    #100 $stop;
  end
endmodule

