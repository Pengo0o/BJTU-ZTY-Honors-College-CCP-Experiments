`timescale 1ns / 1ps


module top_tb ();

  //  logic [31:0] a,
  //  logic key_erase_crosstalk,
  logic key;
  logic [6:0] seg1;
  logic [6:0] seg2;
  logic [6:0] seg3;
  logic [6:0] seg4;
  logic [7:0] ans;


  logic [31:0] inst;
  //   assign inst = a & {32{~key_erase_crosstalk}};

  logic [31:0] res;
  logic [31:0] dis_res;
  logic [31:0] ram_data_i;
  logic [31:0] ram_data_o;
  logic [31:0] ram_addr_o;
  logic [31:0] rom_addr;
  logic [3:0] ram_data_sel_ext;
  logic wea_ext;
  logic ram_ce_ext;

  logic clk;
  //   assign inst = a;
  initial begin
    clk = 1'b1;
    forever #10 clk = ~clk;
  end

  initial begin
    key = 1'b0;
    #100 key = 1'b1;
    #100 key = 1'b1;
    #100 key = 1'b1;
    #100 key = 1'b1;
    #100 key = 1'b1;
    #100 key = 1'b1;
    #100 key = 1'b1;
    #5000 $stop;

  end

  rom_bit_extension ROM (
      .clk(clk),
      .addra(rom_addr[17:0]),
      .rom_data_o(inst)
  );
  micro_cpu cpu (
      .clk(clk),
      .rst(~key),
      .inst(inst),
      .res(res),
      .ram_data_i(ram_data_o),
      .ram_data_o(ram_data_i),
      .ram_addr_o(ram_addr_o),
      .ram_we_o(wea_ext),
      .ram_sel_n(ram_data_sel_ext),
      .ram_ce_o(ram_ce_ext),
      .rom_addr_o(rom_addr)
  );
  bit_extension bit_ext (
      .clk(clk),
      .ram_data_i(ram_data_i),
      .ram_data_o(ram_data_o),
      .ram_addr_i(ram_addr_o[15:0]),
      .ram_data_sel(ram_data_sel_ext),
      .wea(wea_ext),
      .ram_ce(ram_ce_ext)
  );
  dis_buffer DIS_BUF (
      .clk(clk),
      .rst(~key),
      .data(res),
      .data_o(dis_res)
  );
  display DIS (
      .clk(clk),
      .rst(1'b0),
      .s(dis_res),
      .seg1(seg1),
      .seg2(seg2),
      .seg3(seg3),
      .seg4(seg4),
      .ans(ans)
  );
endmodule


