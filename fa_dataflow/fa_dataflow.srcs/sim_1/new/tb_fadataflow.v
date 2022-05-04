`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 14:11:19
// Design Name: 
// Module Name: tb_fadataflow
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

//1960628 Prem Testbench Full adder
module tb_fadataflow();
wire s,co;
reg a,b,ci;

fa_dataflow I1(a,b,ci,s,co);
initial
begin
a = 1'b0;
b = 1'b0;
ci = 1'b0;
#10
a = 1'b0;
b = 1'b1;
ci = 1'b0;
#10
a = 1'b1;
b = 1'b0;
ci = 1'b0;
#10
a = 1'b1;
b = 1'b1;
ci = 1'b0;
#10
a = 1'b0;
b = 1'b0;
ci = 1'b1;
#10
a = 1'b0;
b = 1'b1;
ci = 1'b1;
#10
a = 1'b1;
b = 1'b0;
ci = 1'b1;
#10
a = 1'b1;
b = 1'b1;
ci = 1'b1;
#10
$finish();
end
endmodule

