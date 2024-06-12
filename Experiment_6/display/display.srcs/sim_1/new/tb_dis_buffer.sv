`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/03 18:38:51
// Design Name: 
// Module Name: tb_dis_buffer
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


module tb_dis_buffer(

    );
logic clk;
logic rst;
logic [31:0] ans;
logic [63:0][31:0] data;
logic[5:0] c;
logic is;
dis_buffer DIS_BUF(
    .clk(clk),
    .rst(rst),
    .ans(ans),
    .data_i(data),
    .data_o(data),
    .c(c),
    .is(is)
    );
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end
    initial begin
        rst = 1'b1;
        #10
        rst = 1'b0;
        ans = 32'h00000000;
        #40
        ans = 32'h12345678;
        #50
        ans = 32'h9abcdef0;
        #50
        ans = 32'h00000000;
        #50
        ans = 32'h31415926;
        #50
        rst = 1'b1;
    end
endmodule
