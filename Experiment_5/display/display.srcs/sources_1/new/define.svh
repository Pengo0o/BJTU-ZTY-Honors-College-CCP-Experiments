
//全局宏定义  
`define     RstEnable       1'b1            //复位使能  
`define     RstDisable      1'b0            //复位除能  
`define     WriteEnable     1'b1            //写使能  
`define     WriteEnable_n   1'b0            //写使能低有效  
`define     WriteDisable    1'b0            //写除能  
`define     WriteDisable_n  1'b1            //写除能高有效  
`define     ReadEnable      1'b1            //读使能  
`define     ReadDisable     1'b0            //读除能  
`define     ChipEnable      1'b1            //芯片使能  
`define     ChipDisable     1'b0            //芯片禁止  
`define     Branch          1'b1
`define     NotBranch       1'b0
`define     ZeroWord        32'h00000000    //全0  
`define     NOPRegAddr      5'b00000        //空操作使用的寄存器地址  
  
//具体操作码  
`define     OP_SPECIAL   6'b000000       // SPECIAL指令  
`define     OP_JUMP      6'b000001       //其他跳转类型的指令
  
//算数运算  
`define     OP_ADDI         6'b001000       // ADDI  
`define     OP_ADDIU        6'b001001       // ADDIU  
`define     OP_SLTI         6'b001010       // SLTI
`define     OP_MUL          6'b011100       // MUL
  
//逻辑运算  
`define     OP_ANDI         6'b001100       // ANDI  
`define     OP_LUI          6'b001111       // LUI  
`define     OP_ORI          6'b001101       // ORI 
`define     OP_XORI         6'b001110       // XORI 
  
//具体功能  
//算数  
`define     ADD_FUNC        6'b100000       // ADD  
`define     ADDU_FUNC       6'b100001       // ADDU  
`define     SUB_FUNC        6'b100010       // SUB  
`define     SLT_FUNC        6'b101010       // SLT
`define     SLTU_FUNC       6'b101011       // SLTU
`define     MUL_FUNC        6'b000010       // MUL
  
//逻辑运算  
`define     AND_FUNC        6'b100100       // AND  
`define     OR_FUNC         6'b100101       // OR
`define     XOR_FUNC        6'b100110       // XOR

//移位指令
`define     SLL_FUNC        6'b000000       // SLL
`define     SLLV_FUNC       6'b000100       // SLLV
`define     SRA_FUNC        6'b000011       // SRA
`define     SRAV_FUNC       6'b000111       // SRAV
`define     SRL_FUNC        6'b000010       // SRL
`define     SRLV_FUNC       6'b000110       // SRLV  
 
 //跳转指令
`define     OP_BEQ          6'b000100       // BEQ
`define     OP_BNE          6'b000101       // BNE
`define     OP_BGTZ         6'b000111       // BGTZ
`define     OP_BLEZ         6'b000110       // BLEZ
`define     OP_J            6'b000010       // J

`define     BGEZ_RT         5'b00001        // BGEZ
`define     BLTZ_RT         5'b00000        // BLTZ
 
//存取数的指令  
`define     OP_LB           6'b100000       // LB  
`define     OP_LW           6'b100011       // LW  
`define     OP_SB           6'b101000       // SB  
`define     OP_SW           6'b101011       // SW  
  
//执行阶段的操作  
`define     EXE_NOP      6'b000000       // 空操作  
`define     EXE_AND      6'b000001       // 与  
`define     EXE_OR       6'b000010       // 或  
`define     EXE_XOR      6'b000011       // 异或  
`define     EXE_NOR      6'b000100       // 或非  
`define     EXE_SLL      6'b000101       // 逻辑左移  
`define     EXE_SRL      6'b000110       // 逻辑右移  
`define     EXE_SRA      6'b000111       // 算数右移  
`define     EXE_SLT      6'b001000       // 小于置位  
`define     EXE_SLTU     6'b001001       // 无符号小于  
`define     EXE_ADD      6'b001010       // 加法  
`define     EXE_SUB      6'b001011       // 减法  
`define     EXE_MUL      6'b001100       // 乘法  
  
`define     EXE_LB       6'b001110       // LB  
`define     EXE_LW       6'b001111       // LW  
`define     EXE_SB       6'b010000       // SB  
`define     EXE_SW       6'b010001       // SW  
  
//访存阶段的操作  
`define     MEM_NOP      4'b0000         // NOP  
`define     MEM_LB       4'b0001         // LB  
`define     MEM_LW       4'b0010         // LW  
`define     MEM_SB       4'b0011         // SB  
`define     MEM_SW       4'b0100         // SW  