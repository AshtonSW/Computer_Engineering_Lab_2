`timescale 1ns / 1ps

module tb_AOI4in3out;

reg A, B, C, D;
wire E, F, G;

AOI4in3out mygate(.a(A), .b(B), .c(C), .d(D), .e(E), .f(F), .g(G));

initial begin
A = 1'b1;
B = 1'b0;
C = 1'b0;
D = 1'b1;
end

always begin
A = #10 ~A;
B = #12 ~B;
C = #14 ~C;
D = #16 ~D;
    end

initial begin
    #1000
    $finish;
end

endmodule
