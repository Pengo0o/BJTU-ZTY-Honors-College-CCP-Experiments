`include "define.vh"
module regfile (
    input logic clk,
    input logic rst,

    input logic we,
    input logic [4:0] waddr,
    input logic [31:0] wdata,

    input logic re_1,
    input logic [4:0] raddr_1,
    output logic [31:0] rdata_1,
    input logic re_2,
    input logic [4:0] raddr_2,
    output logic [31:0] rdata_2
);
  //寄存器
  logic [31:0] regfile[0:31];

  always_ff @(posedge clk)
    if (rst == `RstEnable) begin
      integer j;
      for (j = 0; j < 32; j = j + 1) begin
        regfile[j] <= `ZeroWord;
      end
    end else begin
      if (we == `WriteEnable && waddr != 5'b000000) begin
        regfile[waddr] <= wdata;
      end else begin
        regfile[0] <= `ZeroWord;
      end
    end


  always_comb begin
    if (re_1 == `ReadEnable) begin
      rdata_1 = regfile[raddr_1];
    end else begin
      rdata_1 = `ZeroWord;
    end
  end

  always_comb begin
    if (re_2 == `ReadEnable) begin
      rdata_2 = regfile[raddr_2];
    end else begin
      rdata_2 = `ZeroWord;
    end
  end
endmodule
