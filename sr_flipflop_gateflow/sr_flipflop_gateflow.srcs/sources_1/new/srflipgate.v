`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2022 15:35:14
// Design Name: 
// Module Name: srflipgate
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


module srflipgate(
    input s,
    input r,
    input clk,
    output q,
    output qbar
    );
assign q = ~(~(s&clk)&qbar);
assign qbar = ~(~(r&clk)&q);

endmodule
