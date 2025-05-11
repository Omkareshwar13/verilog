module decoder3to8(in,out);

    //port initialization
    input [2:0] in;
    output [7:0] out;

    assign  out = 1 << in;
/*    always@(in) begin
        if(in == 0)
            out = 8'b0000_0001;
        else if(in == 1)
            out = 8'b0000_0010;
        else if(in == 2)
            out = 8'b0000_0100;
        else if(in == 3)
            out = 8'b0000_1000;
        else if(in == 4)
            out = 8'b0001_0000;
        else if(in == 5)
            out = 8'b0010_0000;
        else if(in == 6)
            out = 8'b0100_0000;
        else if(in == 7)
            out = 8'b1000_0000;
    end*/
endmodule
