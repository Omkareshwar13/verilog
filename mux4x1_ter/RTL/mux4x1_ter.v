module mux4x1_ter(input [1:0]s,
                  input [3:0]in,
                  output f);
    //4:1 mux design using ternary operator
    assign f = s[0] ? (s[1]?in[3]:in[1]) : (s[1]?in[2]:in[0]) ;
endmodule
