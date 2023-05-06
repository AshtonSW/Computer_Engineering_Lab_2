`timescale 1ns / 1ps

module tb_mux4to1;

reg A, B, C, D, S0, S1;
wire F;

mux4to1 mygate(.a(A), .b(B), .c(C), .d(D), .s0(S0), .s1(S1), .f(F));

initial begin
A = 1'b1;
B = 1'b1;
C = 1'b1;
D = 1'b1;
S0 = 1'b1;
S1 = 1'b1;
end

always @(A or B or C or D or S0 or S1) begin

A <= #10 ~A;
B <= #20 ~B;
C <= #30 ~C;
D <= #50 ~D;
S0 <= #70 ~S0;
S1 <= #90 ~S1;
end

initial begin
    #1000;
    $finish;
end

endmodule
