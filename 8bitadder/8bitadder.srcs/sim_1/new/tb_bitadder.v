`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2022 20:01:38
// Design Name: 
// Module Name: tb_bitadder
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


module tb_bitadder();
wire sum,carry;
reg a,b,cin;

bitadder I1(a,b,cin,sum,carry);
initial
begin
a = 1'b1;
b = 1'b1;
cin = 1'b1;
#10
$finish();
end
endmodule
