`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 10:29:56
// Design Name: 
// Module Name: sr_flipflop
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

//1960628 Prem SR Flipflop gate
module sr_flipflop(
    input s,
    input r,
    input clk,
    output q,
    output qbar
    );
wire w0,w1;
nand nand1(w0,s,clk);
nand nand2(w1,r,clk);
nand nand3(q,qbar,w0);
nand nand4(qbar,w1,q);
endmodule
