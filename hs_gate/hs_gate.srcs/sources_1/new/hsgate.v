`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 17:49:38
// Design Name: 
// Module Name: hsgate
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

//1960628 Prem Half Subtracotr Gate level
module hsgate(
    input a,
    input b,
    output d,
    output bo
    );
wire w0;
xor xort(d,a,b);
not not1(w0,a);
and and1(bo,b,w0);
endmodule
