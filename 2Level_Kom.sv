//(* use_dsp48 = "no" *)
module Field_Multiplier (
    input clk,
    input [255:0] a,b,
    output logic[254:0]  result
);
logic [64:0]  R0,R1,R2,R3;
logic [65:0]  R4,R5;
logic [127:0] R6,R7,R8,R9,R11;
logic [129:0] R10,R12,R13;
logic [131:0] R14;


logic [127:0] ah,bh,al,bl;
logic [64:0]  rah,rbh;
logic [64:0]  Rah,Rbh;
logic [63:0]  a3,b3,a2,b2,a1,b1,a0,b0;
logic [63:0]  Ral,Rbl,ral,rbl;

logic [193:0] w1,w2;
logic [133:0] w3;
logic [257:0] w4,w5;
logic [259:0] w6;

logic [134:0] ch;
logic [254:0] cl;

logic [255:0] X;

always @(posedge clk)
	begin
	//stage 0 part 0
	R0 <= a[255:192] + a[191:128];
	R1 <= b[255:192] + b[191:128];
	R2 <= a[127:64]  + a[63:0];
	R3 <= b[127:64]  + b[63:0];
	R4 <= rah + ral;
	R5 <= rbh + rbl;
	Rah <= rah;
	Rbh <= rbh;
	Ral <= ral;
	Rbl <= rbl;
	
	ah <= a[255:128];
	bh <= b[255:128];
	al <= a[127:0];
	bl <= b[127:0];
	a0 <= a[63:0];
	b0 <= b[63:0];
	a1 <= a[127:64];
	b1 <= b[127:64];
	a2 <= a[191:128];
	b2 <= b[191:128];
	a3 <= a[255:192];
	b3 <= b[255:192];
	
	//stage 1
	R6 <= a0 * b0;
	R7 <= a1 * b1;
	R8 <= a2 * b2;
	R9 <= a3 * b3;
	R10 <= Rah * Rbh;
	R11 <= Ral * Rbl;
	R12 <= R0 * R1;
	R13 <= R2 * R3;
	R14 <= R4 * R5;
	
	//stage 2
	{ch,cl} <= ((w4 << 5) + (w4 << 2)) + ((w4 << 1) + w5 ) + ((R8 << 5) + (R8 << 2)) + ((R8 << 1) + R6) + ((R10 << 256) + (R11<<128)) + (w3 << 192) - (w6 << 128);  
	end


//stage 0 part0
assign {rah , ral} = a[255:128] + a[127:0];
assign {rbh , rbl} = b[255:128] + b[127:0];

//stage 2		
assign w1 = (R12 - R8) + ((R9 << 64) - R9);
assign w2 = (R13 - R6) + ((R7 << 64) - R7);
assign w3 = (R14 - R10) - R11;
assign w4 = (w1 << 64);
assign w5 = (w2 << 64);
assign w6 = (w4 + w5) + (R8 + R6);

//stage 0 part1
assign X = (ch + cl) + ((ch << 4) + (ch << 1));
assign result = ($signed(X - ({1'b1, 255'd0} - 19)) >= 0) ? X - ({1'b1, 255'd0} - 19) : X;


endmodule



