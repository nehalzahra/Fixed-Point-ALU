`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:55:59 11/11/2019
// Design Name:   ALU
// Module Name:   E:/Local Disk D/V Semester/DSD/Fixed_Point_ALU/ALU_TB.v
// Project Name:  Fixed_Point_ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] Out1;
	wire Cout;
	wire [7:0] Out2;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Out1(Out1), 
		.Cout(Cout), 
		.Out2(Out2)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0011;
		B = 4'b0100;
		Cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

