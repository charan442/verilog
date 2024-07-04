module Mux2to1(
    input wire A,    
    input wire B,     
    input wire Sel,   
    output wire Y     
);

wire nSel, And0, And1;
  
not (nSel, Sel);
and (And0, A, nSel);
and (And1, B, Sel);
or (Y, And0, And1);

endmodule
