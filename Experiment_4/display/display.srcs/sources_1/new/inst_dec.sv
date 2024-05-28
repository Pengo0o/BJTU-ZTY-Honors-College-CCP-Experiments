`include "define.vh"

module inst_dec (
    input  logic [31:0] inst,
    output logic [31:0] inst_o,

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
  logic [ 5:0] op;
  logic [ 4:0] rs;
  logic [ 4:0] rt;
  logic [ 4:0] rd;
  logic [ 4:0] sa;
  logic [ 5:0] func;
  logic [15:0] imm;

  assign op = inst[31:26];
  assign rs = inst[25:21];
  assign rt = inst[20:16];
  assign rd = inst[15:11];
  assign sa = inst[10:6];
  assign func = inst[5:0];
  assign imm = inst[15:0];
  assign inst_o = inst;



  //立即数与立即数扩展

  logic [31:0] immu;
  logic [31:0] imms;
  logic [31:0] immo;

  always_comb begin
    immu = {16'b0, imm};
    imms = {{16{imm[15]}}, imm};
  end


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
        waddr = rt;
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
          default: begin
            aluop = `EXE_NOP;
            re_1 = `ReadDisable;
            re_2 = `ReadDisable;
            we = `WriteDisable;
          end
        endcase
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
      default: begin
        aluop = `EXE_NOP;
        re_1 = `ReadDisable;
        re_2 = `ReadDisable;
        we = `WriteDisable;
      end
    endcase
  end
endmodule





