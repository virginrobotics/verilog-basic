`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 23:57:15
// Design Name: 
// Module Name: four_bitmul
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

//1960628 Prem 4 bit multiplier
module four_bitmul(
    output [7:0]prod,
    input [3:0] a,b
    );
wire [7:0] p0,p1,p2,p3;
wire [7:0] sum1,sum2,sum3;

assign p0 = {4{a[0]}}&b[3:0];
assign p1 = {4{a[1]}}&b[3:0];
assign p2 = {4{a[2]}}&b[3:0];
assign p3 = {4{a[3]}}&b[3:0];

assign sum1 = p0 + (p1<<1);
assign sum2 = sum1 + (p2<<2);
assign sum3 = sum2 + (p3<<3);
assign prod = sum3;
endmodule
