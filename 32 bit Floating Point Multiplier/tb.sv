module fp_multiplier (
    input [31:0] A, // 32-bit floating-point input A
    input [31:0] B, // 32-bit floating-point input B
    output reg [31:0] Result // 32-bit floating-point output
);
    // Extract components
    wire sign_a = A[31];
    wire sign_b = B[31];
    wire [7:0] exp_a = A[30:23];
    wire [7:0] exp_b = B[30:23];
    wire [23:0] mant_a = {1'b1, A[22:0]}; // Add implicit leading 1
    wire [23:0] mant_b = {1'b1, B[22:0]}; // Add implicit leading 1
// Compute sign
    wire sign_result = sign_a ^ sign_b;
// Add exponents and subtract bias (127)
    wire [8:0] exp_sum = exp_a + exp_b - 8'd127;
// Multiply mantissas
    wire [47:0] mant_product = mant_a * mant_b;
// Normalization logic
    reg [23:0] normalized_mantissa;
    reg [7:0] normalized_exponent;
    always @(*) begin
        if (mant_product[47]) begin
            normalized_mantissa = mant_product[46:23];
            normalized_exponent = exp_sum[7:0] + 1;
        end else begin
            normalized_mantissa = mant_product[45:22];
            normalized_exponent = exp_sum[7:0];
        end
    end
// Handle special cases
    wire [31:0] result_special_cases = (A == 0 || B == 0) ? 32'b0 :
                                       (exp_sum >= 8'd255) ? {sign_result, 8'd255, 23'b0} : // Infinity
                                       (exp_sum <= 8'd0) ? 32'b0 : 32'b0; // Underflow
// Assemble the result
    always @(*) begin
        if (A == 0 || B == 0 || exp_sum <= 8'd0 || exp_sum >= 8'd255) 
            Result = result_special_cases;
        else 
            Result = {sign_result, normalized_exponent, normalized_mantissa[22:0]};
    end
endmodule
