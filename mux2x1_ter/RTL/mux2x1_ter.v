module mux2x1_ter(S,
                  A,
                  B,
                  F);

    //port direction
    input S,A,B;
    output F;

    assign F = S ? B : A ;
endmodule
