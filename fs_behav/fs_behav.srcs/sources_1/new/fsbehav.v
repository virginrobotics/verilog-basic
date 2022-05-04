`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 16:26:59
// Design Name: 
// Module Name: fsbehav
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

//1960628 Prem Full Subtractor Behavioural
module fsbehav(
    input [2:0]a,
    output reg [1:0]d
    );
always@ (a,d)
    begin
    case(a)
    3'b000: begin d = 2'b00; end
    3'b001: begin d = 2'b11; end
    3'b010: begin d = 2'b11; end
    3'b011: begin d = 2'b01; end
    3'b100: begin d = 2'b10; end
    3'b101: begin d = 2'b00; end
    3'b110: begin d = 2'b00; end
    3'b111: begin d = 2'b11; end
    endcase
    end
endmodule
