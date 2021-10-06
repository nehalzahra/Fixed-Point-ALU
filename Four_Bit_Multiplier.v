`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:46:24 11/09/2019 
// Design Name: 
// Module Name:    Four_Bit_Multiplier 
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
module Four_Bit_Multiplier(
    input [3:0] A,
    input [3:0] B,
    output [7:0] Out
    );
	 wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,
	 w21,w22,w23,w24,w25,w26,w27,w28,w29;
    assign Out[0]=A[0] &B[0];
	 assign w0 = A[0] & B[1];
	 assign w1 = A[1] & B[0];
	 Half_Adder m0(.A(w0) , .B(w1) , .Sum(Out[1]) , .Cout(w2));
	 assign w3 = A[0] & B[2];
	 assign w4 = A[1] & B[1];
	 Half_Adder m1(.A(w3) , .B(w4) , .Sum(w5) , .Cout(w6));
	 assign w7 = A[2] & B[0];
	 Full_Adder a0 (.A(w5) , .B(w2) , .Cin(w7) ,.Sum(Out[2]) , .Cout(w8));
	 assign w9 = A[0] & B[3];
	 assign w10 =A[1] & B[2];
	 Half_Adder m2(.A(w9) , .B(w10) , .Sum(w11) , .Cout(w12));
	 assign w13=A[2] & B[1];
	 Full_Adder a1 (.A(w11) , .B(w13) , .Cin(w6) ,.Sum(w14) , .Cout(w15));
	 assign w16=A[3] & B[0];
	 Full_Adder a2 (.A(w14) , .B(w16) , .Cin(w8) ,.Sum(Out[3]) , .Cout(w17));
	 assign w18=A[1] & B[3];
	 assign w19=A[2] & B[2];
	 Full_Adder a3 (.A(w18) , .B(w19) , .Cin(w12) ,.Sum(w20) , .Cout(w21));
    assign w22=A[3] & B[1];
    Full_Adder a4 (.A(w22) , .B(w20) , .Cin(w15) ,.Sum(w23) , .Cout(w24));
    Half_Adder m3(.A(w23) , .B(w17) , .Sum(Out[4]) , .Cout(w25));
    assign w25=A[2] & B[3];
    assign w26=A[3] & B[2];
    Full_Adder a5 (.A(w25) , .B(w26) , .Cin(w21) ,.Sum(w27) , .Cout(w28));
    Full_Adder a6 (.A(w27) , .B(w24) , .Cin(w25) ,.Sum(Out[5]) , .Cout(w29));
    Full_Adder a7 (.A(w25) , .B(w28) , .Cin(w29) ,.Sum(Out[6]) , .Cout(Out[7]));
endmodule
