`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 12:31:01
// Design Name: 
// Module Name: Reduction_op
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


module Reduction_op;
  reg [3:0] i1;
  initial begin
    i1 = 4'h6;
    $display("For operator: (&) : i1 = %b -> %b", i1, &i1);
    $display("For operator: (|) : i1 = %b -> %b", i1, |i1);
    $display("For operator: (^) : i1 = %b -> %b", i1, ^i1);
    $display("For operator: (~&): i1 = %b -> &b", i1, ~&i1);
    $display("For operator: (~|): i1 = %b -> %b", i1, ~|i1);
    $display("For operator: (~^): i1 = %b -> &b", i1, ~^i1);
    
    i1 = 4'b1x0z;
    $display("For operator: (&) : i1 = %b -> %b", i1, &i1);
    $display("For operator: (|) : i1 = %b -> %b", i1, |i1);
    $display("For operator: (^) : i1 = %b -> %b", i1, ^i1);
    $display("For operator: (~&): i1 = %b -> %b", i1, ~&i1);
    $display("For operator: (~|): i1 = %b -> %b", i1, ~|i1);
    $display("For operator: (~^): i1 = %b -> %b", i1, ~^i1);    
  end
endmodule
