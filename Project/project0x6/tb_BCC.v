`timescale 1ns / 1ps

module tb_BCC;
reg A,B,C,D;
wire P,Q,R,S;

BCC BCCGATE(.a(A), .b(B), .c(C), .d(D), .p(P), .q(Q), .r(R), .s(S));

initial begin
A = 1'b0;
B = 1'b0;
C = 1'b0;
D = 1'b0;
end

always begin
A = #10 ~A;
B = #10 ~B;
C = #10 ~C;
D = #10 ~D;
end

initial begin
    #1000
    $finish;
end
endmodule
