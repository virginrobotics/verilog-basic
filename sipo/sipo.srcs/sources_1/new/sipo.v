`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2022 22:40:25
// Design Name: 
// Module Name: sipo
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

//1960628 Prem Kumar R SIPO
module sipo(
    input sin,
    input clk,
    input reset,
    output [3:0]q1
    );
dff i1(sin,clk,reset,q1[0]);
dff i2(q1[0],clk,reset,q1[1]);
dff i3(q1[1],clk,reset,q1[2]);
dff i4(q1[2],clk,reset,q1[3]);
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