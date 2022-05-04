`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2022 15:45:44
// Design Name: 
// Module Name: srflipbehav
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

//1960628 Prem srflip behav
module srflipbehav(
    input [2:0]x,
    output reg [1:0]y
    );
always @(posedge x[1])
begin

if (x[0] == 1) begin y[0] <= 1; y[1] <= 0; end 
else if(x[2] == 1) begin y[0] <= 0; y[1] <= 1; end
else if((x[2] == 1) && (x[2] == 1)) begin y[0] <= y[0]; y[1] = y[1]; end
end

endmodule
