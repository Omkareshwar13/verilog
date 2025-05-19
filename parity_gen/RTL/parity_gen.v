module parity_gen(in,p);

    //port direction
    input [2:0]in;
    output p;

    
    assign p = ^in;
endmodule
