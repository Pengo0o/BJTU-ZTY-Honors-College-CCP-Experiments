`include "define.vh"

module inst_dec (
    input logic [31:0] inst,

    output logic [4:0] raddr_1,
    output logic [4:0] raddr_2,
    output logic re_1,
    output logic re_2,

    input logic [31:0] rdata_1,
    input logic [31:0] rdata_2,

    output logic [5:0] aluop,
    output logic [31:0] reg_1,
    output logic [31:0] reg_2,
    output logic [4:0] waddr,
    output logic we

);

  //指令的各个字段
  logic [ 5:0] op = inst[31:26];
  logic [ 4:0] rs = inst[25:21];
  logic [ 4:0] rt = inst[20:16];
  logic [ 4:0] rd = inst[15:11];
  logic [ 4:0] sa = inst[10:6];
  logic [ 5:0] func = inst[5:0];





  //立即数与立即数扩展
  logic [15:0] imm = inst[15:0];
  logic [31:0] immu = {16'b0, imm};
  logic [31:0] imms = {{16{imm[15]}}, imm};
  logic [31:0] immo = {imm, 16'b0};





  always_comb begin
    if (re_1 == 1'b1) begin
      reg_1 = rdata_1;
    end else begin
      reg_1 = immo;
    end
  end

  always_comb begin
    if (re_2 == 1'b1) begin
      reg_2 = rdata_2;
    end else begin
      reg_2 = immo;
    end
  end
  //无操作
  always_comb begin
    aluop = `EXE_NOP;
    re_1 = `ReadDisable;
    raddr_1 = rs;
    re_2 = `ReadDisable;
    raddr_2 = rt;
    we = `WriteDisable;
    waddr = rd;
    immo = `ZeroWord;

    case (op)
      //加立即数
      `OP_ADDI: begin
        aluop = `EXE_ADD;
        re_1 = `ReadEnable;
        re_2 = `ReadDisable;
        we = `WriteEnable;
        immo = imms;
      end
      //加无符号立即数
      // `OP_ADDIU: begin
      //     aluop = `EXE_ADD;
      //     re_1 = `ReadEnable;
      //     re_2 = `ReadEnable;
      //     we = `WriteEnable;
      //     immo = immu;
      // end
      //加无符号立即数
      `OP_LUI: begin
        aluop = `EXE_OR;
        re_1 = `ReadEnable;
        re_2 = `ReadDisable;
        we = `WriteEnable;
        waddr = rt;
        immo = {imm, 16'b0};
      end
      //其他功能
      `OP_SPECIAL: begin
        if (sa == 5'b00000)
          case (func)
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
    endcase
  end
endmodule





