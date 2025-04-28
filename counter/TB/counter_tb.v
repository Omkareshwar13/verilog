module counter_tb();

    //port direction
    reg clk,rst;
    wire [3:0] counter;

    //Design instantiation
    counter DUT (.clk(clk),.rst(rst),.counter(counter));

    initial begin
        clk = 1; //clk init
        forever begin
            clk = ~clk;
            #10;
        end
    end

    initial begin

        //apply initial reset
        rst = 1'b1;
        @(negedge clk);
        rst = 1'b0;

        //wait for 20 cycles to verify counter
        //increments for the every posedge of clk
        //and roll down to zero when reaches to max value.
        repeat(20) @(negedge clk);

        //applying reset
        rst = 1'b1;
        @(negedge clk);
        rst = 1'b0;

        repeat(5) @(negedge clk);
        $finish;
    end
endmodule
