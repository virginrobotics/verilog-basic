`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 18:13:36
// Design Name: 
// Module Name: tb_dflipflop
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

//1960628 Prem Testbench dflipflop
module tb_dflipflop();
wire q,qbar;
reg d,clk;
d_flipflop i1(d,clk,q,qbar);

initial
begin
clk = 0;
d = 0;
#50
d = 1;
end
always #10 clk = ~clk;
endmodule
