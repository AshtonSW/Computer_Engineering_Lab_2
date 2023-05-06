`timescale 1ns / 1ps

module tb_FS;
reg A, B, Bn_1;
wire D, Bn;


FS FSGATE(.a(A), .b(B), .d(D), .bn(Bn), .bn_1(Bn_1));

initial begin
A = 1'b0;
B = 1'b0;
Bn_1 = 1'b0;
end

always begin
A = #5 ~A;
B = #20 ~B;
Bn_1 = #34 ~Bn_1;
end

initial begin
    #1000
    $finish;
end


endmodule