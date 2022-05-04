`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2022 12:24:01
// Design Name: 
// Module Name: basic_gate
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
//BASIC GATES 
module basic_gate(
    input in1,
    input in2,
    output out_and,
    output out_or,
    output out_nand,
    output out_nor,
    output out_xor,
    output out_not,
    output out_buf,
    output out_xnor
    );
    
not no(out_not,in1);
and an(out_and,in1,in2);
or ort(out_or,in1,in2);
xor xort(out_xor,in1,in2);
nor nort(out_nor,in1,in2);
nand nandt(out_nand,in1,in2);
xnor xnort(out_xnor,in1,in2);
buf buffet(out_buf,in1,in2);


endmodule


//1960628 prem
//dataflow
//module basic_gate(
//    input in1,
//    input in2,
//    output out_and,
//    output out_or,
//    output out_nand,
//    output out_nor,
//    output out_xor,
//    output out_not,
//    output out_buf,
//    output out_xnor
//    );
    
//assign out_not = ~in1;
//assign out_and = in1&in2;
//assign out_or = in1|in2;
//assign out_nor = ~(in1|in2);
//assign out_nand = ~(in1&in2);
//assign out_xnor = ~(in1^in2);
//assign out_xor = in1^in2;
//assign out_buf = in1;


//endmodule

//1960628 Prem
//behavioural basic gate
module basic_gate(
    input in1,
    input in2,
    output reg out_and,
    output reg out_or,
    output reg out_nand,
    output reg out_nor,
    output reg out_xor,
    output reg out_not,
    output reg out_buf,
    output reg out_xnor
    
    );

always @(in1,in2)
begin
if(in1==0&&in2==0)
begin
out_not = 1;
out_and = 0;
out_nand = 1;
out_or = 0;
out_nor = 1;
out_xor = 0;
out_xnor = 1;
out_buf = 0;
end
if(in1==1&&in2==0)
begin
out_not = 0;
out_and = 0;
out_nand = 1;
out_or = 0;
out_nor = 1;
out_xor = 0;
out_xnor = 1;
out_buf = 1;
end
if(in1==0&&in2==1)
begin
out_not = 1;
out_and = 0;
out_nand = 1;
out_or = 1;
out_nor = 0;
out_xor = 1;
out_xnor = 1;
out_buf = 0;
end
if(in1==1&&in2==1)
begin
out_not = 0;
out_and = 1;
out_nand = 0;
out_or = 1;
out_nor = 0;
out_xor = 0;
out_xnor = 1;
out_buf = 1;
end

endmodule


