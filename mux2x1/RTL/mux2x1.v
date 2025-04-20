module mux2x1(s,a,b,f);

    //port direction

    input s,a,b;
    output f;

    wire w0,w1,w2;

    not n(w0,s);

    and and1(w1,w0,a);
    and and2(w2,s,b);

    or or1(f,w1,w2);

endmodule
