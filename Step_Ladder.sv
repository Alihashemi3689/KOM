module Step_Ladder (
	input   clk,rst,
    input  [255:0] X1,X2,Z2,X3,Z3,
    output logic [255:0] X2N,Z2N,X3N,Z3N
);

logic [255:0] T1;
logic [255:0] T2;
logic [255:0] T3;
logic [255:0] T4;
logic [255:0] T7;
logic [255:0] T9;

logic [255:0] R0;
logic [255:0] R1;
logic [255:0] R2;
logic [255:0] R3;

logic [255:0] ad1,ad2,ad3,sub1,sub2,sub3,a,b,result;

logic [3:0] SC;



Field_Multiplier Field_Multiplier(clk,a,b,result); // Multiplier

assign  ad3 = ($signed(ad1 + ad2) >= 0)? (ad1 + ad2) : (ad1 + ad2) + ({1'b1, 255'd0} - 19); // Adder

assign  sub3 = ($signed(sub1 - sub2) >= 0)? (sub1 - sub2) : (sub1 - sub2) + ({1'b1, 255'd0} - 19); // Subtractor


always @(*)
	begin
	
		case (SC)
		  4'b0000: // Cycle0
		  begin
			 //T1 = X2 + Z2;
			 ad1 = X2;
			 ad2 = Z2;
			 //T2 = X2 - Z2;
			 sub1 = X2;
			 sub2 = Z2;
			 
			 T1 = ad3;
			 T2 = sub3;
			 
			 a = T1;
			 b = T1;
			 
			 R0 = T1;
			 R1 = T2;
			 
			 // Cycle 11
			 Z2N = result;
		  end
		  
		  4'b0001: // Cycle1
		  begin
			 a = R1;
			 b = R1;
			 
			 // Cycle 12
			 Z3N = result;
		  end
		  
		  4'b0010: // Cycle2
		  begin
			//T3 = X3 + Z3;
			 ad1 = X3;
			 ad2 = Z3;

			 //T4 = X3 - Z3;
			 sub1 = X3;
			 sub2 = Z3;
			 
			 T3 = ad3;
			 T4 = sub3;
			 
			 a = R0;
			 b = T4;
			 
			 R2 = T3;
			 R3 = T4;
		  end
		  
		  4'b0011: // Cycle3
		  begin
		     a = R1;
			 b = R2;
			 R0 = result; 
		  end
		  
		  4'b0100: // Cycle4
		  begin 
			 T7 = result;
			 sub1 = R0;
			 sub2 = T7;
			 a = R0;
			 b = T7;
			 R1 = T7;
			 R3 = sub3;
		  
		   
		  end
		  
		  4'b0101: // Cycle5
		  begin
			 a = 256'd121666;
			 b = R3;
			 R0 = result;
		  end
		  
		  4'b0110: // Cycle6
		  begin
		     T9 = result;
			 
			 ad1 = R0;
			 ad2 = T9;
			 
			 sub1 = R0;
			 sub2 = T9;
			 
			 a = sub3;
			 b = sub3;
			 
			 R2 = ad3;
		  end
		
		  4'b0111: // Cycle7
		  begin
			 a = R2;
			 b = R2;
			 X2N = result;
		  end
		
		
		  4'b1000: // Cycle8
		  begin

			 ad1 = R1;
			 ad2 = result;
			 
			 a = R3;
			 b = ad3;
		  end
		  
		  4'b1001: // Cycle9
		  begin
			 a = X1;
			 b = result;
			 
		  end
		  
		  4'b1010: // Cycle10
		  begin
			 X3N = result;
			 
		  end
		  
		  
		  default: // ELSE
		 
		  begin
		     
		  end
		endcase
	end
	  

always @(posedge clk)
  begin
    if (rst == 1'b1 || SC == 4'b1010)
      SC <= 4'b0000;
    else
      SC <= SC + 1;       
  end





endmodule



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

#100

rst = 1;
 X2 = 91;
 Z2 = 71;
 X3 = 32;
 Z3 = 20;
#1 

rst = 0;

 
 end

endmodule
