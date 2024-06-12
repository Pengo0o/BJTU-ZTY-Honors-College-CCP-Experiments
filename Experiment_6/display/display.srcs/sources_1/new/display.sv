`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/11 20:41:38
// Design Name: 
// Module Name: display
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
module display(
    input logic clk,
    input logic rst,
    input logic [31:0] s,
    output logic [6:0] seg1,
    output logic [6:0] seg2,
    output logic [6:0] seg3,
    output logic [6:0] seg4,
    output logic [7:0] ans
    );
    logic [16:0] count;
    logic [3:0] digit1;
    logic [3:0] digit2;
    logic [3:0] digit3;
    logic [3:0] digit4; 
 
always_ff @(posedge clk)
    if(rst)  
        count <= 0;
    else 
        count <= count + 1'b1;

always_ff @(posedge clk)
    case(count[16])
        1'b0:begin
            ans <= 8'b10101010;
            digit1 <= s[3:0];
            digit2 <= s[11:8];
            digit3 <= s[19:16];
            digit4 <= s[27:24];
        end
        
        1'b1:begin
            ans <= 8'b01010101;
            digit1 <= s[7:4];
            digit2 <= s[15:12];
            digit3 <= s[23:20];
            digit4 <= s[31:28];
        end
        
        default: begin
            ans <= 8'b10101010;
            digit1 <= s[3:0];
            digit2 <= s[11:8];
            digit3 <= s[19:16];
            digit4 <= s[27:24];
        end
        
    endcase
    
    seg7 SEG1(.din(digit1),.dout(seg1));
    seg7 SEG2(.din(digit2),.dout(seg2));
    seg7 SEG3(.din(digit3),.dout(seg3));
    seg7 SEG4(.din(digit4),.dout(seg4));
endmodule
