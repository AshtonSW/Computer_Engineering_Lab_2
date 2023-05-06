`timescale 1ns / 1ps

module tb_UPDOWNcounter;

reg UD, CLK, RST;
wire [3:0] OUT;
wire [6:0] SEG;
wire DIGIT;

UPDOWNcounter mygate(.clk(CLK), .rst(RST), .ud(UD), .seg(SEG), .out(OUT), .digit(DIGIT));

initial begin
    RST = 1'b0;
    CLK = 1'b0;
    UD =1;
end

initial begin
    #10 RST = 1;
    #20 RST = 0;s
end

always @(CLK) begin
    CLK <= #10 ~CLK;
    UD <= #500 ~UD;
end

initial begin
    #1000 
    $finish;
end
endmodule