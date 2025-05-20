module tb_priority_encoder_8_to_3;
    reg [7:0] in;        // Test input
    wire [2:0] out;      // Observed output
    wire valid;          // Observed valid output signal

    // Instantiate the encoder module
    priority_encoder_8_to_3 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    // Test sequence
    initial begin
        // Monitor outputs
        $monitor("Input = %b, Output = %b, Valid = %b", in, out, valid);

        // Test all possible cases
        in = 8'b00000001; #10; // Only bit 0 is high, expect out = 000, valid = 1
        in = 8'b00000010; #10; // Only bit 1 is high, expect out = 001, valid = 1
        in = 8'b00000100; #10; // Only bit 2 is high, expect out = 010, valid = 1
        in = 8'b00001000; #10; // Only bit 3 is high, expect out = 011, valid = 1
        in = 8'b00010000; #10; // Only bit 4 is high, expect out = 100, valid = 1
        in = 8'b00100000; #10; // Only bit 5 is high, expect out = 101, valid = 1
        in = 8'b01000000; #10; // Only bit 6 is high, expect out = 110, valid = 1
        in = 8'b10000000; #10; // Only bit 7 is high, expect out = 111, valid = 1

        // Multiple bits set, highest priority is 7
        in = 8'b10101010; #10; // Expect out = 111, valid = 1

        // All bits low, valid should be 0
        in = 8'b00000000; #10; // Expect out = 000, valid = 0

        $finish;
    end

endmodule
