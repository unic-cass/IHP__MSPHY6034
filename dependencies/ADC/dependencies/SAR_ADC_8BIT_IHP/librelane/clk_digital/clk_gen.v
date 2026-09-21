module clk_gen (
    input  wire fclk_in,   // 16 MHz
    input  wire rst,       

    input  wire vdd,
    input  wire vss,

    output reg  fclk_samp, // 1 MHz
    output wire fclk_comp, // = fclk_in (16 MHz)
    output wire fdac_clk   // = fclk_samp
);

    reg [3:0] cnt;

    // =========================
    // Generate fclk_samp (divide by 16)
    // =========================
    always @(posedge fclk_in or posedge rst) begin
        if (rst) begin
            cnt        <= 4'd0;
            fclk_samp  <= 1'b0;
        end else begin
            if (cnt == 4'd7) begin
                cnt        <= 4'd0;
                fclk_samp  <= ~fclk_samp; // toggle → /16
            end else begin
                cnt <= cnt + 1;
            end
        end
    end

    // =========================
    // Direct connections
    // =========================
    assign fclk_comp = fclk_in;
    assign fdac_clk  = fclk_samp;

endmodule
