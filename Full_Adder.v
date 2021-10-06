`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:10:15 11/09/2019 
// Design Name: 
// Module Name:    Full_Adder 
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
module Full_Adder(
    input A,
    input B,
    input Cin,
    output Cout,
    output Sum
    );
	 wire w1,w2,w3;
	 assign w1=A ^B;
	 assign Sum = w1^Cin;
	 assign w3 = A & B;
	 assign w4 = Cin & w1;
	 assign Cout = w3 | w4;


endmodule
