`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2022 10:40:14
// Design Name: 
// Module Name: traffic_control_tb
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

//1960628 PREM KUMAR R
module traffic_control_tb;

wire [2:0] n_lights,s_lights,e_lights,w_lights;
reg clk,rst_a;

traffic_control DUT (n_lights,s_lights,e_lights,w_lights,clk,rst_a);

initial
 begin
  clk=1'b1;
  forever #5 clk=~clk;
 end
 
initial
 begin
  rst_a=1'b1;
  #15;
  rst_a=1'b0;
  #1000;
  $stop;
 end
endmodule
