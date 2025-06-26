module testbench;
  reg [3:0] bin;
  wire [3:0] excess3;
  
  bin_to_excess3 DUT (bin, excess3);

  initial begin
    bin = 4'b0000; #10;
    bin = 4'b0001; #10;
    bin = 4'b0010; #10;
    bin = 4'b0011; #10;
    bin = 4'b0100; #10;
    bin = 4'b0101; #10;
    bin = 4'b0110; #10;
    bin = 4'b0111; #10;
    bin = 4'b1000; #10;
    bin = 4'b1001; #10;
  end
endmodule
