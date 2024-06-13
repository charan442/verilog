`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 09:52:12
// Design Name: 
// Module Name: project_2
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


module project_2;
    reg [3:0] i1, i2;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("For operator: (>) : i1 = %0h > i2 = %0h: %h", i1, i2, i1>i2);
    $display("For operator: (>=): i1 = %0h >= i2 = %0h:%h", i1, i2, i1>=i2);
    $display("For operator: (<) : i1 = %0h < i2 = %0h: %h", i1, i2, i1<i2);
    
    i1 = 4'h2; i2 = 4'h6;
    $display("For operator: (<) : i1 = %0h < i2 = %0h : %h", i1, i2, i1<i2);
    $display("For operator: (<=): i1 = %0h <=i2 = %0h : %0h", i1, i2, i1<=i2);
    $display("For opoerator: (>): i1 = %0h > i2 = %0h:  %h", i1, i2, i1>12); 
  end
endmodule
