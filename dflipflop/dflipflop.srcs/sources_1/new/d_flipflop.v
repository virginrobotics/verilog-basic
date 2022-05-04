`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 11:56:45
// Design Name: 
// Module Name: d_flipflop
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

// 1960628 Prem D flipflop GATE  
module d_flipflop(
    input d,
    input clk,
    output q,
    output qbar
    );
wire w0,w1;
nand nand1(w0,d,clk);
nand nand2(w1,~d,clk);
nand nand3(q,w0,qbar);
nand nand4(qbar,w1,q);
endmodule
