`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2022 10:26:44
// Design Name: 
// Module Name: mux_fpga
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
module mux_fpga ( 
input d0, 
input d1, 
input d2, 
input d3, 
input s0, s1,
output y); 

 assign y = s1 ? (s0 ? d3 : d2) : (s0 ? d1 : d0); 

endmodule