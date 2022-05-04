`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2022 19:51:03
// Design Name: 
// Module Name: bitadder
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

//1960628 Prem 8 Bit Adder Dataflow
module bitadder(
    input [7:0]a,
    input [7:0]b,
    input cin,
    output [7:0]sum,
    output [7:0]cout
    );
fa_dataflow I1(a[0],b[0],cin,sum[0],cout[0]);
fa_dataflow I2(a[1],b[1],cout[0],sum[1],cout[1]);
fa_dataflow I3(a[2],b[2],cout[1],sum[2],cout[2]);
fa_dataflow I4(a[3],b[3],cout[2],sum[3],cout[3]);
fa_dataflow I5(a[4],b[4],cout[3],sum[4],cout[4]);
fa_dataflow I6(a[5],b[5],cout[4],sum[5],cout[5]);
fa_dataflow I7(a[6],b[6],cout[5],sum[6],cout[6]);
fa_dataflow I8(a[7],b[7],cout[6],sum[7],cout[7]);



endmodule
