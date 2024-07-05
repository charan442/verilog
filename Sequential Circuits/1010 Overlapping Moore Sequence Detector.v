`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2024 11:02:07
// Design Name: 
// Module Name: seq_detector_1010
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


module seq_detector_1010(input bit clk, rst_n, x, output reg z);
  parameter A = 4'h1;
  parameter B = 4'h2;
  parameter C = 4'h3;
  parameter D = 4'h4;
  parameter E = 4'h5; 
  
  bit [3:0] state, next_state;
  always @( negedge rst_n) begin
    if(!rst_n) begin 
      state <= A;
    end
    else state <= next_state;
  end
  
  always @(state) begin
    case(state)
      A: begin
           if(x == 0) next_state = A;
           else       next_state = B;
         end
      B: begin
           if(x == 0) next_state = C;
           else       next_state = B;
         end
      C: begin
           if(x == 0) next_state = A;
           else       next_state = D;
         end
      D: begin
           if(x == 0) next_state = E;
           else       next_state = B;
         end
      E: begin
           if(x == 0) next_state = A;
           else       next_state = D;
         end
      default: next_state = A;
    endcase
  end
  always@(state) begin
    case(state)
      A : z = 0;
      B : z = 0;
      C : z = 0;
      D : z = 0;
      E : z = 1;
      default : z = 0;
    endcase
  end
endmodule

    
