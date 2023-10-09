module Majority(output reg out, input [3:0] in);
    always @(in) begin
        case(in)
            0,1,2,3,4,5,6,8 : out = 0;
            7,9,10,11,12,13,14,15 : out = 1;
        endcase
    end
endmodule

module Majority_tb;
    reg [3:0] in;
    reg [5:0] i;
    wire out;
    Majority test(out,in);
    initial begin
        for (i=0;i<16;i=i+1)
            #5 in = i;
    end
endmodule
