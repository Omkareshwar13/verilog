//paramter BITCOUNTER 4;
module counter(input clk,rst,
               output reg [3:0] counter);

    //port direction
/*    input clk,rst;
    output [3:0] counter;
*/
    always@(posedge clk) begin
        if(rst)
            counter <= 0;
        else begin
            counter <= counter + 1;
        end
    end
endmodule 
