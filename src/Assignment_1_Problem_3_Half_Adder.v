module half_adder (X, Y, S, C);
input X, Y;
output S, C;
xor Xor (S, X, Y);
and And (C, X, Y);
endmodule