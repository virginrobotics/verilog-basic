`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2022 10:41:49
// Design Name: 
// Module Name: tb_jkbehav
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


module tb_jkbehav();
wire q,qbar;
reg j,k,clk,rst;
jk_flipflopbehav i1(j,k,clk,rst,q,qbar);
initial begin clk = 0; forever #10 clk=~clk;end
initial
begin
rst = 1;
j = 0;
k = 0;
#20
j = 0;
k = 1;
#20
j = 1;
k = 0;
#20
j = 1;
k = 1;

end
endmodule
