`timescale 1ns / 1ps

module HS(
input a,b,
output s,c
    );
    
    assign s = a^b,
    c = ~a&b;
endmodule
