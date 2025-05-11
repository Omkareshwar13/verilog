module priorityEnc3to8_tb();

    reg [7:0] in;
    wire [2:0] out;

    priorityEnc3to8 DUT (.in(in),.out(out));

    initial begin
        in = 8'b 0000_0001;
        #10;

        in = 8'b 0000_0010;
        #10;

        in = 8'b 0000_0000;
        #10;

        in = 8'b 0000_0100;
        #10;

        in = 8'b 0000_1000;
        #10;

        in = 8'b 0000_0000;
        #10;

        in = 8'b 0001_0000;
        #10;

        in = 8'b 0010_0000;
        #10;

        in = 8'b 0000_0000;
        #10;

        in = 8'b 0100_0000;
        #10;

        in = 8'b 1000_0000;
        #10;

        $finish;
    end
endmodule
