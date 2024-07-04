`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 11:42:06
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(
input sel,
  input i0, i1,
  output y);
  
  assign y = sel ? i1 : i0;
endmodule

module mux_4_1(
  input sel0, sel1,
  input  i0,i1,i2,i3,
  output reg y);
  
  wire y0, y1;
  
  mux_2_1 m1(sel1, i2, i3, y1);
  mux_2_1 m2(sel1, i0, i1, y0);
endmodule

    