module Problem1_tb;
reg[0:4] I;
wire F;
Problem1 p1(F, I[0], I[1], I[2], I[3]);
initial begin
    for(I=0; I<16; I=I+1) begin
        #5;
        $display("%t I=%b  F=%b", $time, I, F)
    end
    
end
endmodule