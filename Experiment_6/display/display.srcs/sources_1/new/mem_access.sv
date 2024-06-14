`timescale 1ns / 1ns

`include "define.svh"
module mem(
    input logic we_i,
    input logic [4:0] waddr_i,
    input logic [31:0] wdata_i,
    
    input logic [3:0] mem_op,
    input logic [31:0] mem_addr_i,
    input logic [31:0] mem_data_i,
    
    output logic we_o,
    output logic [4:0] waddr_o,
    output logic [31:0] wdata_o,
    
    output logic [31:0] mem_addr_o,
    output logic [31:0] mem_data_o,
    output logic [3:0] mem_sel_n,
    output logic mem_ce_o,
    output logic mem_we_o,
    input logic [31:0] ram_data_i
    );
always_comb begin
    we_o = we_i;
    waddr_o = waddr_i;
    case(mem_op)
        `MEM_LB: begin
            wdata_o = ram_data_i;
            mem_addr_o = mem_addr_i;
            mem_data_o =`ZeroWord;
            mem_ce_o =`ChipEnable;
            mem_we_o =`WriteDisable;
            case(mem_addr_i[1:0])
                2'b00: begin
                    mem_sel_n=4'b0001;
                end
                2'b01: begin
                    mem_sel_n=4'b0010;
                end
                2'b10: begin
                    mem_sel_n=4'b0100;
                end
                2'b11: begin
                    mem_sel_n=4'b1000;
                end
                default: begin
                    mem_sel_n=4'b0000;
                end
            endcase
        end
        `MEM_LW: begin
            wdata_o = ram_data_i;
            mem_addr_o = mem_addr_i;
            mem_data_o =`ZeroWord;
            mem_ce_o =`ChipEnable;
            mem_we_o =`WriteDisable;
            mem_sel_n=4'b1111;
        end
        `MEM_SB: begin
            wdata_o = `ZeroWord;
            mem_addr_o = mem_addr_i;
            mem_data_o = {4{mem_data_i[7:0]}};
            mem_ce_o =`ChipEnable;
            mem_we_o =`WriteEnable;
            case(mem_addr_i[1:0])
                2'b00: begin
                    mem_sel_n=4'b0001;
                end
                2'b01: begin
                    mem_sel_n=4'b0010;
                end
                2'b10: begin
                    mem_sel_n=4'b0100;
                end
                2'b11: begin
                    mem_sel_n=4'b1000;
                end
                default: begin
                    mem_sel_n=4'b0000;
                end
            endcase
        end
        `MEM_SW: begin
            wdata_o = `ZeroWord;
            mem_addr_o = mem_addr_i;
            mem_data_o = mem_data_i;
            mem_ce_o =`ChipEnable;
            mem_we_o =`WriteEnable;
            mem_sel_n = 4'b1111;
        end
        default: begin
            wdata_o = wdata_i;
            mem_addr_o = `ZeroWord;
            mem_data_o = `ZeroWord;
            mem_ce_o =`ChipDisable;
            mem_we_o =`WriteDisable;
            mem_sel_n = 4'b0000;
        end
    endcase
end
endmodule
