`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 20:46:54
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb;
  reg i0, i1, sel;
  wire y;
  
  mux_2_1 mux(sel, i0, i1, y);
  initial begin
    $monitor("sel = %h: i0 = %h, i1 = %h --> y = %h", sel, i0, i1, y);
    i0 = 0; i1 = 1;
    sel = 0;
    #1;
    sel = 1;
  end
endmodule

 