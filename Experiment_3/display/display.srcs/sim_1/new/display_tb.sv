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

/*
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
    a   = 32'b001111_00000_00001_0000_0000_0000_0001;
    #200 key = 1'b1;
    a = 32'b001111_00000_00010_0000_0000_0000_0001;
    #200 key = 1'b1;
    a = 32'b000000_00001_00010_00011_00000_100000;
    #200 $stop;
  end


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
*/



module part2_word_extension_tb ();

  logic [7:0] ram_data_i;
  logic [7:0] ram_data_o;
  logic [15:0] ram_addr_i;
  logic wea;
  logic ram_ce;
  logic clk;

  initial begin
    clk = 1'b1;
    forever #10 clk = ~clk;
  end
  initial begin
    ram_data_i = 8'b0000_0001;
    ram_addr_i = 16'b0000_0000_0000_0000;
    wea = 1'b1;
    ram_ce = 1'b1;

    #20;
    ram_data_i = 8'b0000_0010;
    ram_addr_i = 16'b0000_0000_0000_0001;
    wea = 1'b1;
    ram_ce = 1'b1;

    #20;
    ram_data_i = 8'b0000_0010;
    ram_addr_i = 16'b0000_0000_0000_0001;
    wea = 1'b0;
    ram_ce = 1'b1;
    #20;

    ram_data_i = 8'b0000_0011;
    ram_addr_i = 16'b0100_0000_0000_0010;
    wea = 1'b1;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_0011;
    ram_addr_i = 16'b0100_0000_0000_0010;
    wea = 1'b0;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_0100;
    ram_addr_i = 16'b0100_0000_0000_0011;
    wea = 1'b1;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_0100;
    ram_addr_i = 16'b0100_0000_0000_0011;
    wea = 1'b0;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_0101;
    ram_addr_i = 16'b1000_0000_0000_0100;
    wea = 1'b1;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_0101;
    ram_addr_i = 16'b1000_0000_0000_0100;
    wea = 1'b0;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_0110;
    ram_addr_i = 16'b1000_0000_0000_0101;
    wea = 1'b1;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_0110;
    ram_addr_i = 16'b1000_0000_0000_0101;
    wea = 1'b0;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_0111;
    ram_addr_i = 16'b1100_0000_0000_0110;
    wea = 1'b1;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_0111;
    ram_addr_i = 16'b1100_0000_0000_0110;
    wea = 1'b0;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_1000;
    ram_addr_i = 16'b1100_0000_0000_0111;
    wea = 1'b1;
    ram_ce = 1'b1;
    #20;
    ram_data_i = 8'b0000_1000;
    ram_addr_i = 16'b1100_0000_0000_0111;
    wea = 1'b0;
    ram_ce = 1'b1;
    #20;
    $stop;
  end
  part2_word_extension RAM_word_extension (
      .clk(clk),
      .ram_data_i(ram_data_i),
      .ram_data_o(ram_data_o),
      .ram_addr_i(ram_addr_i),
      .wea(wea),
      .ram_ce(ram_ce)
  );


endmodule



// module part3_bit_extension_tb ();

//   logic [31:0] ram_data_i;
//   logic [31:0] ram_data_o;
//   logic [15:0] ram_addr_i;
//   logic wea;
//   logic ram_ce;
//   logic clk;
//   logic [3:0] ram_data_sel;

//   initial begin
//     clk = 1'b1;
//     forever #10 clk = ~clk;
//   end

//   initial begin
//     ram_data_i = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
//     ram_addr_i = 16'b0000_0000_0000_0000;
//     wea = 1'b1;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b0001;
//     #20 ram_data_i = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
//     ram_addr_i = 16'b0000_0000_0000_0000;
//     wea = 1'b0;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b0001;
//     #20;
//     ram_data_i = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
//     ram_addr_i = 16'b0100_0000_0000_0001;
//     wea = 1'b1;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b0010;
//     #20;
//     ram_data_i = 32'b0000_0000_0000_0000_0000_0010_0000_0000;
//     ram_addr_i = 16'b0100_0000_0000_0001;
//     wea = 1'b0;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b0010;
//     #20;
//     ram_data_i = 32'b0000_0000_0000_0011_0000_0000_0000_0000;
//     ram_addr_i = 16'b1000_0000_0000_0010;
//     wea = 1'b1;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b0100;
//     #20;
//     ram_data_i = 32'b0000_0000_0000_0011_0000_0000_0000_0000;
//     ram_addr_i = 16'b1000_0000_0000_0010;
//     wea = 1'b0;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b0100;
//     #20;
//     ram_data_i = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
//     ram_addr_i = 16'b1100_0000_0000_0011;
//     wea = 1'b1;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b1000;
//     #20;
//     ram_data_i = 32'b0000_0100_0000_0000_0000_0000_0000_0000;
//     ram_addr_i = 16'b1100_0000_0000_0011;
//     wea = 1'b0;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b1000;
//     #20;
//     ram_data_i = 32'b0000_0000_0000_0000_0000_0000_0000_0101;
//     ram_addr_i = 16'b0000_0000_0000_0100;
//     wea = 1'b1;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b1111;
//     #20;
//     ram_data_i = 32'b0000_0000_0000_0000_0000_0000_0000_0101;
//     ram_addr_i = 16'b0000_0000_0000_0100;
//     wea = 1'b0;
//     ram_ce = 1'b1;
//     ram_data_sel = 4'b1111;
//     #20;
//     $stop;
//   end

//   part3_bit_extension RAM_bit_extension (
//       .clk(clk),
//       .ram_data_i(ram_data_i),
//       .ram_data_o(ram_data_o),
//       .ram_addr_i(ram_addr_i),
//       .ram_data_sel(ram_data_sel),
//       .wea(wea),
//       .ram_ce(ram_ce)
//   );

// endmodule
