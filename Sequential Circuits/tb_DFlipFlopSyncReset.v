`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 09:43:51
// Design Name: 
// Module Name: tb_DFlipFlopSyncReset
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


module tb_DFlipFlopSyncReset;
reg D;
reg clk;
reg reset;
wire Q;
DFlipFlopSyncReset uut(.D(D),.clk(clk),.reset(reset),.Q(Q));
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
D = 0;
reset = 0;
#10 D = 1;
#10 D = 0;
#10 reset = 1;
#10 reset = 0;
#10 D = 1;
#10 D = 0;

#10 D = 1;
#10 D = 0;
#10 reset = 1;
#10 reset = 0;
#10 D = 1;
#10 D = 0;
#20$finish;
end
initial begin
$monitor("At time %t, D = %b, reset = %b, Q = %b", $time, D, reset, Q);
end
endmodule


    