module Subtractor_4bit_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg Borrow_in;
    wire [3:0] Diff;
    wire Borrow_out;

    Subtractor_4bit uut (.A(A), .B(B), .Borrow_in(Borrow_in), .Diff(Diff), .Borrow_out(Borrow_out));

    initial begin
        // Display header for results
        $display("A    B    Borrow_in | Diff Borrow_out");
        $display("---------------------|---------------");

        // Apply test cases
        A = 4'b0001; B = 4'b0001; Borrow_in = 0; #10;
        $display("%b  %b      %b        | %b      %b", A, B, Borrow_in, Diff, Borrow_out);

        A = 4'b1001; B = 4'b0101; Borrow_in = 0; #10;
        $display("%b  %b      %b        | %b      %b", A, B, Borrow_in, Diff, Borrow_out);

        A = 4'b1111; B = 4'b0001; Borrow_in = 1; #10;
        $display("%b  %b      %b        | %b      %b", A, B, Borrow_in, Diff, Borrow_out);

        A = 4'b0010; B = 4'b0100; Borrow_in = 0; #10;
        $display("%b  %b      %b        | %b      %b", A, B, Borrow_in, Diff, Borrow_out);

        A = 4'b1000; B = 4'b1000; Borrow_in = 1; #10;
        $display("%b  %b      %b        | %b      %b", A, B, Borrow_in, Diff, Borrow_out);

        // Stop simulation
        $stop;
    end
endmodule
