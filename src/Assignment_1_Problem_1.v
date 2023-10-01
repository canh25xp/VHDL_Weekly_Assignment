module Problem1(A,B,C,D,F);
input A,B,C,D;
output F;
wire S1,S2,S3,S4;
not N1(S1,B);
not N2(S2,D);
and A1(S3,S1,C);
and A2(S4,S1,S2);
or O1(F,A,S3,S4);
endmodule

// module Problem2_tb();
// reg a,b,c,d;
// wire out;
// Problem2 problem2(a,b,c,d,out);

// initial begin
//     #10 a = 
//     #10
//     #10
//     #10
//     #10
//     #10
//     #10
//     #10
//     #10
//     #10
//     #10
//     #10
// end

// endmodule