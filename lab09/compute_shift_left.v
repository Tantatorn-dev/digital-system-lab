`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:12:56 11/10/2019 
// Design Name: 
// Module Name:    compute_shift_left 
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
module compute_shift_left(
    input [7:0] A,
    output [7:0] Result
    );
	 
	assign Result = A << 1;


endmodule
