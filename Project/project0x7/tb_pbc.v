`timescale 1ns / 1ps


module tb_pbc;
reg A, B, C, D, P;
wire PEC;

pbc mypbc(.a(A), .b(B), .c(C), .d(D), .p(P), .pec(PEC));

initial begin
A =1'b0;
B =1'b0;
C =1'b0;
D =1'b0;
P =1'b0;
end

always @(A or B or C or D) begin
A <= #20 ~A;
B <= #40 ~B;
C <= #70 ~C;
D <= #200 ~D;
P <= #500 ~P;
end

initial begin
    #1000
    $finish;
end

endmodule
