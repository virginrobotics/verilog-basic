`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2022 20:09:04
// Design Name: 
// Module Name: tb_fourbitasyncup
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

//1960628 PREM 4 BIT ASYNC COUNT TEMSTBENCH
module tb_fourbitasyncup();
wire [3:0]q,qbar;
reg [3:0]j,k,rst;
reg clk;

fourbitasyncup i1(j,k,clk,rst,q,qbar);

initial begin clk = 0; forever #10 clk=~clk; end

initial begin
j = 4'b1111;
k = 4'b1111;
rst = 4'b0000;
#700
$finish();
end 

endmodule
