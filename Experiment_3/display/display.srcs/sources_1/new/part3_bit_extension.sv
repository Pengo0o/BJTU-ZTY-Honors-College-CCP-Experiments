`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/18 19:30:54
// Design Name: 
// Module Name: part3_bit_extension
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


module part3_bit_extension (
    input logic clk,
    input logic [31:0] ram_data_i,
    output logic [31:0] ram_data_o,
    input logic [15:0] ram_addr_i,
    input logic [3:0] ram_data_sel,
    input logic wea,
    input logic ram_ce
);
  logic [7:0] ram_data_o_1;
  logic [7:0] ram_data_o_2;
  logic [7:0] ram_data_o_3;
  logic [7:0] ram_data_o_4;

  part2_word_extension RAM_word_extension1 (
      .clk(clk),
      .ram_data_i(ram_data_i[7:0]),
      .ram_data_o(ram_data_o_1),
      .ram_addr_i(ram_addr_i),
      .wea(wea),
      .ram_ce(ram_ce & ram_data_sel[0])
  );
  part2_word_extension RAM_word_extension2 (
      .clk(clk),
      .ram_data_i(ram_data_i[15:8]),
      .ram_data_o(ram_data_o_2),
      .ram_addr_i(ram_addr_i),
      .wea(wea),
      .ram_ce(ram_ce & ram_data_sel[1])
  );
  part2_word_extension RAM_word_extension3 (
      .clk(clk),
      .ram_data_i(ram_data_i[23:16]),
      .ram_data_o(ram_data_o_3),
      .ram_addr_i(ram_addr_i),
      .wea(wea),
      .ram_ce(ram_ce & ram_data_sel[2])
  );
  part2_word_extension RAM_word_extension4 (
      .clk(clk),
      .ram_data_i(ram_data_i[31:24]),
      .ram_data_o(ram_data_o_4),
      .ram_addr_i(ram_addr_i),
      .wea(wea),
      .ram_ce(ram_ce & ram_data_sel[3])
  );

  always_comb begin
    case (ram_data_sel)
      4'b1111: begin
        ram_data_o = {ram_data_o_4, ram_data_o_3, ram_data_o_2, ram_data_o_1};
      end
      4'b0001: begin
        ram_data_o = {{24{ram_data_o_1[7]}}, ram_data_o_1};
      end
      4'b0010: begin
        ram_data_o = {{24{ram_data_o_2[7]}}, ram_data_o_2};
      end
      4'b0100: begin
        ram_data_o = {{24{ram_data_o_3[7]}}, ram_data_o_3};
      end
      4'b1000: begin
        ram_data_o = {{24{ram_data_o_4[7]}}, ram_data_o_4};
      end
      4'b0011: begin
        ram_data_o = {{16{ram_data_o_2[7]}}, ram_data_o_2, ram_data_o_1};
      end
      4'b0101: begin
        ram_data_o = {{16{ram_data_o_3[7]}}, ram_data_o_3, ram_data_o_1};
      end
      4'b0110: begin
        ram_data_o = {{16{ram_data_o_3[7]}}, ram_data_o_3, ram_data_o_2};
      end
      4'b1001: begin
        ram_data_o = {{16{ram_data_o_4[7]}}, ram_data_o_4, ram_data_o_1};
      end
      4'b1010: begin
        ram_data_o = {{16{ram_data_o_4[7]}}, ram_data_o_4, ram_data_o_2};
      end
      4'b1100: begin
        ram_data_o = {{16{ram_data_o_4[7]}}, ram_data_o_4, ram_data_o_3};
      end
      4'b0111: begin
        ram_data_o = {{8{ram_data_o_3[7]}}, ram_data_o_3, ram_data_o_2, ram_data_o_1};
      end
      4'b1011: begin
        ram_data_o = {{8{ram_data_o_4[7]}}, ram_data_o_4, ram_data_o_2, ram_data_o_1};
      end
      4'b1101: begin
        ram_data_o = {{8{ram_data_o_4[7]}}, ram_data_o_4, ram_data_o_3, ram_data_o_1};
      end
      4'b1110: begin
        ram_data_o = {{8{ram_data_o_4[7]}}, ram_data_o_4, ram_data_o_3, ram_data_o_2};
      end
      default: ram_data_o = 32'b0;
    endcase
  end
endmodule
