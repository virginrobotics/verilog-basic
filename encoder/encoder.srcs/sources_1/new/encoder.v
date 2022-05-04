`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 22:26:37
// Design Name: 
// Module Name: encoder
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
//encoder 8x3 Gate level
//module encoder(
//    input d0,
//    input d1,
//    input d2,
//    input d3,
//    input d4,
//    input d5,
//    input d6,
//    input d7,
//    output y0,
//    output y1,
//    output y2
//    );
//or out1(y0,d7,d5,d3,d1);
//or out3(y2,d7,d6,d5,d4);
//or out2(y1,d7,d6,d2,d3);
//endmodule


//1960628 Prem
//encoder 8x3 Data Flow
//module encoder(
//    input d0,
//    input d1,
//    input d2,
//    input d3,
//    input d4,
//    input d5,
//    input d6,
//    input d7,
//    output y0,
//    output y1,
//    output y2
//    );
//assign y0 = d7+d5+d3+d1;
//assign y1 = d7+d6+d2+d3;
//assign y2 = d7+d6+d5+d4;
//endmodule


//1960628 Prem
//encoder 8x3 Behavioural
module encoder(
    output reg [2:0]y,
    input [7:0]d
    );
always @(d,y)
    begin
        case(d)
        8'b10000000:begin y=3'b000; end
        8'b01000000:begin y=3'b001; end
        8'b00100000:begin y=3'b010; end
        8'b00010000:begin y=3'b011; end
        8'b00001000:begin y=3'b100; end
        8'b00000100:begin y=3'b101; end
        8'b00000010:begin y=3'b110; end
        8'b00000001:begin y=3'b111; end
        endcase
    end
endmodule