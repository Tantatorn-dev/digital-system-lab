`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:59 11/10/2019 
// Design Name: 
// Module Name:    binary_to_hex 
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
module binary_to_hex(
    input [3:0] binary_in,
    output reg [6:0] hex_out
    );
	
	always @(*) 
	begin
		case(binary_in) 
			4'b0000: begin
				hex_out <= 7'b1111110;
			end
			4'b0001: begin
				hex_out <= 7'b0110000;
			end
			4'b0010: begin
				hex_out <= 7'b1101101;
			end
			4'b0011: begin
				hex_out <= 7'b1111001;
			end
			4'b0100: begin
				hex_out <= 7'b0110011;
			end
			4'b0101: begin
				hex_out <= 7'b1011011;
			end
			4'b0110: begin
				hex_out <= 7'b1011111;
			end
			4'b0111: begin
				hex_out <= 7'b1110000;
			end
			4'b1000: begin
				hex_out <= 7'b1111111;
			end
			4'b1001: begin
				hex_out <= 7'b1111011;
			end
			4'b1010: begin
				hex_out <= 7'b1110111;
			end
			4'b1011: begin
				hex_out <= 7'b0011111;
			end
			4'b1100: begin
				hex_out <= 7'b1001110;
			end
			4'b1101: begin
				hex_out <= 7'b0111101;
			end
			4'b1110: begin
				hex_out <= 7'b1001111;
			end
			4'b1111: begin
				hex_out <= 7'b1000111;
			end
			default: begin
				hex_out <= 7'b0000000;
			end
		endcase
	end

endmodule
