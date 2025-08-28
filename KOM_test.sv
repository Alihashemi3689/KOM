
//test
module testbench_Field;

logic [255:0] a,b;
logic clk;
logic [254:0]result;

Field_Multiplier Field_Multiplier(clk,a,b,result);


 initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

 initial begin

 a = 9;
 b = 11;

 #10
 a = 25;
 b = 35;

  #10
 a = -126;
 b = -126;

  #10
 a = 25;
 b = 35;

  #10
 a = 1<<130;
 b = 1<<125;

  #10
 a = 25;
 b = 35;

  #10
 a = 1<<130;
 b = 1<<125;

 
 end

endmodule