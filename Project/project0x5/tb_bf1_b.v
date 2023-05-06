`timescale 1ns / 1ps


module tb_bf1_b;
reg A, B, C;
wire Y;

bf1_b bf1_bgate(.a(A), .b(B), .c(C), .y(Y));

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
