//general 4:1 mux test bench
module mux4x1_ter_tb();

    reg [1:0]s; //select line
    reg [3:0]in; //input line
    wire f;  //output line

    //design init
    mux4x1_ter DUT (.s(s),.in(in),.f(f));

    initial begin

        s = 2'd0;
        in = 4'b0001;
        #10;

        in = 4'b1101;
        s = 2'd1;
        #10;

        s = 2'd2;
        in = 4'b0100;
        #10;

        s=2'd3;
        in = 4'b0111;
        #10 $finish;

    end
endmodule
