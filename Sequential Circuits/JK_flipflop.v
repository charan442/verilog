`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 15:17:12
// Design Name: 
// Module Name: JK_flipflop
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


module JK_flipflop(
input clk, rst_n,
input j,k,
output reg q,
output q_bar);
always@(negedge rst_n) begin
if(!rst_n) q <= 0;
else begin
case({j,k})
2'b00: q <= q;
2'b01: q <= 1'b0;
2'b10: q <= 1'b1;
2'b11: q <= 1'bx;
endcase
end
end
assign q_bar = ~q;
endmodule





