module mux4_to_1_tb;
reg IN0, IN1, IN2, IN3;
reg S1, S0;
wire OUTPUT;
mux4_to_1 mymux(OUTPUT, IN0, IN1, IN2, IN3, S1, S0);
initial begin
    IN0 = 1; IN1 = 0; IN2 = 1; IN3 = 0;
    #5 $display("%t IN0= %b, IN1= %b, IN2= %b, IN3= %b", $time, IN0,IN1,IN2,IN3);
    S1 = 0; S0 = 0;
    #5 $display("%t S1 = %b, S0 = %b, OUTPUT = %b", $time, S1, S0, OUTPUT);
    S1 = 0; S0 = 1;
    #5 $display("%t S1 = %b, S0 = %b, OUTPUT = %b", $time, S1, S0, OUTPUT);
    S1 = 1; S0 = 0;
    #5 $display("%t S1 = %b, S0 = %b, OUTPUT = %b", $time, S1, S0, OUTPUT);
    S1 = 1; S0 = 1;
    #5 $display("%t S1 = %b, S0 = %b, OUTPUT = %b", $time, S1, S0, OUTPUT);
end
endmodule