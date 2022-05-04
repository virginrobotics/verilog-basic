`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2022 16:21:56
// Design Name: 
// Module Name: tb_decoder
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

//1960628 Prem
//3x8 decoder testbench
module tb_decoder_gate();
wire d0,d1,d2,d3,d4,d5,d6,d7;
reg s0,s1,s2;

decoder_3x8 I1(s0,s1,s2,d0,d1,d2,d3,d4,d5,d6,d7);
initial
begin
s0 = 1'b0;
s1 = 1'b0;
s2 = 1'b0;
#10
s0 = 1'b1;
s1 = 1'b0;
s2 = 1'b0;
#10
s0 = 1'b0;
s1 = 1'b1;
s2 = 1'b0;
#10
s0 = 1'b1;
s1 = 1'b1;
s2 = 1'b0;
#10
s0 = 1'b0;
s1 = 1'b0;
s2 = 1'b1;
#10
s0 = 1'b1;
s1 = 1'b0;
s2 = 1'b1;
#10
s0 = 1'b0;
s1 = 1'b1;
s2 = 1'b1;
#10
s0 = 1'b1;
s1 = 1'b1;
s2 = 1'b1;
#10
$finish();
end
endmodule
