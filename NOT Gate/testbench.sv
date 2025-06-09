module tb_cmos_inverter;

    logic a;
    logic y;

    // Instantiate the DUT
    cmos_inverter uut (
        .a(a),
        .y(y)
    );

    initial begin
        $display("Time\t a\t y");
        $monitor("%0t\t %b\t %b", $time, a, y);

        // Apply stimulus
        a = 0;
        #10;
        a = 1;
        #10;
        a = 0;
        #10;

        $finish;
    end

endmodule
