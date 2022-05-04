`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 17:01:38
// Design Name: 
// Module Name: hadataflow
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

//1960628 Prem Half adder dataflow
module hadataflow(
    input a,
    input b,
    output s,
    output c
    );
assign s = a^b;
assign c = a&b;

endmodule
