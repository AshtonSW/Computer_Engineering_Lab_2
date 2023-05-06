`timescale 1ns / 1ps

module tb_bcdadder;
reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;

bcdadder mygate(.a(A), .b(B), .cin(Cin), .sum(Sum), .cout(Cout));

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
