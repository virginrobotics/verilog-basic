`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 21:43:41
// Design Name: 
// Module Name: tb_demux
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
// Demux 1x4 testbench
module tb_demux();
wire y0,y1,y2,y3;
reg s0,s1,din;
demux I1(din,s0,s1,y0,y1,y2,y3);
initial
begin
din = 1'b1;
s0 = 1'b0;
s1 = 1'b0;
#10
din = 1'b1;
s0 = 1'b1;
s1 = 1'b0;
#10
din = 1'b1;
s0 = 1'b0;
s1 = 1'b1;
#10
din = 1'b1;
s0 = 1'b1;
s1 = 1'b1;
#10
$finish();
end

endmodule
