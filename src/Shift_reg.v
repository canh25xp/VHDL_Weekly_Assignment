module  free_run_shift_reg 
#(parameter N=8) 
( 
input clk, rst, s_in, 
output s_out
); 
    reg [N-1:0]  r_reg; 
    wire [N-1:0] r_next; 
    always @ ( posedge clk, posedge rst) 
        if(rst) 
            r_reg <= 0;  
        else  
            r_reg <= r_next;  
    assign r_next = {s_in,r_reg[N-1:1]};
    assign s_out = r_reg[0];
endmodule

module tb;
    reg clk,rst,s_in;
    wire s_out;
    free_run_shift_reg test(clk,rst,s_in,s_out);

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    initial begin
        rst = 1; s_in=1;
        #34 rst = 0;
        #200 rst = 1; s_in=0;
        #50 rst = 0;
	    #200 $stop;
    end
endmodule
