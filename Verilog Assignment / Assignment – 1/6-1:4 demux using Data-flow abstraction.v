module Demux1_4(
    input wire D,            
    input wire [1:0] Sel,    
    output wire [3:0] Y      
);
  
assign Y[0] = D & ~Sel[1] & ~Sel[0];
assign Y[1] = D & ~Sel[1] & Sel[0];
assign Y[2] = D & Sel[1] & ~Sel[0];
assign Y[3] = D & Sel[1] & Sel[0];

endmodule
