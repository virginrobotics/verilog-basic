`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 14:24:22
// Design Name: 
// Module Name: fa_behav
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

//1960628 Prem full adder behav
module fa_behav(
    input a,
    input b,
    input ci,
    output reg s,
    output reg co
    );
always @(a,b,ci)
begin
if (a == 1'b0 & b == 1'b0 & ci == 1'b0)
begin
s = 1'b0;
co = 1'b0;
end
if (a == 1'b0 & b == 1'b0 & ci == 1'b1)
begin
s = 1'b1;
co = 1'b0;
end
if (a == 1'b0 & b == 1'b1 & ci == 1'b0)
begin
s = 1'b1;
co = 1'b0;
end
if (a == 1'b0 & b == 1'b0 & ci == 1'b1)
begin
s = 1'b0;
co = 1'b1;
end
if (a == 1'b1 & b == 1'b0 & ci == 1'b0)
begin
s = 1'b1;
co = 1'b0;
end
if (a == 1'b1 & b == 1'b0 & ci == 1'b1)
begin
s = 1'b0;
co = 1'b1;
end
if (a == 1'b1 & b == 1'b1 & ci == 1'b0)
begin
s = 1'b0;
co = 1'b1;
end
if (a == 1'b1 & b == 1'b1 & ci == 1'b1)
begin
s = 1'b1;
co = 1'b1;
end
end
endmodule
