`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 09:37:51
// Design Name: 
// Module Name: DFlipFlopSyncReset
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


module DFlipFlopSyncReset(
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


  
