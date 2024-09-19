module mux_2to1(
    input wire sel,    // Select signal
    input wire data0,  // Input 0
    input wire data1,  // Input 1
    output reg out     // Output
);

always @(*) begin
    if (sel == 0) begin
        out = data0;
    end
    else begin
        out = data1;
    end
end

endmodule