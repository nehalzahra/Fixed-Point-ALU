`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:50:11 11/09/2019
// Design Name:   Multiplier
// Module Name:   E:/Local Disk D/V Semester/DSD/Fixed_Point_ALU/TB.v
// Project Name:  Fixed_Point_ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB;

	// Inputs
	reg [1:0] A;
	reg [1:0] B;

	// Outputs
	wire [3:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Multiplier uut (
		.A(A), 
		.B(B), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		A = 2;
		B = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

