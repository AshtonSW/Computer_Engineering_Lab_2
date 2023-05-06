`timescale 1ns / 1ps

module tb_demux1to4;

reg F, S0, S1;
wire A, B, C, D;

demux1to4 mygate(.f(F), .s0(S0), .s1(S1), .a(A), .b(B), .c(C), .d(D));

initial begin
F = 1'b1;
S0 = 1'b1;
S1 = 1'b1;
end

always @(F or S0 or S1) begin
F <= #30 ~F;
S0 <= #50 ~S0;
S1 <= #70 ~S1;
end

initial begin
    #1000;
    $finish;
end

endmodule
