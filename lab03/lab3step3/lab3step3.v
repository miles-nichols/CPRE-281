module lab3step3(c,g,w,f,a);
	input c,g,w,f;
	output a;
	
	assign a = ((f&~g&~w)|(~f&c&g)|(f&~c&~g)|(~f&g&w));
	endmodule