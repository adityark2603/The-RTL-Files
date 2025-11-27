module sipo_shift_register_4bit (
    input  logic clk,
    input  logic reset,      // active high reset
    input  logic serial_in,
    output logic [3:0] parallel_out
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            parallel_out <= 4'b0000;
        else
            parallel_out <= {parallel_out[2:0], serial_in};
    end

endmodule
