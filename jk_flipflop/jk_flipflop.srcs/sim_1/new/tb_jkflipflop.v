`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2022 11:15:10
// Design Name: 
// Module Name: tb_jkflipflop
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

//1960628 Prem jk trstbench 
module tb_jkflipflop();
wire q,qbar;
reg j,k,clk;
jk_flipflop I1(j,k,clk,q,qbar);

initial
begin
force q = 1'b0;
#2
release q;
end

initial
begin
clk = 1'b0;
j = 1'b0;
k = 1'b0;
#40
j = 1'b1;
k = 1'b0;
#40
j = 1'b0;
k = 1'b1;
#40
j = 1'b1;
k = 1'b1;
end
always #10 clk=~clk;

endmodule
