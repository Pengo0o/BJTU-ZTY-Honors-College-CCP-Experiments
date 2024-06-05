`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/18 20:53:50
// Design Name: 
// Module Name: BRAM
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



module word_extension(
    input logic clk,
    input logic [7:0] ram_data_i,
    output logic [7:0] ram_data_o,
    input logic [15:0] ram_addr_i,
    input logic wea,
    input logic ram_ce
);
logic [3:0] ram_ce_sel;
logic [7:0] ram_data_o_1;
logic [7:0] ram_data_o_2;
logic [7:0] ram_data_o_3;
logic [7:0] ram_data_o_4;
always_comb begin
    case (ram_addr_i[15:14])
        2'b00: begin
            ram_ce_sel = 4'b0001;
            ram_data_o = ram_data_o_1;
        end
        2'b01: begin
            ram_ce_sel = 4'b0010;
            ram_data_o = ram_data_o_2;
        end
        2'b10: begin
            ram_ce_sel = 4'b0100;
            ram_data_o = ram_data_o_3;
        end
        2'b11: begin
            ram_ce_sel = 4'b1000;
            ram_data_o = ram_data_o_4;
        end
        default: begin
            ram_ce_sel = 4'b0000;
            ram_data_o = 8'b0;
        end
    endcase
end
width8_addra14 RAM_word_extensionl (
    .clka(clk),
    .ena(ram_ce_sel[0] & ram_ce),
    .wea(wea),
    .addra(ram_addr_i[13:0]),
    .dina(ram_data_i),
    .douta(ram_data_o_1)
);
width8_addra14 RAM_word_extension2 (
    .clka(clk),
    .ena(ram_ce_sel[1] & ram_ce),
    .wea(wea),
    .addra(ram_addr_i[13:0]),
    .dina(ram_data_i),
    .douta(ram_data_o_2)
);
width8_addra14 RAM_word_extension3 (
    .clka(clk),
    .ena(ram_ce_sel[2] & ram_ce),
    .wea(wea),
    .addra(ram_addr_i[13:0]),
    .dina(ram_data_i),
    .douta(ram_data_o_3)
);
width8_addra14 RAM_word_extension4 (
    .clka(clk),
    .ena(ram_ce_sel[3] & ram_ce),
    .wea(wea),
    .addra(ram_addr_i[13:0]),
    .dina(ram_data_i),
    .douta(ram_data_o_4)
);
endmodule
