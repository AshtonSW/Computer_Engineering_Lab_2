`timescale 1ns / 1ps
//NAND
module RSflipflop(
    input s, r, clk,
    output q1, q2
    );
    
    assign q1=~(q2 & ~(s&clk));
    assign q2 = ~(q1& ~(r&clk));
    
    
endmodule
