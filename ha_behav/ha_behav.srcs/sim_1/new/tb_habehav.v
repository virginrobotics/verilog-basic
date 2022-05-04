`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 17:12:16
// Design Name: 
// Module Name: tb_habehav
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

//1960628 Prem Half Adder testbench
module tb_habehav();
reg [1:0]i;
wire [1:0]out;
habehav I1(i,out);
initial
begin
i = 2'b00;
#10
i = 2'b01;
#10
i = 2'b10;
#10
i = 2'b11;
#10
$finish;
end
endmodule
