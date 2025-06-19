module tb_demux_1to8;

    logic [2:0] sel;
    logic in;
    logic [7:0] out;

    demux_1to8 dut (
        sel,
        in,
        out
    );

    initial begin
        sel = 3'b000; in = 1; #10;
        sel = 3'b001; in = 1; #10;
        sel = 3'b010; in = 1; #10;
        sel = 3'b011; in = 1; #10;
        sel = 3'b100; in = 1; #10;
        sel = 3'b101; in = 1; #10;
        sel = 3'b110; in = 1; #10;
        sel = 3'b111; in = 1; #10;
        sel = 3'b000; in = 0; #10;
    end
endmodule
