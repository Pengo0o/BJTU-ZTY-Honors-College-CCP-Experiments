`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/02 11:04:58
// Design Name: 
// Module Name: tb_pc
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
`include "define.svh"

module tb_pc(

    );
logic clk;
logic rst;
logic [31:0] pc;
logic branch_flag_i;
logic [31:0] branch_address_i;
logic iswrite;
pc PC(
    .clk(clk),
    .rst(rst),
    .pc(pc),
    .branch_flag_i(branch_flag_i),
    .branch_address_i(branch_address_i),
    .iswrite(iswrite)
);
initial begin
    clk=1'b0;
    forever #5 clk=~clk;
end
initial begin
    rst=1'b1;
    #10
    rst=1'b0;
    #40
    branch_flag_i = `NotBranch;
    branch_address_i = `ZeroWord;
    #40
    branch_flag_i = `Branch;
    branch_address_i = 32'h12345678;
    #40
    branch_flag_i = `NotBranch;
    branch_address_i = `ZeroWord;
end
endmodule
