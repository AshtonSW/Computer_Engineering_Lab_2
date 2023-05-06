`timescale 1ns / 1ps


module en4to2(
input a,b,c,d,
output e0, e1
);
    
    assign e0 = (a&~b) | (~a&b);
    assign e1 = (a&~b) | (c&~d);

             
endmodule
