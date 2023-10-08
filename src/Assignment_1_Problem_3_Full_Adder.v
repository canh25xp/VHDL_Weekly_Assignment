module full_adder (X, Y, Ci, S, Co);
input X, Y, Ci;
output S, Co;
wire w1, w2, w3;
xor (w1, X, Y);
and (w2, X, Y);
xor (S,  w1, Ci);
and (w3, w1, Ci);
xor (Co, w3, w2);
endmodule