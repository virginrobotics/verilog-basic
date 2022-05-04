`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2022 21:04:11
// Design Name: 
// Module Name: t_flipflop
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

//1960628 Prem  t flip fop
module t_flipflop(
    input t,
    input clk,
    output reg q,
    output reg qbar
    );
initial q = 0;

always@ (negedge clk)
begin
    if  (t == 1) begin q = ~q; end
    else begin q=q; end
    qbar = ~q;
end
        

endmodule
