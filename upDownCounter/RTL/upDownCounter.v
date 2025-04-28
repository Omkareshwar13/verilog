module upDownCounter(input clk, //clock signal
                     input rst, //reset signal
                     input upDown, //upDown Signal => 1 up (incremental), 0 => down (decremental)
                     output reg [3:0] counter); //counter to store the count values

    always@(posedge clk) begin
        if(rst) //if rst = 1, reset the counter
            counter <= 0;
        else if (upDown) // if reset is 0 and updown is 1 increment the counter by 1
            counter <= counter + 1;
        else // if reset i 0 and upDown is 0 , decrement the counter by 1
            counter <= counter - 1;
    end
endmodule
