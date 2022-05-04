`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2022 22:24:09
// Design Name: 
// Module Name: practice
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


module practice(
    input [3:0]a,
    input [3:0]b,
    output [7:0]prod
    );
wire [7:0]p0,p1,p2,p3;
wire [7:0]sum0,sum1,sum2,sum3;

assign p0 = {4{a[0]}}&b[3:0];    
assign p1 = {4{a[1]}}&b[3:0];
assign p2 = {4{a[2]}}&b[3:0];
assign p3 = {4{a[3]}}&b[3:0];

assign sum0 = p0 + (p1<<1);
assign sum1 = sum0 + (p2<<1);
assign sum2 = sum1 + (p3)    
endmodule
