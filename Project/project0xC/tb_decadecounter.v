`timescale 1ns / 1ps

module tb_decadecounter;

reg clk, rst;
wire[3:0] out;

decadecounter mygate(clk, rst, out);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always clk = #10 ~clk;

initial rst <= #600 ~rst;


endmodule
