`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 18:02:33
// Design Name: 
// Module Name: hsbehav
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

//1960628 prem half subtracotr behavioural
module hsbehav(
    input [1:0]a,
    output reg [1:0]d
    );
always @(d,a)
    begin
        case(a)
        2'b00: begin d = 2'b00; end
        2'b01: begin d = 2'b11; end
        2'b10: begin d = 2'b10; end
        2'b11: begin d = 2'b00; end
        endcase
    end
endmodule
