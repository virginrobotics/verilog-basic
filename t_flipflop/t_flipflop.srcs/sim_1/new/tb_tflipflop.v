`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2022 21:09:48
// Design Name: 
// Module Name: tb_tflipflop
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

//1960628 Prem testbench tflip flop
module tb_tflipflop();
wire  q,qbar;
reg t,clk;

t_flipflop I1(t,clk,q,qbar);
initial begin
force q = 0;
#2
release q;
end
initial begin clk = 0; forever #10 clk=~clk;end
initial 
begin
t = 0;
#40
t = 1;
end
endmodule
