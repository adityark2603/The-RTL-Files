module bin_to_excess3(
    input logic [3:0] bin,
    output logic [3:0] excess3
);

  assign excess3 = bin + 4'b0011;

endmodule
