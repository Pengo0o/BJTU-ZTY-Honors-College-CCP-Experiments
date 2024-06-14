`timescale 1ns / 1ns

module rom_bit_extension(
    input logic clk,
    input logic [17:0] addra,
    output logic [31:0] rom_data_o
    );
    
    logic [7:0] rom_data_0;
    logic [7:0] rom_data_1;
    logic [7:0] rom_data_2;
    logic [7:0] rom_data_3;
    logic [15:0] addr;
    
    assign addr = addra[17:2];
    assign rom_data_o = {rom_data_0,rom_data_1,rom_data_2,rom_data_3};
    
    rom0_width8_addra16 ROM0(
        .clka(clk),
        .addra(addr),
        .douta(rom_data_0)
    );
    rom1_width8_addra16 ROM1(
        .clka(clk),
        .addra(addr),
        .douta(rom_data_1)
    );
    rom2_width8_addra16 ROM2(
        .clka(clk),
        .addra(addr),
        .douta(rom_data_2)
    );
    rom3_width8_addra16 ROM3(
        .clka(clk),
        .addra(addr),
        .douta(rom_data_3)
    );
endmodule
