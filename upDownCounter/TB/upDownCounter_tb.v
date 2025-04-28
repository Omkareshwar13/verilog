module upDownCounter_tb();

    //ports declaration
    reg clk,rst,upDown;
    wire [3:0] counter;

    //Design init
    upDownCounter DUT (.clk(clk),.rst(rst),.upDown(upDown),.counter(counter));

    //clk genration
    initial begin
        clk = 1'b0; //clk init
        forever begin
            clk = ~clk;
            #5;
        end
    end

    initial begin

        //applying initial reset
        rst = 1'b1;
        upDown = 1'b1; //up conuter incremental
        @(negedge clk);
        rst = 1'b0;

        //wait for 20 cycle to verify incremental counter
        //roll down when reaches to max value
        repeat(20) @(negedge clk);

        rst = 1'b1;
        upDown = 1'b0; //down counter decremental
        @(negedge clk);
        rst = 1'b0;

        //wait for 20 cycle to verify decremental coumter
        //roll down to max value when reaches to zero
        repeat(20) @(negedge clk);

        //random testing

        //incrementing value by 5 values
        upDown = 1'b1;
        repeat(5) @(negedge clk);

        //decrementa value by 7 values
        upDown = 1'b0;
        repeat(7) @(negedge clk);

        $finish;
    end
endmodule
