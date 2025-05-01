module prio_enco(input logic [3:0] A, output logic [1:0] Y, output logic valid);
  always_comb
    casez(A)
      4'b0001, 4'b001x, 4'b01xx, 4'b1xxx : Y = 2'b00;
      4'b0010, 4'b0011, 4'b01xx, 4'b1xxx : Y = 2'b01;
      4'b0100, 4'b0101, 4'b011x, 4'b1xxx : Y = 2'b10;
      4'b1000, 4'b1001, 4'b101x, 4'b11xx : Y = 2'b11;
      default : Y = 2'b00;
    endcase
  assign valid = (A != 4'b0000); 
endmodule
