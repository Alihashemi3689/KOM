
//test
module testbench;

logic [255:0] X1,X2,Z2,X3,Z3,X2N,Z2N,X3N,Z3N;
logic clk,rst;

Step_Ladder Step_Ladder(clk,rst,X1,X2,Z2,X3,Z3,X2N,Z2N,X3N,Z3N);


 initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

 initial begin

rst = 1;
 X1 = 3;
 X2 = 15;
 Z2 = 2;
 X3 = 36;
 Z3 = 9;
 
#10

rst = 0;
/*
#100

rst = 1;
 X2 = 91;
 Z2 = 71;
 X3 = 32;
 Z3 = 20;
#1 

rst = 0;
*/
 
 end

endmodule