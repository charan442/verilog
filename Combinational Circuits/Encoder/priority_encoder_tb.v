`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 10:55:08
// Design Name: 
// Module Name: tb
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


module tb;
  reg [7:0] D;
  wire [2:0] y;
  
  priority_encoder pri_enc(D, y);
  
  initial begin
    $monitor("D = %b -> y = %0b", D, y);
    repeat(5) begin
      D=$random; #1;
    end
  end
endmodule


    