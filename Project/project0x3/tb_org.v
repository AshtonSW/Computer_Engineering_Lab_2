`timescale 1ns / 1ps
module tb_org;

reg aa, bb, cc, dd;
wire EE, FF, GG;
    
 org or_gate(.a(aa), .b(bb), .c(cc), .d(dd), .E(EE), .F(FF), .G(GG) 
 );
 
initial begin
 aa=1'b0;
 bb=1'b1;
 cc=1'b0;
 dd=1'b1;
 end
 
always begin
 aa= #13 ~aa;
 bb= #14 ~bb;
 cc= #15 ~cc;
 dd= #16 ~dd;
 end
 
initial begin
         #1000
         $finish;
end

endmodule
