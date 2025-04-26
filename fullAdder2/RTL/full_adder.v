/*Full adder using half adder*/

module full_adder(a,
                  b,
                  cin,
                  sum,
                  cout);

    //port direction

    input a,b,cin;
    output sum,cout;

    wire w0,w1,w2;

    half_adder ha0(.a(a),.b(b),.sum(w0),.cout(w1));
    half_adder ha1(.a(w0),.b(cin),.sum(sum),.cout(w2));

    or org(cout,w1,w2);

endmodule
