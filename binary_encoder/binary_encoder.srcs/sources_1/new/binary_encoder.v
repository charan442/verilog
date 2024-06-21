`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 09:22:26
// Design Name: 
// Module Name: binary_encoder
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


module binary_encoder(
input [7:0] D,
output [2:0] y);

assign y[2] = D[4] | D[5] | D[6] | D[7];
assign y[1] = D[2] | D[3] | D[6] | D[7];
assign y[0] = D[1] | D[3] | D[5] | D[7];
endmodule
