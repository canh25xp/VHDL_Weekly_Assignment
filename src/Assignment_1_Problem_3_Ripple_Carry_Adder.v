module Ripple_Carry_Adder(X, Y, Ci, S, Co);
output [3:0] S;
output Co;
input[3:0] X, Y;
input Ci;
wire w1, w2, w3;
full_adder fa0(X[0], Y[0], Ci, S[0], w1);
full_adder fa1(X[1], Y[1], w1, S[1], w2);
full_adder fa2(X[2], Y[2], w2, S[2], w3);
full_adder fa3(X[3], Y[3], w3, S[3], Co);
endmodule