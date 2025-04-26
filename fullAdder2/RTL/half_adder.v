module half_adder(a,
                  b,
                  sum,
                  cout);

    //port direction

    input a,b;
    output sum,cout;

    xor sm (sum,a,b);
    and carry (cout,a,b);

endmodule
