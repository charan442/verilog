`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 17:00:47
// Design Name: 
// Module Name: D_flipfflop
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


module D_flipfflop(
input wire D,
input wire clk,
input wire reset,
output reg Q
);
always @(posedge clk) begin
if (reset) begin
Q <= 0;
end else begin
Q <= D;
end 
end 
endmodule



    