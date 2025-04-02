module testbench;
  logic [1:0] a, b;
  logic eq, neq, lt, lte, gt, gte;

  comparator_2bit dut (a, b, eq, neq, lt, lte, gt, gte);

  initial begin
    a = 2'b00; b = 2'b00; #10;
    a = 2'b01; b = 2'b00; #10;
    a = 2'b10; b = 2'b01; #10;
    a = 2'b11; b = 2'b10; #10;
    a = 2'b01; b = 2'b01; #10;
    a = 2'b10; b = 2'b10; #10;
    a = 2'b11; b = 2'b11; #10;
    a = 2'b00; b = 2'b01; #10;
    a = 2'b01; b = 2'b10; #10;
    a = 2'b10; b = 2'b11; #10;
  end
endmodule
