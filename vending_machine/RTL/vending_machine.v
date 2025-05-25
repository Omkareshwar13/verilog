module vending_machine(clk,
                        rstn,
                        coin,
                        pr,
                        ch);

    //Port direction
    input clk,rstn;
    input [1:0] coin;
    output pr,ch;

    //States
    parameter IDLE    = 3'b000,
              RS1     = 3'b001,
              RS2     = 3'b010,
              PRODUCT = 3'b011,
              CHANGE  = 3'b100;

    reg [2:0] pr_state,next_state;

    //Present state logic
    always@(posedge clk) begin
        if(!rstn)
            pr_state <= IDLE;
        else
            pr_state <= next_state;
    end

    //Next state logic
    always@(pr_state,coin) begin
        case(pr_state)
            IDLE : 
                if(coin == 1)
                    next_state = RS1;
                else if(coin == 2)
                    next_state = RS2;
                else
                    next_state = IDLE;
            RS1 :
                if(coin == 1)
                    next_state = RS2;
                else if(coin == 2)
                    next_state = PRODUCT;
                else
                    next_state = IDLE;
            RS2 :
                if(coin == 1)
                    next_state = PRODUCT;
                else if(coin == 2)
                    next_state = CHANGE;
                else
                    next_state = IDLE;
            PRODUCT :
            begin
                next_state = IDLE;
            end
            CHANGE :
            begin
                next_state = IDLE;
            end
        endcase
    end

    //output logic
    assign pr = (pr_state == PRODUCT) || (pr_state == CHANGE);
    assign ch = (pr_state == CHANGE);
endmodule
