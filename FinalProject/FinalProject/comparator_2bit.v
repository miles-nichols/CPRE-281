module comparator_2bit(
    input num1_bit0,
    input num1_bit1,
    input num2_bit0,
    input num2_bit1,
    output eq, // output for equality
    output gt, // output for greater than
    output lt  // output for less than
);

// Truth table for equality
assign eq = (num1_bit1 == num2_bit1) && (num1_bit0 == num2_bit0);

// Truth table for greater than
assign gt = (num1_bit1 > num2_bit1) || ((num1_bit1 == num2_bit1) && (num1_bit0 > num2_bit0));

// Truth table for less than
assign lt = (num1_bit1 < num2_bit1) || ((num1_bit1 == num2_bit1) && (num1_bit0 < num2_bit0));

endmodule