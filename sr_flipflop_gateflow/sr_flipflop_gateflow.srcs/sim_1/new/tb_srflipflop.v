`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2022 15:40:21
// Design Name: 
// Module Name: tb_srflipflop
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


module tb_srflipflop();
wire q,qbar;
reg s,r,clk;

srflipgate I1(s,r,clk,q,qbar);
initial
begin
clk = 0;
s = 1'b0;
r = 1'b0;
#40
s = 1'b0;
r = 1'b1;
#40
s = 1'b1;
r = 1'b0;


end
always #10 clk=~clk;
endmodule
