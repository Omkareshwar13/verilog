module b4FullAdder(a0,b0,
                   a1,b1,
                   a2,b2,
                   a3,b3,
                   s0,s1,
                   s2,s3,
                   cin,cout);

    //port direction

    input a0,b0,a1,b1,a2,b2,a3,b3,cin;
    output cout,s0,s1,s2,s3;

    wire c0,c1,c2;

    full_adder fa0 (.a(a0),.b(b0),.cin(cin),.sum(s0),.cout(c0));
    full_adder fa1 (.a(a1),.b(b1),.cin(c0),.sum(s1),.cout(c1));
    full_adder fa2 (.a(a2),.b(b2),.cin(c1),.sum(s2),.cout(c2));
    full_adder fa3 (.a(a3),.b(b3),.cin(c2),.sum(s3),.cout(cout));
endmodule
