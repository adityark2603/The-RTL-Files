`timescale 1ns/1ps

module full_adder (
    input  logic x,
    input  logic y,
    input  logic cin,
    output logic s,
    output logic carry
);

    // Sum logic (3-input XOR)
    assign s = x ^ y ^ cin;

    // Carry logic
    assign carry = (x & y) | (cin & (x ^ y));

endmodule
