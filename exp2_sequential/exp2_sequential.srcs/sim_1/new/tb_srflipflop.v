`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 10:36:21
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

//1960628 Prem sr flip flop testbench gate
module tb_srflipflop();
wire q,qbar;
reg s,r,clk;

sr_flipflop I1(s,r,clk,q,qbar);
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
