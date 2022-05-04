`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 17:56:48
// Design Name: 
// Module Name: hsdata
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

//1960628 Prem Half Subtractor Data flow
module hsdata(
    input a,
    input b,
    output d,
    output bo
    );
assign d = a^b;
assign bo = (~a)&b;
endmodule
