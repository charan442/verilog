module DFlipFlop(
    input wire C,       
    input wire Clk,     
    input wire Rst_n,   
    output reg K        
);

always @(negedge Clk or negedge Rst_n) begin
    if (!Rst_n)
        C <= 1'b0;     
    else
        K <= C;    
end

endmodule
