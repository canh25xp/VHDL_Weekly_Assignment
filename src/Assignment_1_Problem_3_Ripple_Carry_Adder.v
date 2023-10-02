module Ripple_Carry_Adder(X, Y, Ci, S, Co);
output [3:0] S;
output Co;
input[3:0] X, Y;
input Ci;
wire w1, w2, w3;
full_adder fa0(S[0], w1, X[0], Y[0], Ci);
full_adder fa1(S[1], w2, X[1], Y[1], w1);
full_adder fa2(S[2], w3, X[2], Y[2], w2);
full_adder fa3(S[3], Co, X[3], Y[3], w3);
endmodule