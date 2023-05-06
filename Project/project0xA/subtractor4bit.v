`timescale 1ns / 1ps

module subtractor4bit(//9input, 5output
input [3:0] a,b,
input bin,
output [3:0] d,
output b4
    );
    wire b1, b2, b3;
    assign d[0] = (a[0]^b[0])^bin,
    b1 = (~(a[0]^b[0])&bin) | (~a[0]&b[0]),
    d[1] = (a[1]^b[1])^b1,
    b2 = (~(a[1]^b[1])&b1) | (~a[1]&b[1]),
    d[2] = (a[2]^b[2])^b2,
    b3 = (~(a[2]^b[2])&b2) | (~a[2]&b[2]),
    d[3] = (a[3]^b[3])^b3,
    b4 = (~(a[3]^b[3])&b3) | (~a[3]&b[3]);
endmodule
