module d_latch (
    input logic D,
    input logic En,
    output logic Q
);
    always_comb begin
        if (En)
            Q = D;
    end
endmodule
