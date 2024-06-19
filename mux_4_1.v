`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 09:37:50
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(
input [1:0] sel,
input i0,i1,i2,i3,
output reg y);

always @(*) begin
case(sel)
2'h0: y = i0;
2'h1: y = i1;
2'h2: y = i2;
2'h3: y = i3;
default: $display("Invalid sel input");
endcase 
end
endmodule

   
