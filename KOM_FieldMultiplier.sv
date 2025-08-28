module Field_Multiplier (
    input clk,
    input [255:0] a,b,
    output logic[254:0]  result
);
logic [128:0] R0,R1;
logic [127:0] ah,bh,al,bl;
logic [255:0] R2,R3,R5;
logic [257:0] R4;
logic [259:0] w1;
logic [261:0] t1;
logic [389:0] C;

always @(posedge clk)
	begin
	//stage 0 part 0
	R0 <= a[255:128] + a[127:0];
	R1 <= b[255:128] + b[127:0];
	ah <= a[255:128];
	bh <= b[255:128];
	al <= a[127:0];
	bl <= b[127:0];
	//stage 1
	R2 <= ah * bh;
	R3 <= al * bl;
	R4 <= R0 * R1;
	//stage 2
	R5 <= C[389:255] + (C[389:255] << 1) + (C[389:255] << 4) + C[254:0];
	end

//stage 2		
assign w1 = (R4 - R2) - R3;
assign t1 =  ((R2 << 1) + (R2 << 2)) + (R2 << 5);
assign C = ((w1 << 128) + t1) + R3;

//stage 0 part1
assign result = ($signed(R5 - ({1'b1, 255'd0} - 19)) >= 0) ? R5 - ({1'b1, 255'd0} - 19) : R5;

endmodule
