`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2022 14:15:06
// Design Name: 
// Module Name: 4_1_mux_1
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
//4x1 Mux gate level
//module mux_4x1(
//    input s0,
//    input s1,
//    input i0,
//    input i1,
//    input i2,
//    input i3,
//    output y
//    );
//wire w0,w1,w2,w3,w4,w5;
//not no1(w0,s0);
//not no2(w1,s1);
//and and1(w2,i0,w0,w1);
//and and2(w3,i1,w0,s1);
//and and3(w4,i2,w1,s0);
//and and4(w5,i3,s1,s0);
//or or1(y,w2,w3,w4,w5);
//endmodule


//1960628 PREM
//4x1 Mux Data Flow
//module mux_4x1(
//    input s0,
//    input s1,
//    input i0,
//    input i1,
//    input i2,
//    input i3,
//    output y
//    );
//assign not_0 = ~s0;
//assign not_1 = ~s1;
//assign and1 = not_1&not_0&i0;
//assign and2 = s1&not_0&i1;
//assign and3 = not_1&s0&i2;
//assign and4 = s1&s0&i3;
//assign y = and1|and2|and3|and4;

//endmodule

//1960628 Prem
//4x1 mux Behavioural
module mux_4x1(
    input s0,
    input s1,
    input i0,
    input i1,
    input i2,
    input i3,
    output reg y
    );
always @(s0 or s1 or i0 or i1 or i2 or i3)
    begin
            case({s1,s0})
            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;
            default: y = 0;
            endcase
    end

endmodule