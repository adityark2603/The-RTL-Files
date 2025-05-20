module priority_encoder_8_to_3 (
    input [7:0] in,   // 8-bit input
    output reg [2:0] out,  // 3-bit output
    output reg valid       // Valid output signal
);

always @(*) begin
    // Default values
    out = 3'b000;
    valid = 1'b0;

    // Priority Encoding Logic
    if (in[7]) begin
        out = 3'b111;
        valid = 1'b1;
    end else if (in[6]) begin
        out = 3'b110;
        valid = 1'b1;
    end else if (in[5]) begin
        out = 3'b101;
        valid = 1'b1;
    end else if (in[4]) begin
        out = 3'b100;
        valid = 1'b1;
    end else if (in[3]) begin
        out = 3'b011;
        valid = 1'b1;
    end else if (in[2]) begin
        out = 3'b010;
        valid = 1'b1;
    end else if (in[1]) begin
        out = 3'b001;
        valid = 1'b1;
    end else if (in[0]) begin
        out = 3'b000;
        valid = 1'b1;
    end
end

endmodule
