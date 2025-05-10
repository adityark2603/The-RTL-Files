module testbench;
  reg [3:0] a, b;
  reg cin;
  wire [3:0] s;
  wire cout;
  
  RCA DUT (a, b, cin, s, cout);

  initial begin
    a = 4'b0000; b = 4'b0000; cin = 0; #10;
    a = 4'b0101; b = 4'b0011; cin = 0; #10;
    a = 4'b1111; b = 4'b0001; cin = 1; #10;
    a = 4'b1010; b = 4'b1101; cin = 0; #10;
    a = 4'b1001; b = 4'b0110; cin = 1; #10;
  end
endmodule
