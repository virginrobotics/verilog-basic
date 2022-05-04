`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2022 16:34:55
// Design Name: 
// Module Name: tb_fsbehav
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

//1960628 Prem full adder testbemch
module tb_fsbehav();
wire [1:0]d;
reg [2:0]a;

fsbehav I1(a,d);
initial
begin
a = 3'b000;
#10
a = 3'b001;
#10
a = 3'b010;
#10
a = 3'b011;
#10
a = 3'b100;
#10
a = 3'b101;
#10
a = 3'b110;
#10
a = 3'b111;
#10
$finish();
end

endmodule
