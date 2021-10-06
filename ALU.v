`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:08:43 11/08/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [3:0] A,
    input [3:0] B,
	 input Cin,
    output [3:0] Out1,
	 output Cout,
	 output [7:0] Out2
    );
	 wire [2:0]wi;
    Full_Adder F0 (.A(A[0]) , .B(B[0]) , .Cin(Cin) ,.Sum(Out1[0]) , .Cout(wi[0]));
	 Full_Adder F1 (.A(A[1]) , .B(B[1]) , .Cin(wi[0]) ,.Sum(Out1[1]) , .Cout(wi[1]));
	 Full_Adder F2 (.A(A[2]) , .B(B[2]) , .Cin(wi[1]) ,.Sum(Out1[2]) , .Cout(wi[2]));
	 Full_Adder F3 (.A(A[3]) , .B(B[3]) , .Cin(wi[2]) ,.Sum(Out1[3]) , .Cout(Cout));
	 Four_Bit_Multiplier M( .A(A), .B(B) , .Out(Out2));
	 


endmodule
