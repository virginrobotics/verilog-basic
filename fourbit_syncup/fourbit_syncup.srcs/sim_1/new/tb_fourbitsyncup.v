`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2022 21:39:23
// Design Name: 
// Module Name: tb_fourbitsyncup
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

//1960628 PREM KUMAR R TESTBENCH SYNC UP
module tb_fourbitsyncup();
wire [3:0]q,qbar;
reg [3:0]j,k,rst;
reg clk;

fourbit_syncup i1(j,k,clk,rst,q,qbar);

initial begin
j = 4'b0000;
k = 4'b0000;
end

initial begin clk = 0; forever #10 clk = ~clk; end

initial begin
rst = 4'b0000;
j[0] = 1;
k[0] = 1;
#700
$finish();
end 

endmodule
