`timescale 1ns / 1ps


module AOI4in3out(
input a, b, c, d,
output e, f, g

    );
    
    assign e=a&b, f = c&d, g = ~(e|f);
    
endmodule
