module vending_machine_tb();

   reg clk,rstn;
   reg [1:0] coin;
   wire pr,ch;

   vending_machine DUT (.clk(clk),.rstn(rstn),.coin(coin),.pr(pr),.ch(ch));

   initial begin
       clk = 0;
       forever begin
           clk = ~clk;
           #5;
       end
   end

   //1+1+1
   task test_111();
       begin
           coin = 2'b01;
           @(negedge clk);

           coin = 2'b01;
           @(negedge clk);

           coin = 2'b01;
           @(negedge clk);
       end
   endtask

   //1+1+2
   task test_112();
       begin
           coin = 2'b01;
           @(negedge clk);

           coin = 2'b01;
           @(negedge clk);

           coin = 2'b10;
           @(negedge clk);
       end
   endtask

   //2+1
   task test_21();
       begin
           coin = 2'b10;
           @(negedge clk);

           coin = 2'b01;
           @(negedge clk);
       end
   endtask

   //2+2
   task test_22();
       begin
           coin = 2'b10;
           @(negedge clk);

           coin = 2'b10;
           @(negedge clk);
       end
   endtask

   task reset();
       begin
           rstn = 1'b0;
           coin = 2'b0;
           @(negedge clk);
           rstn = 1'b1;
       end
   endtask

   initial begin
       reset();

       test_111();
       reset();

       test_112();
       reset();

       test_21();
       reset();

       test_22();
       reset();

       repeat(2) @(negedge clk);

       $finish;
   end
endmodule
