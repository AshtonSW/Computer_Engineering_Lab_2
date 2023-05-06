`timescale 1ns / 1ps

module tb_RSflipflop;
reg S, R, CLK;
wire Q1, Q2;

RSflipflop tb_RSflipflop(.s(S), .r(R), .clk(CLK), .q1(Q1), .q2(Q2));

initial begin
CLK = 1'b1;
R = 1'b0;
S = 1'b1;
end

always begin
CLK = #50 ~CLK;
R = #50 ~R;
S = #50 ~S;
end
endmodule
