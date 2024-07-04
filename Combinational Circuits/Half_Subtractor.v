`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 10:01:23
// Design Name: 
// Module Name: HalfSubtractor
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


module HalfSubtractor(
    input a, 
    input b,
    output diff, 
    output borrow
);
    assign diff = a ^ b;
    assign borrow = ~a & b;
endmodule

   
