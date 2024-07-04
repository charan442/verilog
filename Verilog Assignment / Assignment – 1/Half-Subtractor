module HalfSubtractor(
    input wire A,     // Minuend
    input wire B,     // Subtrahend
    output wire Diff, // Difference
    output wire Borrow // Borrow
);

assign Diff = A ^ B;        // XOR gate for difference
assign Borrow = ~A & B;     // AND gate with NOT for borrow

endmodule
