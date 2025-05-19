module tb_d_latch;
    logic D, En;
    logic Q;

    d_latch dl (D, En, Q);

    initial begin
        D = 0; En = 0;
        #10 D = 1; En = 0;
        #10 D = 0; En = 1;
        #10 D = 1; En = 1;
        #10 En = 0;
    end
endmodule
