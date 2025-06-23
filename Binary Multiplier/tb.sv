module tb_binary_multiplier_2bit();
    logic [1:0] A, B;
    logic [3:0] C;

    binary_multiplier_2bit uut(A, B, C);

    initial begin
        A = 2'b00; B = 2'b00; #10;
        A = 2'b01; B = 2'b01; #10;
        A = 2'b10; B = 2'b01; #10;
        A = 2'b11; B = 2'b01; #10;
        A = 2'b10; B = 2'b10; #10;
        A = 2'b11; B = 2'b11; #10;
    end
endmodule

