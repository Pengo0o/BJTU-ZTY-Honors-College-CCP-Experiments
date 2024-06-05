`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/31 09:43:04
// Design Name: 
// Module Name: tb_inst_dec
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


module tb_inst_dec(
    );
 // ÊäÈëÐÅºÅ
    logic [31:0] inst;
    logic [31:0] rdata_1;
    logic [31:0] rdata_2;

    // Êä³öÐÅºÅ
    logic [4:0] raddr_1;
    logic re_1;
    logic [4:0] raddr_2;
    logic re_2;
    logic [5:0] aluop;
    logic [31:0] reg_1;
    logic [31:0] reg_2;
    logic [4:0] waddr;
    logic we;
    logic [31:0] inst_o;
    logic [31:0] id_pc;
    logic branch_flag_o;
    logic [31:0] branch_address_o;
    // ÊµÀý»¯ inst_dec Ä£¿é
    inst_dec decode (
        .inst(inst),
        .inst_o(inst_o),
        .raddr_1(raddr_1),
        .re_1(re_1),
        .raddr_2(raddr_2),
        .re_2(re_2),
        .rdata_1(rdata_1),
        .rdata_2(rdata_2),
        .aluop(aluop),
        .reg_1(reg_1),
        .reg_2(reg_2),
        .waddr(waddr),
        .we(we),
        .id_pc(id_pc),
        .branch_flag_o(branch_flag_o),
        .branch_address_o(branch_address_o)
    );

    initial begin
        // BEQ ²Ù×÷²âÊÔ
        inst = 32'b000100_00001_00010_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'h00000001;
        rdata_2 = 32'h00000001;
        #10
        inst = 32'b000100_00001_00010_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'h00000001;
        rdata_2 = 32'h00000002;
        #10
        // BNE ²Ù×÷²âÊÔ
        inst = 32'b000101_00001_00010_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'h00000001;
        rdata_2 = 32'h00000001;
        #10
        inst = 32'b000101_00001_00010_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'h00000001;
        rdata_2 = 32'h00000000;
        #10
        // BGTZ ²Ù×÷²âÊÔ
        inst = 32'b000111_00001_00000_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'h00000001;
        rdata_2 = 32'h00000000;
        #10
        inst = 32'b000111_00001_00000_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'hFFFFFFFF;
        rdata_2 = 32'h00000000;
        #10
        inst = 32'b000111_00001_00000_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'h00000000;
        rdata_2 = 32'h00000000;
        #10
        // BLEZ ²Ù×÷²âÊÔ
        inst = 32'b000110_00001_00000_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'h00000001;
        rdata_2 = 32'h00000000;
        #10
        inst = 32'b000110_00001_00000_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'hFFFFFFFF;
        rdata_2 = 32'h00000000;
        #10
        inst = 32'b000110_00001_00000_1111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'h00000000;
        rdata_2 = 32'h00000000;
        #10
        // J ²Ù×÷²âÊÔ
        inst = 32'b000010_11111111111111111111111111;
        id_pc = 32'h00000004;
        rdata_1 = 32'h00000000;
        rdata_2 = 32'h00000000;
    end
endmodule