`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 12:32:07
// Design Name: 
// Module Name: tb_basic_gates
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

//1960628 PREM
//TEST BENCH BASIC GATES
module tb_basic_gates();
wire out_not,out_and,out_nor,out_or,out_nand,out_xor,out_xnor,out_buf;
reg in1,in2;
basic_gate I1(in1,in2,out_and,out_and,out_nor,out_or,out_nand,out_xor,out_xnor,out_buf);
initial
begin
in1 = 1'b0;
in2 = 1'b0;
#10
in1 = 1'b0;
in2 = 1'b1;
#10
in1 = 1'b1;
in2 = 1'b1;
#10
in1 = 1'b1;
in2 = 1'b0;
#10
$finish;
end
endmodule
