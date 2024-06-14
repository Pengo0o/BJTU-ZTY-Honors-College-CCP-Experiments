`timescale 1ns / 1ns

`include "define.svh"

module micro_cpu(
    input logic clk,
    input logic rst,
    input logic [31:0] inst,
    output logic [31:0] res,
    input logic [31:0] ram_data_i,
    output logic [31:0] ram_data_o,
    output logic [31:0] ram_addr_o,
    output logic ram_we_o,
    output logic [3:0] ram_sel_n,
    output logic ram_ce_o,
    output logic [31:0] rom_addr_o
);
    logic [31:0][31:0] regs;
    logic [31:0] inst_o;
    logic [5:0] aluop;
    logic [4:0] waddr;
    logic [4:0] waddr_o;
    logic [4:0] waddr_o2;
    logic we;
    logic we_o;
    logic we_o2;
    logic [31:0] rdata_1;
    logic [31:0] rdata_2;
    logic [4:0] raddr_1;
    logic [4:0] raddr_2;
    logic [31:0] reg_1;
    logic [31:0] reg_2;
    logic [31:0] wdata;
    logic re_1;
    logic re_2;
    logic [31:0] mem_addr;
    logic [31:0] mem_data;
    logic [3:0] mem_op;
    logic [31:0] pc;
    logic branch_flag;
    logic [31:0] branch_address;
    logic iswrite;
    assign rom_addr_o = pc;
    pc PC(
        .clk(clk),
        .rst(rst),
        .pc(pc),
        .branch_flag_i(branch_flag),
        .branch_address_i(branch_address),
        .iswrite(iswrite)
    );
    inst_dec DECODE(
        .rdata_1(rdata_1),
        .rdata_2(rdata_2),
        .inst(inst),
        .inst_o(inst_o),
        .raddr_1(raddr_1),
        .raddr_2(raddr_2),
        .re_1(re_1),
        .re_2(re_2),
        .aluop(aluop),
        .reg_1(reg_1),
        .reg_2(reg_2),
        .waddr(waddr),
        .we(we),
        .id_pc(pc),
        .branch_flag_o(branch_flag),
        .branch_address_o(branch_address)
    );
    
    regfile REGS(
        .rst(rst),
        .clk(clk),
        .we(we_o2 & iswrite),
        .waddr(waddr_o2),
        .wdata(res),
        .re_1(re_1),
        .re_2(re_2),
        .raddr_1(raddr_1),
        .raddr_2(raddr_2),
        .rdata_1(rdata_1),
        .rdata_2(rdata_2),
        .rin(regs),
        .rout(regs)
    );
    
    alu ALU(
        .reg_1(reg_1),
        .reg_2(reg_2),
        .aluop(aluop),
        .res(wdata),
        .waddr(waddr),
        .we(we),
        .waddr_o(waddr_o),
        .we_o(we_o),
        .inst(inst_o),
        .mem_op(mem_op),
        .mem_addr_o(mem_addr),
        .mem_data_o(mem_data)
    );
    
    mem MEM(
        .we_i(we_o),
        .waddr_i(waddr_o),
        .wdata_i(wdata),
        .mem_op(mem_op),
        .mem_addr_i(mem_addr),
        .mem_data_i(mem_data),
        .we_o(we_o2),
        .waddr_o(waddr_o2),
        .wdata_o(res),
        .mem_addr_o(ram_addr_o),
        .mem_data_o(ram_data_o),
        .mem_sel_n(ram_sel_n),
        .mem_ce_o(ram_ce_o),
        .mem_we_o(ram_we_o),
        .ram_data_i(ram_data_i)
    );
endmodule
