`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 09:45:50
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb;
reg [1:0] sel;
reg i0,i1,i2,i3;
wire y;
mux_4_1 mux(sel, i0, i1, i2, i3, y);
initial begin
$monitor("sel = %b -> i3 = %0b, i2 = %b ,i1 = %b, i0 = %0b -> y = %0b", sel,i3,i2,i1,i0, y);
{i3,i2,i1,i0} = 4'h5;
repeat(6) begin
sel= $random;
#5;
end
end
endmodule 


