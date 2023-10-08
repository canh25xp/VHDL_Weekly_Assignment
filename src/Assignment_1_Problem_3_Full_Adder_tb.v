module full_adder_tb;
reg X, Y, Ci;
wire S, Co;
full_adder fa(X, Y, Ci, S, Co);
initial begin
    $monitor($time," X= %b, Y=%b, Ci= %b, S= %b, Co= %b", X, Y, Ci, S, Co);
end
initial begin
    #0 X=0; Y=0; Ci=0;
    #5 X=0; Y=0; Ci=1;
    #5 X=0; Y=1; Ci=0;
    #5 X=0; Y=1; Ci=1;
    #5 X=1; Y=0; Ci=0;
    #5 X=1; Y=0; Ci=1;
    #5 X=1; Y=1; Ci=0;
    #5 X=1; Y=1; Ci=1;
end
endmodule