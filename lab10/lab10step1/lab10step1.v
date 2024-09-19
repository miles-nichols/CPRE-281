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
// CREATED		"Thu Apr 11 13:04:37 2024"

module lab10step1(
	IN,
	CLK,
	Q4,
	pin_name2,
	pin_name1,
	pin_name3
);


input wire	IN;
input wire	CLK;
output reg	Q4;
output wire	pin_name2;
output wire	pin_name1;
output wire	pin_name3;

wire	SYNTHESIZED_WIRE_8;
reg	DFF_dff1;
reg	DFF_dff2;
reg	DFF_dff3;

assign	pin_name2 = DFF_dff3;
assign	pin_name1 = DFF_dff1;
assign	pin_name3 = DFF_dff2;
assign	SYNTHESIZED_WIRE_8 = 1;




always@(posedge CLK or negedge SYNTHESIZED_WIRE_8 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_8)
	begin
	DFF_dff1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	DFF_dff1 <= 1;
	end
else
	begin
	DFF_dff1 <= IN;
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_8 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_8)
	begin
	DFF_dff2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	DFF_dff2 <= 1;
	end
else
	begin
	DFF_dff2 <= DFF_dff1;
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_8 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_8)
	begin
	DFF_dff3 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	DFF_dff3 <= 1;
	end
else
	begin
	DFF_dff3 <= DFF_dff2;
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_8 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_8)
	begin
	Q4 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	Q4 <= 1;
	end
else
	begin
	Q4 <= DFF_dff3;
	end
end



endmodule
