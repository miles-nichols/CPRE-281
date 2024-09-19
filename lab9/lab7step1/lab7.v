// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.1 Build 917 02/14/2023 SC Standard Edition"
// CREATED		"Thu Mar 21 14:56:08 2024"

module lab7(
	X,
	Y,
	Cin,
	S,
	Cout
);


input wire	X;
input wire	Y;
input wire	Cin;
output wire	S;
output wire	Cout;

wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;




assign	SYNTHESIZED_WIRE_5 = X ^ Y;

assign	S = SYNTHESIZED_WIRE_5 ^ Cin;

assign	SYNTHESIZED_WIRE_3 = X & Y;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_5 & Cin;

assign	SYNTHESIZED_WIRE_2 = Y & Cin;

assign	Cout = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4;


endmodule
