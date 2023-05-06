`timescale 1ns / 1ps


module NAND4in3out(
input a, b, c, d,
output e, f, g

    );
    
    
    assign e = ~(a&b), f = ~(e&c), g = ~(f&d);
    
endmodule
