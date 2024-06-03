`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 21:20:58
// Design Name: 
// Module Name: inst_dec
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
module inst_dec(
    input logic [31:0] inst,
    output logic [31:0] inst_o,
    output logic [4:0] raddr_1,
    output logic re_1,
    output logic [4:0] raddr_2,
    output logic re_2,
    
    input logic [31:0] rdata_1,
    input logic [31:0] rdata_2,
    
    output logic [5:0] aluop,
    output logic [31:0] reg_1,
    output logic [31:0] reg_2,
    output logic [4:0] waddr,
    output logic we,
    
    input logic [31:0] id_pc,
    output logic branch_flag_o,
    output logic [31:0] branch_address_o
    );
logic [5:0] op;
logic [4:0] rs;
logic [4:0] rt;
logic [4:0] rd;
logic [4:0] sa;
logic [5:0] func;
logic [25:0] inst_index;
logic [31:0] next_pc;
logic [31:0] jump_addr;
logic [31:0] branch_addr;
assign inst_o=inst;
assign op=inst[31:26];
assign rs=inst[25:21];
assign rt=inst[20:16];
assign rd=inst[15:11];
assign sa=inst[10:6];
assign func=inst[5:0];
assign inst_index = inst[25:0];
assign next_pc = id_pc + 4'h4;
assign jump_addr = {next_pc[31:28], inst_index, 2'b00};
logic [15:0] imm;
assign imm = inst[15:0];
logic [31:0] immu;
assign immu = {{16{1'b0}},imm};
logic [31:0] imms;
assign imms = {{16{imm[15]}},imm};
logic [31:0] immo;
assign branch_addr = next_pc + {imms[29:0], 2'b00};
always_comb begin
    aluop = `EXE_NOP;
    re_1 = `ReadDisable;
    raddr_1 = rs;
    re_2 = `ReadDisable;
    raddr_2 = rt;
    we = `WriteDisable;
    waddr = rd;
    immo = `ZeroWord;
    case(op)
        `OP_LUI: begin
            aluop = `EXE_OR;
            re_1 = `ReadEnable;
            re_2 = `ReadDisable;
            we = `WriteEnable;
            waddr = rt;
            immo = {imm,16'h0000};
        end
        `OP_ADDI: begin
            aluop = `EXE_ADD;
            re_1 = `ReadEnable;
            re_2 = `ReadDisable;
            we = `WriteEnable;
            waddr = rt;
            immo = imms;
        end
        `OP_SPECIAL: begin
            if(sa == 5'b00000) begin
                case(func)
                    `ADD_FUNC: begin
                        aluop = `EXE_ADD;
                        re_1 = `ReadEnable;
                        re_2 = `ReadEnable;
                        we = `WriteEnable;
                    end
                    `AND_FUNC: begin
                        aluop = `EXE_AND;
                        re_1 = `ReadEnable;
                        re_2 = `ReadEnable;
                        we = `WriteEnable;
                    end
                    `OR_FUNC: begin
                        aluop = `EXE_OR;
                        re_1 = `ReadEnable;
                        re_2 = `ReadEnable;
                        we = `WriteEnable;
                    end
                endcase
            end
        end
        `OP_LB: begin
            aluop = `EXE_LB;
            re_1 = `ReadEnable;
            re_2 = `ReadDisable;
            we = `WriteEnable;
            waddr = rt;
            immo = imms;
        end
        `OP_LW: begin
            aluop = `EXE_LW;
            re_1 = `ReadEnable;
            re_2 = `ReadDisable;
            we = `WriteEnable;
            waddr = rt;
            immo = imms;
        end
        `OP_SB: begin
            aluop = `EXE_SB;
            re_1 = `ReadEnable;
            re_2 = `ReadEnable;
            we = `WriteDisable;
        end
        `OP_SW: begin
            aluop = `EXE_SW;
            re_1 = `ReadEnable;
            re_2 = `ReadEnable;
            we = `WriteDisable;
        end
        `OP_BEQ: begin
            re_1 = `ReadEnable;
            re_2 = `ReadEnable;
            we = `WriteDisable;
        end
        `OP_BNE: begin
            re_1 = `ReadEnable;
            re_2 = `ReadEnable;
            we = `WriteDisable;
        end
        `OP_BLEZ: begin
            re_1 = `ReadEnable;
            re_2 = `ReadDisable;
            we = `WriteDisable;
        end
        `OP_J: begin
            re_1 = `ReadDisable;
            re_2 = `ReadDisable;
            we = `WriteDisable;
        end
        `OP_BGTZ: begin
            re_1 = `ReadEnable;
            re_2 = `ReadDisable;
            we = `WriteDisable;
        end
    endcase
end
always_comb begin
    if(re_1 == `ReadEnable) begin
        reg_1 = rdata_1;
    end
    else begin
        reg_1 = immo;
    end
end
always_comb begin
    if(re_2 == `ReadEnable) begin
        reg_2 = rdata_2;
    end
    else begin
        reg_2 = immo;
    end
end
always_comb begin
    branch_flag_o = `NotBranch;
    branch_address_o = `ZeroWord;
    case(op)
        `OP_BEQ: begin
            if(reg_1 == reg_2) begin
                branch_flag_o = `Branch;
                branch_address_o = branch_addr;
            end
        end
        `OP_BNE: begin
            if(reg_1 != reg_2) begin
                branch_flag_o = `Branch;
                branch_address_o = branch_addr;
            end
        end
        `OP_BGTZ: begin
            if(reg_1[31] == 1'b0 && reg_1 != `ZeroWord) begin
                branch_flag_o = `Branch;
                branch_address_o = branch_addr;
            end
        end
        `OP_BLEZ: begin
            if(reg_1[31] == 1'b1 || reg_1 == `ZeroWord) begin
                branch_flag_o = `Branch;
                branch_address_o = branch_addr;
            end
        end
        `OP_J: begin
            if(reg_1 == reg_2) begin
                branch_flag_o = `Branch;
                branch_address_o = jump_addr;
            end
        end
    endcase
end
endmodule
