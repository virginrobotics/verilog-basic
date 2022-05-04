`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2022 09:33:07
// Design Name: 
// Module Name: ligma_test
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


module ligma_test();

wire c;
reg a,b;

and_gpga_test i1(a,b,c);
initial begin
a = 0;
b = 0;
#20
a = 0;
b = 1;
#20
a = 1;
b = 0;
#20
a = 1;
b = 1;
#20
$finish();
end

endmodule
