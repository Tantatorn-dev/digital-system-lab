`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:03 11/10/2019 
// Design Name: 
// Module Name:    compute_add 
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
module compute_add(
    input [7:0] A,
    input [7:0] B,
    output [7:0] Result
    );
	
	assign Result = A + B;
	

endmodule
