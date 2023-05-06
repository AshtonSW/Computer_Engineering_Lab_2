`timescale 1ns / 1ps


module tb_RingCounter;

reg CLK, RST;
wire [3:0] OUT;

RingCounter mygate(.clk(CLK), .rst(RST), .out(OUT));

initial begin
CLK = 0;
RST = 0;
end

always @(CLK) begin
    CLK <= #10 ~CLK;
    RST <= #500 ~RST;
end

initial begin
    #1000
    $finish;
    end
endmodule
