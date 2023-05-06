`timescale 1ns / 1ps

module tb_HS;
reg A, B;
wire S, C;


HS HSGATE(.a(A), .b(B), .s(S), .c(C));

initial begin
A = 1'b0;
B = 1'b1;
end

always begin
A   = #10 ~A;
B = #40 ~B;
end

initial begin
    #1000
    $finish;
end


endmodule