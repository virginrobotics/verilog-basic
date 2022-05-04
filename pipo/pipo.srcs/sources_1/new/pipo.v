`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2022 09:48:37
// Design Name: 
// Module Name: pipo
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


//1960628 Prem Kumar R PIPO
module pipo(
    input [3:0]pi,
    input clk,
    input reset,
    output [3:0]q1
    );
dff i1(pi[0],clk,reset,q1[0]);
dff i2(pi[1],clk,reset,q1[1]);
dff i3(pi[2],clk,reset,q1[2]);
dff i4(pi[3],clk,reset,q1[3]);
endmodule


module dff(
    input d,
    input clk,
    input rst,
    output reg q
    );

always @(posedge clk, negedge rst)
begin
if(!rst)
q <= 0;
else q<= d;
end
endmodule
