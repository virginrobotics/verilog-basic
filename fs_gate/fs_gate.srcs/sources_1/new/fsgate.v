`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 14:43:13
// Design Name: 
// Module Name: fsgate
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

//1960628 Prem full subtractor gate level
module fsgate(
    input a,
    input b,
    input c,
    output d,
    output bor
    );
wire w0,w1,w2,w3,w4;
xor xort(w0,a,b);
xor xort2(d,c,w0);
not nort(w1,w0);
not nort2(w2,a);
and and1(w3,w2,b);
and and2(w4,c,w1);
or ort(bor,w3,w4);
endmodule
