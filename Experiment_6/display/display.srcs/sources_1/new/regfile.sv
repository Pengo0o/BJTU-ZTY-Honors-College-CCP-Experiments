`timescale 1ns / 1ns

`include "define.svh"
module regfile(
    input logic clk,
    input logic rst,
    
    input logic we,
    input logic[4:0] waddr,
    input logic[31:0] wdata,
    
    input logic re_1,
    input logic[4:0] raddr_1,
    output logic[31:0] rdata_1,
    input logic re_2,
    input logic[4:0] raddr_2,
    output logic[31:0] rdata_2,
    input logic [31:0][31:0] rin,
    output logic [31:0][31:0] rout
    );
assign rout = rin;
always_comb begin
    if(re_1 == `ReadEnable) begin
        rdata_1 = rin[raddr_1];
    end
    else begin
        rdata_1 = `ZeroWord;
    end
end
always_comb begin
    if(re_2 == `ReadEnable) begin
        rdata_2 = rin[raddr_2];
    end
    else begin
        rdata_2 = `ZeroWord;
    end
end 
always_ff @(posedge clk) begin
    if(rst == `RstEnable) begin
        for(int j=0; j<32; j=j+1) begin
            rout[j] <= `ZeroWord;
        end
    end
    else begin
        if(we == `WriteEnable && waddr !=5'b00000)begin
            rout[waddr] <= wdata;
        end
        else begin
            rout[0] <= `ZeroWord;
        end
    end
end  
endmodule
