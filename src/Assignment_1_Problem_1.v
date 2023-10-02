module Problem1(F,A,B,C,D);
input A,B,C,D;
output F;
wire S1,S2,S3,S4;
not N1(S1,B);
not N2(S2,D);
and A1(S3,S1,C);
and A2(S4,S1,S2);
or O1(F,A,S3,S4);
endmodule