`timescale 1ns / 1ps


module tb_pbg;
reg A, B, C, D;
wire E;

pbg mypbg(.a(A), .b(B), .c(C), .d(D), .e(E));

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
