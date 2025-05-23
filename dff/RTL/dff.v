// RTL logic for the D Flip Flop
module dff(clk,rstn,d,q);

    input clk;
    input rstn;
    input d;
    output reg q;

    always@(posedge clk) begin
        if(!rstn) q <= 0;
        else q <= d;
    end

endmodule
