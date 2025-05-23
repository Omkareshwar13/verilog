//`define SELF_CHECK

module dff_tb();

    reg clk;
    reg rstn;
    reg d;
    wire q;

    dff DUT(.clk(clk),.rstn(rstn),.d(d),.q(q));

    initial begin
        clk = 1'b0;
        forever begin
            clk = ~clk;
            #5;
        end
    end

`ifdef SELF_CHECK
    always@(posedge clk) begin
        if(!rstn) begin
            if(q === 1'b0 || q === 1'bx) begin
                $display("Reset case success test");
            end
            else begin
                $display("Reset case fail test q = %b",q);
            end
        end
        else begin
            if (d == q) begin
                $display("Test success d = %b q = %b",d,q);
            end
            else begin
                $display("Test fail d = %b q = %b",d,q);
            end
        end
    end
`endif

    initial begin
        rstn = 1'b0;
        d = 1'b0;

        @(negedge clk);
        @(negedge clk);

        rstn = 1'b1;

        @(negedge clk);
        @(negedge clk);

        d = 1'b1;

        @(negedge clk);
        @(negedge clk);

        d = 1'b0;

        @(negedge clk);
        @(negedge clk);

        d = 1'b1;
        repeat(5) @(negedge clk);

        rstn = 1'b0;
        repeat(5) @(negedge clk);

        $finish;
    end
    
endmodule
