`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2022 20:02:31
// Design Name: 
// Module Name: fourbitasyncup
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

//1960628 PREM four bit async counter
module fourbitasyncup(
    input [3:0]j,
    input [3:0]k,
    input clk,
    input [3:0]rst,
    output [3:0]q,
    output [3:0]qbar
    );

jk_flipflopbehav i1(j[0],k[0],clk,rst[0],q[0],qbar[0]);
jk_flipflopbehav i2(j[1],k[1],q[0],rst[1],q[1],qbar[1]);
jk_flipflopbehav i3(j[2],k[2],q[1],rst[2],q[2],qbar[2]);
jk_flipflopbehav i4(j[3],k[3],q[2],rst[3],q[3],qbar[3]);    

endmodule
