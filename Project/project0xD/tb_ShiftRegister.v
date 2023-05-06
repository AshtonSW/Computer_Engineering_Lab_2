`timescale 1ns / 1ps

module tb_ShiftRegister;

reg IN, CLK, RST;
wire [3:0] OUT;

ShiftRegister mygate(.in(IN), .clk(CLK), .rst(RST), .out(OUT));

initial begin
IN = 0;
CLK = 0;
RST = 0;
end

always @(CLK or IN) begin
    CLK <= #10 ~CLK;
    IN <= #50 ~IN;
    RST <= #500 ~RST;
end

initial begin
    #1000
    $finish;
    end
 
endmodule
