`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/02 10:00:27
// Design Name: 
// Module Name: tb_BROM
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


module tb_BROM();
logic clk;
logic [17:0] addra;
logic [31:0] rom_data_o;
rom_bit_extension ROM(
    .clk(clk),
    .addra(addra),
    .rom_data_o(rom_data_o)
);
initial begin
    clk=1'b0;
    forever #5 clk=~clk;
end
initial begin
    addra = 18'b0000_0000_0000_0000_00;
    #10 addra = 18'b0000_0000_0000_0001_00;
    #10 addra = 18'b0000_0000_0000_0010_00;
    #10 addra = 18'b0000_0000_0000_0011_00;
    #10 addra = 18'b0000_0000_0000_0100_00;
    #10 addra = 18'b0000_0000_0000_0101_00;
end
endmodule
