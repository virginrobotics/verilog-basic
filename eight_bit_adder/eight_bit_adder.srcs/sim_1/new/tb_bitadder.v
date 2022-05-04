`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 20:05:45
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

//1960628 Prem Testbench 8 Bit Adder
module tb_bitadder();
wire [7:0]sum;
wire [7:0]cout;
reg [7:0]a;
reg [7:0]b;
reg cin;
bitadder I1(a,b,cin,sum,cout);
initial
begin
a = 8'b00000000;
b = 8'b00000000;
cin = 1'b0;
#10
a = 8'b00000001;
b = 8'b01011010;
cin = 1'b0;
#10
a = 8'b00000001;
b = 8'b01011010;
cin = 1'b1;
#10
a = 8'b11011111;
b = 8'b00100111;
cin = 1'b0;
#10
$finish();
end
endmodule
