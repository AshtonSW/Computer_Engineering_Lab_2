`timescale 1ns / 1ps

module FS(
input a,b,bn_1,
output bn, d
    );
 
    assign d= a^b^(bn_1),
    bn = (~(a^b)&(bn_1))|(~a&b);
endmodule
