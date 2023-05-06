`timescale 1ns / 1ps

module tb_FA;
reg A, B, Ci;
wire S, Co;


FA FAGATE(.a(A), .b(B), .ci(Ci), .s(S), .co(Co));

initial begin
A = 1'b0;
B = 1'b0;
Ci = 1'b0;
end

always begin
A = #5 ~A;
B = #20 ~B;
Ci = #34 ~Ci;
end

initial begin
    #1000
    $finish;
end


endmodule