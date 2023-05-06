`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/06 15:31:11
// Design Name: 
// Module Name: BCC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BCC(
input a,b,c,d,
output p,q,r,s
    );
    
    assign p= ~((~a&~c&~d)|(~a&~b)),
    q = ~((~a&~c&d)|(~a&~b)),
    r = ~((~a&~b&~c)|(~a&b&c)|(~a&b&~d)),
    s = d;
endmodule
