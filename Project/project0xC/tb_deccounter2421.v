`timescale 1ns / 1ps

module tb_deccounter2421;

reg clk, rst;
wire[3:0] out;

deccounter2421 mygate(clk, rst, out);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always clk = #10 ~clk;

initial rst <= #600 ~rst;


endmodule
