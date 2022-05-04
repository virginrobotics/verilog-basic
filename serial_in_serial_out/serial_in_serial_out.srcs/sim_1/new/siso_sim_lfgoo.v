`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2022 20:30:15
// Design Name: 
// Module Name: siso_sim_lfgoo
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

// TESTBENCH SISO 1960628 PREM
module siso_sim_lfgoo();
wire [3:0]q1;
reg d1;
reg clk; 
reg reset;
siso i1(d1,clk,reset,q1);
initial begin clk = 0; forever #5 clk = ~clk; end
initial begin
reset = 1;
d1 = 1;
#40
d1 = 0;
#40
d1 = 1;
#40
d1 = 0;
#40
d1 = 1;
#40
d1 = 0;
#40
$finish();
end
endmodule
