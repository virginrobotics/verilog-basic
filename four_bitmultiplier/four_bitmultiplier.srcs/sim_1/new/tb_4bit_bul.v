`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2022 19:12:43
// Design Name: 
// Module Name: tb_4bit_bul
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

//1960628 Prem 4 bit multiplier testbench
module tb_4bit_bul();
wire [7:0] prod;
reg [3:0] a,b;

four_bitmul I1(prod,a,b);
initial
begin
a = 4'b1001;
b = 4'b1111;
#10
a = 4'b1111;
b = 4'b1111;
#10
a = 4'b1010;
b = 4'b0101;
#10
a = 4'b1001;
b = 4'b1111;
#10
a = 4'b0000;
b = 4'b1111;
#10
$finish();
end
endmodule
