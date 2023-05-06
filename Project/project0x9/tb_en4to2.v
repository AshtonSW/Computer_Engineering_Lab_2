`timescale 1ns / 1ps

module tb_en4to2;

reg A, B, C, D;
wire E0, E1;

en4to2 mygate(.a(A), .b(B), .c(C), .d(D), .e0(E0), .e1(E1));

initial begin
A = 1'b1;
B = 1'b1;
C = 1'b1;
D = 1'b1;
end

always @(A or B or C or D) begin
A <= #10 ~A;
B <= #15 ~B;
C <= #20 ~C;
D <= #30 ~D;
end

initial begin
    #1000;
    $finish;
end

endmodule
