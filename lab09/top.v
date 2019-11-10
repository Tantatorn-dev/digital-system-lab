`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: KMITL
// Engineer: Tantatorn Von Suksangwarn
// 
// Create Date:    12:22:29 11/10/2019 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
    input [7:0] A,
    input [7:0] B,
    input select_button,
    input clk_20Hz,
    output [6:0] SevSeg,
    output [3:0] Comm,
	 output [1:0] status 
    );
	 
	 reg [1:0] mode;
	 
	 wire [7:0] res1;
	 wire [7:0] res2;
	 wire [7:0] res3;
	 wire [7:0] res4;
	 
	 reg [7:0] res;
	 
	 always @ (posedge select_button)
	 begin
		   mode <= mode+1;
	 end
	 
	 assign status = mode;
	 
	 compute_add adder(
				.A(A),
				.B(B),
				.Result(res1)
			);
			
	compute_sub subtracter(
				.A(A),
				.B(B),
				.Result(res2)
			);
			
	compute_xor xorer(
				.A(A),
				.B(B),
				.Result(res3)
			);
			
	compute_shift_left shifter(
				.A(A),
				.Result(res4)
			);

	 
	 always @ (*)
	 begin
		case(mode)
		2'b00: begin
			 res <=res1;
		end
		2'b01: begin
			 res <=res2;
		end
		2'b10: begin
			 res <= res3;
			 end
		2'b11: begin
		    res <= res4;
				end
		endcase
	 end
	 
	 display myDisplay(
		.clk_in(clk_20Hz),
		.input_binary(res),
		.output_sevseg(SevSeg),
		.comm(Comm[1:0])
	 );
	 
	 assign Comm[3:2] = 2'b11;


endmodule
