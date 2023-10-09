module Async_D_FF(output reg q, input d, clk, rst);
    always @(posedge clk or negedge rst) begin
        if(!rst)
            q <=0 ;
        else
            q <= d;
    end
endmodule

module Sync_D_FF(output reg q, input d, clk, rst);
    always @(posedge clk) begin
        if(!rst)
            q <=0 ;
        else
            q <= d;
    end
endmodule

module Flip_Flop_tb;
    reg d, clk, rst;
    wire async_q, sync_q;

    Async_D_FF D_FF1 (async_q,d,clk,rst);
    Sync_D_FF D_FF2 (sync_q,d,clk,rst);

    always #10 clk = ~clk;

    initial begin
        clk=0;d=0;rst=0;
        #15 d=1;
        #10 rst=1;
        #23 rst=0;
    end

endmodule
