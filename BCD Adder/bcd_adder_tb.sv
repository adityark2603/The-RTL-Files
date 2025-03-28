module bcd_adder_tb;
    reg [3:0] a;              // First BCD input
    reg [3:0] b;              // Second BCD input
    reg cin;                  // Carry-in
    wire [3:0] sum;           // Sum output
    wire cout;                // Carry-out

    // Instantiate the BCD adder module
    bcd_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        // Display the results
        $display(" A  B  Cin | Sum Cout ");
        $monitor("%b %b   %b   | %b   %b", a, b, cin, sum, cout);

        // Test cases
        a = 4'b0101; b = 4'b0011; cin = 0; // 5 + 3 = 8, valid BCD
        #10;
        a = 4'b1001; b = 4'b0010; cin = 0; // 9 + 2 = 11, adjust to BCD (1 + 5)
        #10;
        a = 4'b1001; b = 4'b1001; cin = 0; // 9 + 9 = 18, adjust to BCD (1 + 2)
        #10;
        a = 4'b0100; b = 4'b0101; cin = 1; // 4 + 5 + 1 = 10, adjust to BCD
        #10;
        a = 4'b0001; b = 4'b0001; cin = 1; // 1 + 1 + 1 = 3, valid BCD
        #10;

        $finish; // End simulation
    end
endmodule
