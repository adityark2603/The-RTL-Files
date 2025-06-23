module half_adder(input logic A, input logic B, output logic Sum, output logic Cout);
    assign Sum = A ^ B;
    assign Cout = A & B;
endmodule

module binary_multiplier_2bit(
    input logic [1:0] A,
    input logic [1:0] B,
    output logic [3:0] C
);
    logic A0B0, A0B1, A1B0, A1B1;
    logic sum1, carry1;

    assign A0B0 = A[0] & B[0];
    assign A0B1 = A[0] & B[1];
    assign A1B0 = A[1] & B[0];
    assign A1B1 = A[1] & B[1];

    assign C[0] = A0B0;

    half_adder ha1(A0B1, A1B0, sum1, carry1);
    assign C[1] = sum1;

    half_adder ha2(carry1, A1B1, C[2], C[3]);
endmodule
