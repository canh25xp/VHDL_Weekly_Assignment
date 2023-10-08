module Ripple_Carry_Adder_tb;
reg [3:0] X, Y;
reg Ci;
wire [3:0] S;
wire Co;
Ripple_Carry_Adder RCA(X, Y, Ci, S, Co);
initial begin
    $monitor($time," X= %b, Y=%b, Ci= %b, S= %b, Co= %b", X, Y, Ci, S, Co);
end
initial begin
    #0 X = 4'd0; Y = 4'd0; Ci = 1'b0;
    #5 X = 4'd3; Y = 4'd4;
    #5 X = 4'd2; Y = 4'd5;
    #5 X = 4'd9; Y = 4'd9;
    #5 X = 4'd10; Y = 4'd15;
    #5 X = 4'd10; Y = 4'd5; Ci = 1'b1;
end
endmodule