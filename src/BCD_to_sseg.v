module BCD_to_sseg(output reg [6:0] sseg, input [3:0] BCD);
	always @* begin
        case (BCD)
            4'h0: sseg [6:0] = 7'b0000001; //a,b,c,d,e,f lit		
            4'h1: sseg [6:0] = 7'b1001111; //b,c lit
            4'h2: sseg [6:0] = 7'b0010010; //a,b,d,e,g lit
            4'h3: sseg [6:0] = 7'b0000110; //a,b,c,d,g lit
            4'h4: sseg [6:0] = 7'b1001100; //b,c,f,g lit
            4'h5: sseg [6:0] = 7'b0100100; //a,c,d,f,g lit
            4'h6: sseg [6:0] = 7'b0100000; //a,c,d,e,f,g lit
            4'h7: sseg [6:0] = 7'b0001111; //a,b,c lit
            4'h8: sseg [6:0] = 7'b0000000; //a,b,c,d,e,f,g lit
            4'h9: sseg [6:0] = 7'b0000100; //a,b,c,d,f,g lit
            default : sseg [6:0] = 7'bx; //a,e,f,g lit
        endcase
	end
endmodule

module BCD_to_sseg_tb;
    reg [3:0] BCD_in;
    wire [6:0] display;

    BCD_to_sseg test(display, BCD_in);

    initial begin
        #10 BCD_in = 0;
        #10 BCD_in = 0;
        
    end
    initial begin
        #10 BCD_in = 0;
        #10 BCD_in = 1;
        #10 BCD_in = 2;
        #10 BCD_in = 3;
        #10 BCD_in = 4;
        #10 BCD_in = 5;
        #10 BCD_in = 6;
        #10 BCD_in = 7;
        #10 BCD_in = 8;
        #10 BCD_in = 9;
        
    end
endmodule

