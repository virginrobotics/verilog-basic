`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 16:16:56
// Design Name: 
// Module Name: fs_dataflow
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

//1960628 Prem full subtractor dataflow
module fs_dataflow(
    input a,
    input b,
    input c,
    output d,
    output bor
    );
assign d = a^b^c;
assign bor = ((~a)&b)|(b&c)|((~a)&c);
endmodule
