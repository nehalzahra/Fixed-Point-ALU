`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:45:01 11/11/2019
// Design Name:   Four_Bit_Multiplier
// Module Name:   E:/Local Disk D/V Semester/DSD/Fixed_Point_ALU/TBBB.v
// Project Name:  Fixed_Point_ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Four_Bit_Multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBBB;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Four_Bit_Multiplier uut (
		.A(A), 
		.B(B), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		A = 4;
		B = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

