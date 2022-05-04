`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 09:24:46
// Design Name: 
// Module Name: fulladder
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

//1960628 Prem Full Adder Gate Level
module fulladder(
    input a,
    input b,
    input ci,
    output s,
    output co
    );
wire w0,w1,w2;
xor xort(w0,a,b);
xor xort1(s,w0,ci);
and and1(w1,ci,w0);
and and2(w2,a,b);
or ort(co,w1,w2);

endmodule
