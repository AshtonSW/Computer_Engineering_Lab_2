`timescale 1ns / 1ps
module Dflipflop (
    input clk, d,
    output q1, q2 
);

    assign q1 = ~(q2|(~d&clk));
    assign q2 = ~(q1|(d&clk));  

endmodule