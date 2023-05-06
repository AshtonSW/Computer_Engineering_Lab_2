`timescale 1ns / 1ps

module tb_adder4bit;
reg[3:0] A, B;
reg Cin;
wire[3:0] S;
wire C4;

adder4bit mygate(.a(A), .b(B), .cin(Cin), .s(S), .c4(C4));

initial begin
A = 4'b0000;
B = 4'b0000;
Cin = 1'b0;
end

always @(A or B or Cin) begin
A <= #7 A+4'b0001;
B <= #11 B-4'b0001;
Cin <= #17 ~Cin;
end

initial begin
    #1000
    $finish;
end
endmodule
