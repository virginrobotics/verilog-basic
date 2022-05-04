`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 17:06:36
// Design Name: 
// Module Name: habehav
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

//1960628 Prem Half Adder Behavioural Modelling
module habehav(
    input [1:0]i,
    output reg [1:0]out
    );
always @(i)
        begin
        case(i)
        2'b00:begin out = 2'b00; end
        2'b01:begin out = 2'b10; end
        2'b10:begin out = 2'b10; end
        2'b11:begin out = 2'b01; end
        endcase
        end
          
endmodule
