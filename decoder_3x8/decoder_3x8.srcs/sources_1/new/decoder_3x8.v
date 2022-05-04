`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2022 16:09:24
// Design Name: 
// Module Name: decoder_3x8
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
//Demux 3x8 Gate level 
//module decoder_3x8(
//    input s0,
//    input s1,
//    input s2,
//    output d0,
//    output d1,
//    output d2,
//    output d3,
//    output d4,
//    output d5,
//    output d6,
//    output d7
//    );
//wire w0,w1,w2;
//not no1(w0,s0);
//not no2(w1,s1);
//not no3(w2,s2);

//and and0(d0,w2,w1,w0);
//and and1(d1,w2,w1,s0);
//and and2(d2,w2,s1,w0);
//and and3(d3,w2,s1,s0);
//and and4(d4,s2,w1,w0);
//and and5(d5,s2,w1,s0);
//and and6(d6,s2,s1,w0);
//and and7(d7,s2,s1,s0);
//endmodule


//1960628 Prem
//3x8 decoder Dataflow
//module decoder_3x8(
//    input s0,
//    input s1,
//    input s2,
//    output d0,
//    output d1,
//    output d2,
//    output d3,
//    output d4,
//    output d5,
//    output d6,
//    output d7
//    );

//assign w0 = ~s0;
//assign w1 = ~s1;
//assign w2 = ~s2;
//assign d0 = w2&w1&w0;
//assign d1 = w2&w1&s0;
//assign d2 = w2&s1&w0;
//assign d3 = w2&s1&s0;
//assign d4 = s2&w1&w0;
//assign d5 = s2&w1&s0;
//assign d6 = s2&s1&w0;
//assign d7 = s2&s1&s0;
//endmodule



//1960628 Prem
//3x8 Decoder Behavioural Modelling
module decoder_3x8(
    input s0,
    input s1,
    input s2,
    output reg d0,
    output reg d1,
    output reg d2,
    output reg d3,
    output reg d4,
    output reg d5,
    output reg d6,
    output reg d7
    );
always @(s0,s1,s2)
    begin
        case ({s2,s1,s0})
        3'b000: begin d0=1;d1=0;d2=0;d3=0;d4=0;d5=0;d6=0;d7=0;end
        3'b001: begin d0=0;d1=1;d2=0;d3=0;d4=0;d5=0;d6=0;d7=0;end
        3'b010: begin d0=0;d1=0;d2=1;d3=0;d4=0;d5=0;d6=0;d7=0;end
        3'b011: begin d0=0;d1=0;d2=0;d3=1;d4=0;d5=0;d6=0;d7=0;end
        3'b100: begin d0=0;d1=0;d2=0;d3=0;d4=1;d5=0;d6=0;d7=0;end
        3'b101: begin d0=0;d1=0;d2=0;d3=0;d4=0;d5=1;d6=0;d7=0;end
        3'b110: begin d0=0;d1=0;d2=0;d3=0;d4=0;d5=0;d6=1;d7=0;end
        3'b111: begin d0=0;d1=0;d2=0;d3=0;d4=0;d5=0;d6=0;d7=1;end
        default: begin d0=0;d1=0;d2=0;d3=0;d4=0;d5=0;d6=0;d7=0;end
        endcase
    end

endmodule
