`timescale 1ns / 1ps

module UPDOWNcounter(
input ud, clk, rst,
output [3:0] out, [6:0] seg , digit
    );
    reg [3:0] out;
    reg [6:0] seg;
    reg digit;
    
    always @(posedge clk) begin
        if (rst == 1) out = 4'b0000;
        if (ud == 0) begin
            out = out -1;
            seg[0] = 0;
            seg[1] = 1;
            seg[2] = 1;
            seg[3] = 1;
            seg[4] = 1;
            seg[5] = 0;
            seg[6] = 1;
         end
         else begin
            out = out + 1;
            seg[0] = 0;
            seg[1] = 1;
            seg[2] = 1;
            seg[3] = 1;
            seg[4] = 1;
            seg[5] = 1;
            seg[6] = 0;     
         end
         digit = seg[0] | seg[1] | seg[2] | seg[3] | seg[4] | seg[5] | seg[6];
    end
endmodule

