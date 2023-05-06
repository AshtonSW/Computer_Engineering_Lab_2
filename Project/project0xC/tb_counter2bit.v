`timescale 1ns / 1ps

module tb_counter2bit;

reg clk, rst;
wire[1:0] out;

counter2bit mygate(clk, rst, out);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always clk = #10 ~clk;

initial rst <= #200 ~rst;


endmodule