`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2022 09:53:16
// Design Name: 
// Module Name: tb_pipo
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


//1960628 PREM KUMAR R TESTBENCH PIPO
module tb_pipo();
wire [3:0]q1;
reg [3:0]pi;
reg clk,reset;

pipo i1(pi,clk,reset,q1);
initial begin reset = 0; #2 reset = 1; end
initial begin clk = 0; forever #5 clk = ~clk; end
initial begin
pi[3:0] = 4'b1011;
#40
pi[3:0] = 4'b0101;
#40
$finish();
end
endmodule
