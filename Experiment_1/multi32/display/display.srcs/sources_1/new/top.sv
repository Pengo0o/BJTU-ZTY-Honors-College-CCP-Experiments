`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 22:56:23
// Design Name: 
// Module Name: top
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

module adder(
    input logic a,
    input logic b,
    input logic cin,
    output logic s,
    output logic cout
    );
    assign s = ((~a)&(~b)&cin)|((~a)&b&(~cin))|(a&(~b)&(~cin))|(a&b&cin);
    assign cout = (b&cin)|(a&b)|(a&cin);
endmodule


module multipler32( //阵列乘法器：绝对值A、B两数相乘，及|A*B|原 = |A|原*|B|原
    input logic [31:0] a, //乘数
    input logic [31:0] b, //被乘数
    output logic [63:0] p //乘积
    );
    
    logic [31:0][30:0] sum, c;
    
    assign p[0] = a[0] & b[0];
     
    for(genvar i = 0; i < 31; i++)begin
        adder ADD(a[i+1] & b[0], a[i] & b[1], 0, sum[0][i], c[0][i]);
    end
    
    
    for(genvar j = 1; j < 31; j++)begin
        assign p[j] = sum[j-1][0];
        for(genvar i = 0; i < 30; i++)begin
            adder ADD(sum[j-1][i+1], a[i] & b[j+1], c[j-1][i], sum[j][i], c[j][i]);
        end
        adder ADD(a[31] & b[j], a[30] & b[j+1], c[j-1][30], sum[j][30], c[j][30]);
    end
    
    
    assign p[31] = sum[30][0];
    adder ADD31_0(sum[30][1], c[30][0], 0, sum[31][0], c[31][0]);
    assign p[32] = sum[31][0];
    for(genvar i =1; i < 10; i++)begin
        adder ADD(sum[30][i+1], c[30][i], c[31][i-1], sum[31][i], c[31][i]);
        assign p[32+i] = sum[31][i];
    end
    adder ADD31_30(a[31] & b[31], c[30][30], c[31][29], sum[31][30], c[31][30]);
    
endmodule


module multipleAB32( //32位补码乘法
    input logic [31:0] a, //乘数
    input logic [31:0] b, //被乘数
    output logic [31:0] c//乘积
    //output logic [31:0] cout
    );
    logic [31:0] abs_a;
    logic [31:0] abs_b;
    logic [31:0] p;
    always_comb begin
        if(a[31] == 1'b1)begin
            abs_a[30:0] = (~a[30:0]) + 1'b1;
            abs_a[31] = 1'b0;
        end
        else begin
            abs_a = a;
        end
    end
    
    always_comb begin
        if(b[31] == 1'b1)begin
            abs_b[30:0] = (~b[30:0]) + 1'b1;
            abs_b[31] = 1'b0;
        end
        else begin
            abs_b = b;
        end
    end
    
    assign c[31] = a[31]^b[31];
    multipler32 multipler32(
        .a(abs_a),
        .b(abs_b),
        .p(p)
        );
    always_comb begin
        if(c[31] == 1'b1)begin
            c[30:0] = (~p[30:0]) + 1'b1;
        end
        else begin
            c[30:0]=p[30:0];
        end
    end
      
endmodule


module top(
    input logic sysclk_p,
    input logic sysclk_n,
    input logic [31:0] a,
    input logic [31:0] b,
    //input logic key,
    //output logic [1:0]led,
    output logic [6:0]seg1,
    output logic [6:0]seg2,
    output logic [6:0]seg3,
    output logic [6:0]seg4,
    output logic [7:0]ans
    );
    logic [31:0] p;
    logic clk;
    logic clk_10;
    logic locked;
    
    clk_wiz_0 instance_name
   (
       // Clock out ports
      .clk_out1(clk),     // output clk_out1
      .clk_out2(clk_10),
      .locked(locked),
      // Status and control signals
      .reset(1'b0), // input reset
      // Clock in ports
     .clk_in1_p(sysclk_p),    // input clk_in1_p
     .clk_in1_n(sysclk_n)
    );    // input clk_in1_n
    
//    multipler32 multipler32(
//        .a(a),
//        .b(b),
//        .p(p)
//    );

    multipleAB32 multipleAB32(
        .a(a),
        .b(b),
        .c(p)
    );
 
    display DIS(
        clk,
        1'b0,
        p,
        seg1, seg2, seg3, seg4, ans
    );
    
endmodule
