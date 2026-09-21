`timescale 1ns/1ps

module tb_clk_gen;

    reg fclk_in;
    reg rst;

    wire fclk_samp;
    wire fclk_comp;
    wire fdac_clk;

    reg vdd;
    reg vss;

    // =========================
    // Instantiate DUT
    // =========================
    clk_gen uut (
        .fclk_in(fclk_in),
        .rst(rst),
        .vdd(vdd),
        .vss(vss),
        .fclk_samp(fclk_samp),
        .fclk_comp(fclk_comp),
        .fdac_clk(fdac_clk)
    );

    // =========================
    // Generate 16 MHz clock
    // T = 62.5 ns → half = 31.25 ns
    // =========================
    initial begin
        fclk_in = 0;
        forever #31.25 fclk_in = ~fclk_in;
    end

    // =========================
    // Stimulus
    // =========================
    initial begin
        rst = 1;
        vdd = 1;
        vss = 0;

        #100;
        rst = 0;

        #5000;

        $finish;
    end

    // =========================
    // Dump waveform
    // =========================
    initial begin
        $dumpfile("clk_gen.vcd");
        $dumpvars(0, tb_clk_gen);
    end

endmodule
