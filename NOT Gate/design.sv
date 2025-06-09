module cmos_inverter (
    input  logic a,
    output logic y
);
    assign y = ~a;  // Inverter logic
endmodule
