`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2022 20:52:19
// Design Name: 
// Module Name: fourbit_syncup
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

//1960628 PREM FOURBIT SYNC
module fourbit_syncup(
    input [3:0]j,
    input [3:0]k,
    input clk,
    input [3:0]rst,
    output [3:0]q,
    output [3:0]qbar
    );
wire w0,w1;

and and1(w0,q[0],q[1]);
and and2(w1,w0,q[2]);
jk_flipflopbehav i1(j[0],k[0],clk,rst[0],q[0],qbar[0]);
jk_flipflopbehav i2(q[0],q[0],clk,rst[1],q[1],qbar[1]);
jk_flipflopbehav i3(w0,w0,clk,rst[2],q[2],qbar[2]);
jk_flipflopbehav i4(w1,w1,clk,rst[3],q[3],qbar[3]);
endmodule
