`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2022 10:10:30
// Design Name: 
// Module Name: jk_flipflopbehav
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

//1960628 Prem Kumar R JK Flip Flop Behav
module jk_flipflopbehav(
    input j,
    input k,
    input clk,
    input rst,
    output reg  q,
    output reg qbar
    );
initial begin
q = 0;
qbar = 1;
end
always@ (posedge clk or negedge rst)
    if (rst == 1)
        begin
            q <= 0;
            qbar <= 1;
        end
    else
        begin
        case ({j,k})
        2'b00:begin q<= q; qbar <= ~q; end
        2'b01:begin q<= 1'b0; qbar <= 1; end
        2'b10:begin q<= 1'b1; qbar <= 0; end
        2'b11:begin q<= ~q; qbar <= q; end
        endcase
        end
endmodule