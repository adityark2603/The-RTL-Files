`timescale 1ns/1ps

module tb_full_adder;

    logic x, y, cin;
    logic s, carry;

    // DUT instantiation
    full_adder dut (
        .x(x),
        .y(y),
        .cin(cin),
        .s(s),
        .carry(carry)
    );

    // Apply all combinations
    initial begin
        $display("Time     x y cin | s carry");
        $monitor("%4t     %b %b  %b  | %b    %b",
                  $time, x, y, cin, s, carry);

        x = 0; y = 0; cin = 0; #20;
        x = 0; y = 0; cin = 1; #20;
        x = 0; y = 1; cin = 0; #20;
        x = 0; y = 1; cin = 1; #20;
        x = 1; y = 0; cin = 0; #20;
        x = 1; y = 0; cin = 1; #20;
        x = 1; y = 1; cin = 0; #20;
        x = 1; y = 1; cin = 1; #20;

        $finish;
    end

endmodule
