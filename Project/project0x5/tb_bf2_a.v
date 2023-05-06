`timescale 1ns / 1ps


module tb_bf2_a;
reg A, B, C;
wire X;

bf2_a bf2_agate(.a(A), .b(B), .c(C), .x(X));

initial begin
A = 1'b0;
B = 1'b0;
C = 1'b0;
end

always begin
A = #10 ~A;
B = #15 ~B;
C = #20 ~C;
end

initial begin
    #100
    $finish;
end

endmodule
