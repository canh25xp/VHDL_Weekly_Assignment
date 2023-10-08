module half_adder_tb;
reg X, Y;
wire S, C;
half_adder ha(X, Y, S, C);
initial begin
    $monitor($time," X= %b, Y=%b, S= %b, C= %b", X, Y, S, C);
end
initial begin
    #0 X=0; Y=0 ;
    #5 X=0; Y=1;
    #5 X=1; Y=0;
    #5 X=1; Y=1;
end
endmodule