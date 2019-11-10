`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:01 11/10/2019 
// Design Name: 
// Module Name:    display 
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
module display(
    input clk_in,
	 input [7:0] input_binary,
	 output [6:0] output_sevseg,
	 output reg [1:0] comm
    );
	
	// clock divider
	reg[27:0] counter = 28'd0;
	parameter DIVISOR = 28'd100000;
	wire clk_out;
	always @ (posedge clk_in) begin
		counter <= counter + 28'd1;
		if(counter >= (DIVISOR-1))
		counter <= 28'd0;
	end
	assign clk_out = (counter<DIVISOR/2)?1'b0:1'b1;
	
	reg [3:0] o;
	reg [1:0] c;
	
	always @(*)
	begin
		if(clk_out == 0) 
		begin
		o[3:0] <= input_binary[3:0];
		comm[1:0]  = 2'b10;
		end
		else if(clk_out == 1)
		begin
		o[3:0] <= input_binary[7:4];
		comm[1:0]  = 2'b01;
		end	
	end

	binary_to_hex converter(
		.binary_in(o),
		.hex_out(output_sevseg)
	);
	
	
endmodule
