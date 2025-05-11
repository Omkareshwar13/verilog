module decoder3to8_tb();

    //ports
    reg [2:0] in;
    wire [7:0] out;

    reg [3:0] i;
    decoder3to8 DUT(.in(in),.out(out));
    initial begin
        for(i=0;i<8;i=i+1) begin
            in = i;
            #5;
        end
        $finish;
    end
endmodule
