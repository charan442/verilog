module half_subtractor(
  input a, b,
  output Diff, Borrow);
  assign Diff = a ^ b;
  assign Borrow = ~a & b;
endmodule

module full_subtractor(
  input a, b, Bin,
  output Diff, Bout);
  assign Diff = a ^ b ^ Bin;
  assign Bout = (~a & b) | (~(a ^ b) & Bin);
endmodule
