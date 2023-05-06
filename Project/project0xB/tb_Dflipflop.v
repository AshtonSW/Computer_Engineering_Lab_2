`timescale 1ns / 1ps

module tb_Dflipflop;
reg D, CLK;
wire Q1, Q2;

Dflipflop tb_RSflipflop(.d(D), .clk(CLK), .q1(Q1), .q2(Q2));

initial begin
CLK = 1'b1;
D = 1'b0;
end

always begin
CLK = #50 ~CLK;
D = #50 ~D;
end
endmodule
