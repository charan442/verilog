`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 10:04:57
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
int i;
binary_encoder bin_enc(D, y);
initial begin
D=8'b1; #1;
for(i=0, i<8, i++) begin
$display("D =%h(in dec:%0d) -> y = %0h", D, i, y);
D=D<<1; #1;
end 
end
endmodule
