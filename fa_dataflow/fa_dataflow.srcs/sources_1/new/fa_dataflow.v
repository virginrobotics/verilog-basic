`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 14:01:41
// Design Name: 
// Module Name: fa_dataflow
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

//1960628 Prem Full adder Dataflow
module fa_dataflow(
    input a,
    input b,
    input ci,
    output s,
    output co
    );
assign s = a^b^ci;
assign co = (a&b) | (b&ci) | (ci&a);
endmodule
