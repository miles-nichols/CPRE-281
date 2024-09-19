module lab3step1(f, c, g, w);
	input c, g, w;
	output f;
	
	not(nc, c);
	not(ng, g);
	not(nw, w);
	or(M, c, ng, w);
	or(N, nc, g, nw);
	and(f, M, N);
endmodule