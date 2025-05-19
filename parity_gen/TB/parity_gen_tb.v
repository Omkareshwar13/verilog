module parity_gen_tb();

    reg [2:0]in;
    wire p;

    parity_gen DUT(.in(in),.p(p));

    initial begin
        #10 in = 3'd0;
        #10 in = 3'd1;
        #10 in = 3'd2;
        #10 in = 3'd3;
        #10 in = 3'd4;
        #10 in = 3'd5;
        #10 in = 3'd6;
        #10 in = 3'd7;
        #10 $finish;
    end

    initial begin
        $monitor("in = %b,p = %b",in,p);
    end
endmodule
