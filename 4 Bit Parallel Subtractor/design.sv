module Subtractor_4bit(
    input [3:0] A,        // Minuend
    input [3:0] B,        // Subtrahend
    input Borrow_in,      // Initial borrow input (usually 0)
    output [3:0] Diff,    // Difference result
    output Borrow_out     // Final borrow output
);
    wire [3:0] borrow;    // Internal borrow wires

    // Subtraction logic using bitwise full subtractors
    assign {borrow[0], Diff[0]} = A[0] - B[0] - Borrow_in;
    assign {borrow[1], Diff[1]} = A[1] - B[1] - borrow[0];
    assign {borrow[2], Diff[2]} = A[2] - B[2] - borrow[1];
    assign {Borrow_out, Diff[3]} = A[3] - B[3] - borrow[2];
endmodule
