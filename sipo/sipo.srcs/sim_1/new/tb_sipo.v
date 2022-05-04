`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2022 08:37:38
// Design Name: 
// Module Name: tb_sipo
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

//1960628 PREM KUMAR R TESTBENCH SIPO
module tb_sipo();
wire [3:0]q1;
reg sin,clk,reset;


sipo i1(sin,clk,reset,q1);
initial begin reset = 0; #2 reset = 1; end
initial begin clk = 0; forever #5 clk = ~clk; end
initial begin
sin = 1;
#10
sin = 0;
#10;
sin = 1;
#10
sin = 1;
#10
sin = 1;
#40
$finish();
end
endmodule
