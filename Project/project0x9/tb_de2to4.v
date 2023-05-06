`timescale 1ns / 1ps

module tb_de2to4;

reg A, B;
wire D0, D1, D2, D3;

de2to4 mygate(.a(A), .b(B), .d0(D0), .d1(D1), .d2(D2), .d3(D3));

initial begin
A = 1'b1;
B = 1'b1;
end

always @(A or B) begin
A <= #10 ~A;
B <= #15 ~B;
end

initial begin
    #1000;
    $finish;
end

endmodule
