`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 17:59:03
// Design Name: 
// Module Name: tb_hsdata
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
module tb_hsdata();
wire d,b0;
reg a,b;

hsdata I1(a,b,d,b0);
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
