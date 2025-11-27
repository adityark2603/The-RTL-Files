module sipo_shift_register_4bit_tb;

    logic clk;
    logic reset;
    logic serial_in;
    logic [3:0] parallel_out;

    // Instantiate DUT
    sipo_shift_register_4bit dut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .parallel_out(parallel_out)
    );

    // Clock generation (10 ns period)
    always #5 clk = ~clk;

    initial begin
        // Init
        clk = 0;
        reset = 1;
        serial_in = 0;

        // Hold reset
        #12 reset = 0;

        // Serial bits producing waveform:
        // 0 →1→2→5→b→7→e→d→a→4→8
        // Bits shifted in (per rising edge):
        int bitstream [10] = '{1,0,1,1,1,0,1,0,0,0};

        foreach (bitstream[i]) begin
            serial_in = bitstream[i];
            #10;  // wait for next posedge
        end

        #20;
        $finish;
    end

endmodule
