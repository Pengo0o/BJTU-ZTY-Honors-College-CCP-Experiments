`timescale 1ns / 1ns

module bit_extension(
    input logic clk,
    input logic[31:0] ram_data_i,
    output logic[31:0] ram_data_o,
    input logic[15:0] ram_addr_i,
    input logic[3:0] ram_data_sel,
    input logic wea,
    input logic ram_ce
);

logic [7:0] ram_data_o_1, ram_data_o_2, ram_data_o_3, ram_data_o_4;

word_extension RAM_bit_extensionl (
    .clk(clk),
    .ram_data_i(ram_data_i[7:0]),
    .ram_data_o(ram_data_o_1),
    .ram_addr_i(ram_addr_i),
    .wea(wea),
    .ram_ce(ram_ce & ram_data_sel[0])
);
word_extension RAM_bit_extension2 (
    .clk(clk),
    .ram_data_i(ram_data_i[15:8]),
    .ram_data_o(ram_data_o_2),
    .ram_addr_i(ram_addr_i),
    .wea(wea),
    .ram_ce(ram_ce & ram_data_sel[1])
);
word_extension RAM_bit_extension3 (
    .clk(clk),
    .ram_data_i(ram_data_i[23:16]),
    .ram_data_o(ram_data_o_3),
    .ram_addr_i(ram_addr_i),
    .wea(wea),
    .ram_ce(ram_ce & ram_data_sel[2])
);
word_extension RAM_bit_extension4 (
    .clk(clk),
    .ram_data_i(ram_data_i[31:24]),
    .ram_data_o(ram_data_o_4),
    .ram_addr_i(ram_addr_i),
    .wea(wea),
    .ram_ce(ram_ce & ram_data_sel[3])
);

// 使用 always_comb
always_comb begin
    case (ram_data_sel)
        4'b1111: begin
            ram_data_o = {ram_data_o_4, ram_data_o_3, ram_data_o_2, ram_data_o_1};
        end
        4'b0001: begin
            ram_data_o = {{24{ram_data_o_1[7]}}, ram_data_o_1};
        end
        4'b0010: begin
            ram_data_o = {{24{ram_data_o_2[7]}}, ram_data_o_2};
        end
        4'b0100: begin
            ram_data_o = {{24{ram_data_o_3[7]}}, ram_data_o_3};
        end
        4'b1000: begin
            ram_data_o = {{24{ram_data_o_4[7]}}, ram_data_o_4};
        end
        default: begin
            ram_data_o = 32'b0; // 默认值
        end
    endcase
end

endmodule
