`timescale 1ns / 1ps

module tb_sequence1101mealy;
reg DATA, CLK, RST;
wire OUT;


sequence1101mealy mygate(.data(DATA), .clk(CLK), .rst(RST), .out(OUT));

initial begin
CLK =0;
RST =0;
DATA = 0;
end

always @(CLK or DATA) begin
CLK <= #50 ~CLK;
DATA <= #14 ~DATA;
end

initial begin
    #1000
    $finish;
end

endmodule
