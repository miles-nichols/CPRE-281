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
// CREATED		"Thu Apr 11 13:24:30 2024"

module lab10step2b(
	Enable,
	Clock,
	CLRN,
	Z,
	Q3,
	Q2,
	Q1,
	Q0
);


input wire	Enable;
input wire	Clock;
input wire	CLRN;
output reg	Z;
output wire	Q3;
output wire	Q2;
output wire	Q1;
output wire	Q0;

wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
reg	TFF_inst;
reg	TFF_inst1;
reg	TFF_inst2;
reg	TFF_inst3;
wire	SYNTHESIZED_WIRE_11;

assign	Q3 = TFF_inst3;
assign	Q2 = TFF_inst2;
assign	Q1 = TFF_inst1;
assign	Q0 = TFF_inst;
assign	SYNTHESIZED_WIRE_12 = 1;




always@(posedge Clock or negedge CLRN or negedge SYNTHESIZED_WIRE_12)
begin
if (!CLRN)
	begin
	TFF_inst <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	TFF_inst <= 1;
	end
else
	TFF_inst <= TFF_inst ^ Enable;
end


always@(posedge Clock or negedge CLRN or negedge SYNTHESIZED_WIRE_12)
begin
if (!CLRN)
	begin
	TFF_inst1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	TFF_inst1 <= 1;
	end
else
	TFF_inst1 <= TFF_inst1 ^ SYNTHESIZED_WIRE_13;
end


always@(posedge Clock or negedge CLRN or negedge SYNTHESIZED_WIRE_12)
begin
if (!CLRN)
	begin
	TFF_inst2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	TFF_inst2 <= 1;
	end
else
	TFF_inst2 <= TFF_inst2 ^ SYNTHESIZED_WIRE_14;
end


always@(posedge Clock or negedge CLRN or negedge SYNTHESIZED_WIRE_12)
begin
if (!CLRN)
	begin
	TFF_inst3 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	TFF_inst3 <= 1;
	end
else
	TFF_inst3 <= TFF_inst3 ^ SYNTHESIZED_WIRE_15;
end


assign	SYNTHESIZED_WIRE_13 = Enable & TFF_inst;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_13 & TFF_inst1;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_14 & TFF_inst2;

assign	SYNTHESIZED_WIRE_11 = TFF_inst3 & SYNTHESIZED_WIRE_15;


always@(posedge Clock or negedge CLRN or negedge SYNTHESIZED_WIRE_12)
begin
if (!CLRN)
	begin
	Z <= 0;
	end
else
if (!SYNTHESIZED_WIRE_12)
	begin
	Z <= 1;
	end
else
	Z <= Z ^ SYNTHESIZED_WIRE_11;
end


endmodule
