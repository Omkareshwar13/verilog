module b4FullAdder_tb();

    reg a0,a1,a2,a3;
    reg b0,b1,b2,b3;
    reg cin;

    wire s0,s1,s2,s3;
    wire cout;

    b4FullAdder DUT(.a0(a0),.a1(a1),.a2(a2),.a3(a3),
                    .b0(b0),.b1(b1),.b2(b2),.b3(b3),
                    .s0(s0),.s1(s1),.s2(s2),.s3(s3),
                    .cin(cin),.cout(cout));
    initial begin
        {a0,a1,a2,a3} = 4'b0000;
        {b0,b1,b2,b3} = 4'b0000;
        cin = 1'b0;
        #10;

        {a0,a1,a2,a3} = 4'b0000;
        {b0,b1,b2,b3} = 4'b1111;
        cin = 1'b0;
        #10;

        {a0,a1,a2,a3} = 4'b1111;
        {b0,b1,b2,b3} = 4'b1111;
        cin = 1'b0;
        #10;

        {a0,a1,a2,a3} = 4'b0000;
        {b0,b1,b2,b3} = 4'b0000;
        cin = 1'b1;
        #10;

        {a0,a1,a2,a3} = 4'b1111;
        {b0,b1,b2,b3} = 4'b0000;
        cin = 1'b1;
        #10;

        {a0,a1,a2,a3} = 4'b1111;
        {b0,b1,b2,b3} = 4'b1111;
        cin = 1'b1;
        #10 $finish;
    end
endmodule
