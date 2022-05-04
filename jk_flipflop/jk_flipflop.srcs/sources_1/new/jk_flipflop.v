`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 11:10:25
// Design Name: 
// Module Name: jk_flipflop
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

//1960628 Prem jk flipflop gate
module jk_flipflop(
    input j,
    input k,
    input clk,
    output q,
    output qbar
    );
wire w0,w1;
nand nand1(w0,qbar,j,clk);
nand nand2(w1,q,k,clk);
nand nand3(q,w0,qbar);
nand nand4(qbar,w1,q);
endmodule
