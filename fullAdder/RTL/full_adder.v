module full_adder(a,
                  b,
                  cin,
                  sum,
                  cout);

    //port direction

    input a,b,cin;
    output sum,cout;

    wire w0,w1,w2;

    xor s1(sum,a,b,cin);

    and a1(w0,a,b);
    and a2(w1,b,cin);
    and a3(w2,a,cin);

    or f(cout,w0,w1,w2);

endmodule
