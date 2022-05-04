`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 16:55:11
// Design Name: 
// Module Name: tb_hagate
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

//1960628 Prem Half adder testmebch
module tb_hagate();
wire s,c;
reg a,b;

hagate I1(a,b,s,c);
initial
begin
a = 1'b0;
b = 1'b0;
#10
a = 1'b0;
b = 1'b1;
#10
a = 1'b1;
b = 1'b0;
#10
a = 1'b1;
b = 1'b1;
#10
$finish();
end
endmodule
