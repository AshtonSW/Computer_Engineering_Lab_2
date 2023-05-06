`timescale 1ns / 1ps


module tb_seg7;
reg A,B,C,D;
wire outA, outB, outC, outD, outE, outF, outG, outDP, Digit;

seg7 mygate(.a(A), .b(B), .c(C), .d(D), .outa(outA), .outb(outB), .outc(outC), .outd(outD), .oute(outE), .outf(outF), .outg(outG), .outdp(outDP), .digit(Digit));

initial begin
A = 1'b0;
B = 1'b0;
C = 1'b0;
D = 1'b0;
end

always@(A or B or C or D)begin
A <= #7 ~A;
B <= #11 ~B;
C <= #17 ~C;
D <= #19 ~D;
end

initial begin
    #1000
    $finish;
end

endmodule
