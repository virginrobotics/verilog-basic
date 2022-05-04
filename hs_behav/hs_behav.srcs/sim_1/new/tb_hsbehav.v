`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 18:06:23
// Design Name: 
// Module Name: tb_hsbehav
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

//1960628 Prem Half subtracotr testbench
module tb_hsbehav();
wire [1:0]d;
reg [1:0]a;

hsbehav I1(a,d);
initial
begin
a = 2'b00;
#10
a = 2'b01;
#10
a = 2'b10;
#10
a = 2'b11;
#10
$finish();
end

endmodule
