module bcd_adder (
    input [3:0] a,          // First BCD input (4 bits)
    input [3:0] b,          // Second BCD input (4 bits)
    input cin,              // Carry-in
    output reg [3:0] sum,   // BCD sum output (4 bits)
    output reg cout         // Carry-out
);
    reg [4:0] temp_sum;     // Temporary 5-bit sum (to handle carry)

    always @(*) begin
        temp_sum = a + b + cin;  // Sum of two BCD numbers with carry-in

        // Check if sum exceeds BCD range (9)
        if (temp_sum > 9) begin
            temp_sum = temp_sum + 6;  // Add 6 to adjust to valid BCD
            cout = 1;                 // Set carry-out
        end else begin
            cout = 0;                 // No carry-out
        end

        sum = temp_sum[3:0];          // Assign final sum (only 4 bits)
    end
endmodule
