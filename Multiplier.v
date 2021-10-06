`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:25:33 11/08/2019 
// Design Name: 
// Module Name:    Multiplier 
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
module Multiplier(
    input [1:0] A,
    input [1:0] B,
    output [3:0] Out
    );
	 wire w1 , w2 , w3 , w4;
    assign Out[0] = A[0] & B[0];
	 assign w1 = A[0] & B[1];
	 assign w2 = A[1] & B[0];
	 Half_Adder f0( .A(w1) , .B(w2) , .Sum(Out[1]) , .Cout(w3));
	 assign w4 =A[1] & B [1];
	 Half_Adder f1(.A(w4) , .B(w3) , .Sum(Out[2]) , .Cout(Out[3]));
	 

endmodule
