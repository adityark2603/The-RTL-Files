module testbench;
  reg [3:0] A;
  wire [1:0] Y;
  wire valid;
  
  prio_enco DUT (A, Y, valid);

  initial begin
    A = 4'b0000; #10;
    A = 4'b0001; #10;
    A = 4'b0010; #10;
    A = 4'b0100; #10;
    A = 4'b1000; #10;
    A = 4'b1100; #10;
    A = 4'b1110; #10;
    A = 4'b1111; #10;
  end
endmodule
