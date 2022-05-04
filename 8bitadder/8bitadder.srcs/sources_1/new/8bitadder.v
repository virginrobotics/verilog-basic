`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2022 19:56:52
// Design Name: 
// Module Name: 8bitadder
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


module bitadder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
    );
fa_fataflow f1(a,b,cin,sum,carry);   

endmodule
