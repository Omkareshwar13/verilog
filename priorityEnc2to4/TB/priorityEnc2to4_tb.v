module priorityEnc2to4_tb();

    reg [3:0] in;
    wire [1:0] out;

    priorityEnc2to4 DUT (.in(in),.out(out));

    initial
    begin
        in = 4'b0001;
        #10;
        in = 4'b0010;
        #10;
        in = 4'b0000;
        #10;
        in = 4'b0100;
        #10;
        in = 4'b1000;
        #10;
        in = 4'b0000;
        #10;
        $finish;
    end
endmodule
