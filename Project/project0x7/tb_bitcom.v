`timescale 1ns / 1ps


module tb_bitcom;
reg A, B, C, D;
wire F1, F2, F3;

bitcom mybitcom(.a(A), .b(B), .c(C), .d(D), .f1(F1), .f2(F2), .f3(F3));

initial begin
A =1'b0;
B =1'b0;
C =1'b0;
D =1'b0;
end

always @(A or B or C or D) begin
A <= #20 ~A;
B <= #40 ~B;
C <= #70 ~C;
D <= #200 ~D;
end

initial begin
    #1000
    $finish;
end

endmodule
