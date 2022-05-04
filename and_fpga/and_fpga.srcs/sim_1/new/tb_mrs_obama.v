`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2022 19:46:39
// Design Name: 
// Module Name: tb_mrs_obama
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


module tb_mrs_obama();
wire c;
reg a,b;

and_juan i1(a,b,c);

initial begin 
a = 0;
b = 0;
#20
a = 1;
b = 0;
#20
a = 0;
b = 1;
#20
a = 1;
b = 1;
#20
$finish();
end
endmodule
