`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 11:15:24
// Design Name: 
// Module Name: XNORGATE
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


module XNORGATE(A, B, Y);
input A, B;
output Y;
assign Y = ~(A ^ B) ;
endmodule
