module Encoder_8_3(output reg [2:0] out, input [7:0] in);
    always @(in) begin
        case(in)
            1 : out = 0;
            2 : out = 1;
            4 : out = 2;
            8 : out = 3;
            16 : out = 4;
            32 : out = 5;
            64 : out = 6;
            128 : out = 7;
            default : out = 3'bx;
        endcase
    end
endmodule

module Encoder_8_3_tb;
    reg [7:0] in;
    wire [2:0] out;
    Encoder_8_3 test(out, in);
    initial begin
        #10 in = 1;
        #10 in = 2;
        #10 in = 3;
        #10 in = 4;
        #10 in = 5;
        #10 in = 6;
        #10 in = 7;
        #10 in = 8;
    end
endmodule
