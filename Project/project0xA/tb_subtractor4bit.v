`timescale 1ns / 1ps

module tb_subtractor4bit;
reg[3:0] A, B;
reg Bin;
wire[3:0] D;
wire B4;

subtractor4bit mygate(.a(A), .b(B), .bin(Bin), .d(D), .b4(B4));

initial begin
A = 4'b0000;
B = 4'b0000;
Bin = 1'b0;
end

always @(A or B or Bin) begin
A <= #7 A+4'b0001;
B <= #11 B-4'b0001;
Bin <= #17 ~Bin;
end

initial begin
    #1000
    $finish;
end
endmodule
