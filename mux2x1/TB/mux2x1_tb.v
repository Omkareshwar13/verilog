module mux2x1_tb();

    reg s,a,b;
    wire f;

    //DUT

    mux2x1 DUT (.s(s),.a(a),.b(b),.f(f));

    initial
    begin
        s=0; a=0; b=0;
        #10; //f=0
        s=0; a=0; b=1;
        #10; //f=0
        s=0; a=1; b=0;
        #10; //f=1
        s=0; a=1; b=1;
        #10; //f=1;
        s=1; a=0; b=0;
        #10; //f=0
        s=1; a=0; b=1;
        #10; //f=1
        s=1; a=1; b=0;
        #10; //f=0
        s=1; a=1; b=1;
        #10; //f1
        $finish;
    end
endmodule
