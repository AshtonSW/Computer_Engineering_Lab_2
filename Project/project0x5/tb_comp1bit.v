`timescale 1ns / 1ps


module tb_comp1bit;
reg A, B;
wire X, Y, Z, W;

comp1bit comp1bitgate(.a(A), .b(B), .x(X), .y(Y), .z(Z), .w(W));

initial begin
A = 1'b0;
B = 1'b0;
end

always begin
A = #10 ~A;
B = #15 ~B;
end

initial begin
    #100
    $finish;
end

endmodule
