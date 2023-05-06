`timescale 1ns / 1ps

module bcdadder(
input [3:0] a,b,
input cin,
output [3:0] sum,
output cout
    );
    wire c1, c2, c3, c4, s0, s1, s2, s3;
    assign s0 = a[0]^b[0]^cin,
    c1 = (cin&(a[0]^b[0])) | (a[0]&b[0]),
    s1 = a[1]^b[1]^c1,
    c2 = (c1&(a[1]^b[1])) | (a[1]&b[1]),
    s2 = a[2]^b[2]^c2,
    c3 = (c2&(a[2]^b[2])) | (a[2]&b[2]),
    s3 = a[3]^b[3]^c3,
    c4 = (c3&(a[3]^b[3])) | (a[3]&b[3]);
    
    assign cout = (s1 & s3) | (s2 & s3) | c4,
    sum[0] = s0,
    sum[1] = s1^cout,
    sum[2] = s2^cout^(cout&s1),
    sum[3] = (((cout&s1) & (cout^s2)) | (cout&s2)) ^ s3;
endmodule
