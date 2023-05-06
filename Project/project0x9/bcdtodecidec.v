`timescale 1ns / 1ps

module bcdtodecidec(
input a,b,c,d,
output d0, d1, d2, d3, d4, d5, d6, d7, d8
);
    
    assign d0 = ~a & ~b & ~c & d;
    assign d1 = ~a & ~b & c & ~d;
    assign d2 = ~a & ~b & c & d;
    assign d3 = ~a & b & ~c & ~d;
    assign d4 = ~a & b & ~c & d;
    assign d5 = ~a & b & c & ~d;
    assign d6 = ~a & b & c & d;
    assign d7 = a & ~b & ~c & ~d;
    assign d8 = a & ~b & ~c & d;         
endmodule
