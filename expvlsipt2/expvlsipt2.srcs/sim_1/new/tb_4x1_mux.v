`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2022 15:18:59
// Design Name: 
// Module Name: tb_4x1_mux
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
//4x1 Mux Testbench
module tb_4x1_mux();
wire y;
reg s0,s1,i0,i1,i2,i3;

mux_4x1 I1(s0,s1,i0,i1,i2,i3,y);
initial
begin
s0 = 1'b0;
s1 = 1'b0;
i0 = 1'b1;
i1 = 1'b0;
i2 = 1'b0;
i3 = 1'b0;
#10
s0 = 1'b0;
s1 = 1'b1;
i0 = 1'b0;
i1 = 1'b1;
i2 = 1'b0;
i3 = 1'b0;
#10
s0 = 1'b1;
s1 = 1'b0;
i0 = 1'b0;
i1 = 1'b0;
i2 = 1'b1;
i3 = 1'b0;
#10
s0 = 1'b0;
s1 = 1'b1;
i0 = 1'b0;
i1 = 1'b0;
i2 = 1'b01;
i3 = 1'b0;
#10
s0 = 1'b1;
s1 = 1'b1;
i0 = 1'b0;
i1 = 1'b0;
i2 = 1'b0;
i3 = 1'b1;
#10
$finish();
end
endmodule
