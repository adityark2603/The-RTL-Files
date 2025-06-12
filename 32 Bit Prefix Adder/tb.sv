`timescale 1ns / 1ps

module tb_prefix_adder_32;
    reg [31:0] A, B;
    reg Cin;
    wire [31:0] Sum;
    wire Cout;
    // Instantiate the Prefix Adder
    prefix_adder_32 uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        // Test Case 1: Simple addition
        A = 32'h00000001;
        B = 32'h00000001;
        Cin = 1'b0;
        #10;
        $display("Test 1: A = %h, B = %h, Sum = %h, Cout = %b", A, B, Sum, Cout);

        // Test Case 2: Addition with carry-in
        A = 32'hFFFFFFFF;
        B = 32'h00000001;
        Cin = 1'b1;
        #10;
        $display("Test 2: A = %h, B = %h, Sum = %h, Cout = %b", A, B, Sum, Cout);

        // Test Case 3: Large numbers
        A = 32'h12345678;
        B = 32'h87654321;
        Cin = 1'b0;
        #10;
        $display("Test 3: A = %h, B = %h, Sum = %h, Cout = %b", A, B, Sum, Cout);

        // Finish simulation
        $finish;
    end
endmodule
