`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2022 19:52:16
// Design Name: 
// Module Name: tb_srbehav
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

//1960628 srflip behav testbench
module tb_srbehav();
wire [1:0]y;
reg [2:0]x;

srflipbehav I1(x,y);

initial begin
x[1] = 0;
forever #10 x[1] = ~x[1];
end
initial begin
x[0] = 1;
x[2] = 0;
#10
x[0] = 0;
x[2] = 1;
#10
x[0] = 0;
x[2] = 0;
#10
x[0] = 1;
x[2] = 1;
end
endmodule
