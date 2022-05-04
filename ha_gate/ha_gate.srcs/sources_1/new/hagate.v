`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 16:51:55
// Design Name: 
// Module Name: hagate
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

//1960628 Prem half adder gate level
module hagate(
    input a,
    input b,
    output s,
    output c
    );
xor xort(s,a,b);
and and1(c,a,b);
endmodule
