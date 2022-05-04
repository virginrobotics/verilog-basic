`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 22:35:55
// Design Name: 
// Module Name: tb_encoder
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
//encoder 8x3 Testbench
module tb_encoder();
wire [2:0]y;
reg [7:0]d;

encoder I1(y,d);
initial
begin
d = 8'b10000000;
#10
d = 8'b01000000;
#10
d = 8'b00100000;
#10
d = 8'b00010000;
#10
d = 8'b00001000;
#10
d = 8'b00000100;
#10
d = 8'b00000010;
#10
d = 8'b00000001;
#10
$finish();
end
endmodule



//1960628 Prem
//encoder 8x3 Testbench Pt0.1
//module tb_encoder();
//wire y0,y1,y2;
//reg d0,d1,d2,d3,d4,d5,d6,d7;

//encoder I1(d0,d1,d2,d3,d4,d5,d6,d7,y0,y1,y2);
//initial
//begin
//d7 = 1'b1;
//d6 = 1'b0;
//d5 = 1'b0;
//d4 = 1'b0;
//d3 = 1'b0;
//d2 = 1'b0;
//d1 = 1'b0;
//d0 = 1'b0;
//#10
//d7 = 1'b0;
//d6 = 1'b1;
//d5 = 1'b0;
//d4 = 1'b0;
//d3 = 1'b0;
//d2 = 1'b0;
//d1 = 1'b0;
//d0 = 1'b0;
//#10
//d7 = 1'b0;
//d6 = 1'b0;
//d5 = 1'b1;
//d4 = 1'b0;
//d3 = 1'b0;
//d2 = 1'b0;
//d1 = 1'b0;
//d0 = 1'b0;
//#10
//d7 = 1'b0;
//d6 = 1'b0;
//d5 = 1'b0;
//d4 = 1'b1;
//d3 = 1'b0;
//d2 = 1'b0;
//d1 = 1'b0;
//d0 = 1'b0;
//#10
//d7 = 1'b0;
//d6 = 1'b0;
//d5 = 1'b0;
//d4 = 1'b0;
//d3 = 1'b1;
//d2 = 1'b0;
//d1 = 1'b0;
//d0 = 1'b0;
//#10
//d7 = 1'b0;
//d6 = 1'b0;
//d5 = 1'b0;
//d4 = 1'b0;
//d3 = 1'b0;
//d2 = 1'b1;
//d1 = 1'b0;
//d0 = 1'b0;
//#10
//d7 = 1'b0;
//d6 = 1'b0;
//d5 = 1'b0;
//d4 = 1'b0;
//d3 = 1'b0;
//d2 = 1'b0;
//d1 = 1'b1;
//d0 = 1'b0;
//#10
//d7 = 1'b0;
//d6 = 1'b0;
//d5 = 1'b0;
//d4 = 1'b0;
//d3 = 1'b0;
//d2 = 1'b0;
//d1 = 1'b0;
//d0 = 1'b1;
//#10
//$finish();
//end
//endmodule
