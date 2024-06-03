`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/31 08:59:49
// Design Name: 
// Module Name: pc
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

module pc(
    input logic clk,
    input logic rst,
    output logic [31:0] pc,
    input logic branch_flag_i,
    input logic [31:0] branch_address_i,
    output logic iswrite
    );
    logic [2:0] count;
always_ff @(posedge clk) begin
    if (rst == `RstEnable) begin
        count <=3'b000;
    end
    else begin
        if (count == 3'b100) begin
            count <= 3'b000;
        end
        else begin
            count <= count + 1'b1;
        end
    end
end
always_ff @(posedge clk) begin
    if(rst == `RstEnable) begin
        pc <= `ZeroWord;
    end
    else begin
        if (count == 3'b100) begin
            iswrite <= 1'b1;
            if (branch_flag_i == 1'b1) begin
                pc <= branch_address_i;
            end
            else begin
                pc <= pc + 4'h4;
            end
        end
        else begin
            iswrite <= 1'b0;
        end
    end
end
endmodule
