`timescale 1ns / 1ps

module tb_bcdtodecidec;

reg A, B, C, D;
wire D0, D1, D2, D3, D4, D5, D6, D7, D8;

bcdtodecidec mygate(.a(A), .b(B), .c(C), .d(D), .d0(D0), .d1(D1)
, .d2(D2), .d3(D3)
, .d4(D4), .d5(D5)
, .d6(D6), .d7(D7)
, .d8(D8));

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
