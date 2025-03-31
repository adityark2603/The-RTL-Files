module tb_deco24;

  logic [1:0] A;
  logic [3:0] Y;

  deco24 dut (A, Y);

  initial begin
    A = 2'b00; #10;
    A = 2'b01; #10;
    A = 2'b10; #10;
    A = 2'b11; #10;
  end
endmodule
