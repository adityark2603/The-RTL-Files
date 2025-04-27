module tb_mux2;
  logic [3:0] d0, d1;
  logic s;
  logic [3:0] y;

  mux2 uut (d0, d1, s, y);

  initial begin
    d0 = 4'b0000; d1 = 4'b1111; s = 0;
    #10;

    d0 = 4'b0000; d1 = 4'b1111; s = 1;
    #10;

    d0 = 4'b1010; d1 = 4'b0101; s = 0;
    #10;

    d0 = 4'b1010; d1 = 4'b0101; s = 1;
    #10;
  end
endmodule
