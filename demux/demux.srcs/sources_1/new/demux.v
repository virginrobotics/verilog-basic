`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 21:33:40
// Design Name: 
// Module Name: demux
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
//Demux 1x4 GATE LEVEL
//module demux(
//    input din,
//    input s0,
//    input s1,
//    output y0,
//    output y1,
//    output y2,
//    output y3
//    );
//wire w0,w1;
//not no1(w0,s0);
//not no2(w1,s1);
//and out(y0,w1,w0,din);
//and out1(y1,w1,s0,din);
//and out2(y2,s1,w0,din);
//and out3(y3,s1,s0,din);

//endmodule



//1960628 Prem
//Demux 1x4 Data Flow
//module demux(
//    input din,
//    input s0,
//    input s1,
//    output y0,
//    output y1,
//    output y2,
//    output y3
//    );
//wire w0,w1;
//assign w0 = ~s0;
//assign w1 = ~s1;
//assign y0 = w1&w0&din;
//assign y1 = w1&s0&din;
//assign y2 = s1&w0&din;
//assign y3 = s1&s0&din;
//endmodule

//1960628 Prem
//Demux 1x4 Behavioural
module demux(
    input din,
    input s0,
    input s1,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
    );
always @(din or s0 or s1)
    begin 
        case({s1,s0})
            2'b00: begin y0 = din;y1 = 0;y2 = 0;y3 = 0; end
            2'b01: begin y0 = 0;y1 = din;y2 = 0;y3 = 0; end
            2'b10: begin y0 = 0;y1 = 0;y2 = din;y3 = 0; end
            2'b11: begin y0 = 0;y1 = 0;y2 = 0;y3 = din; end
            default: begin  y0 = 0;y1 = 0;y2 = 0;y3 = 0; end
        endcase
    end
            
endmodule