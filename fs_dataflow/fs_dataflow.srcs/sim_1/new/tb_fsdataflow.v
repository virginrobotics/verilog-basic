`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 16:19:51
// Design Name: 
// Module Name: tb_fsdataflow
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


//1960628 Prem full subtractor testbench 
module tb_fsdataflow();
wire d,bor;
reg a,b,c;

fs_dataflow I1(a,b,c,d,bor);
initial
begin
a = 1'b0;
b = 1'b0;
c = 1'b0;
#10
a = 1'b0;
b = 1'b0;
c = 1'b1;
#10
a = 1'b0;
b = 1'b1;
c = 1'b0;
#10
a = 1'b0;
b = 1'b1;
c = 1'b1;
#10
a = 1'b1;
b = 1'b0;
c = 1'b0;
#10
a = 1'b1;
b = 1'b0;
c = 1'b1;
#10
a = 1'b1;
b = 1'b1;
c = 1'b0;
#10
a = 1'b1;
b = 1'b1;
c = 1'b1;
#10
$finish();
end
endmodule
