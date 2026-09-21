module serial2parallel (
    input clk,
    input shift_in,
    input data_in,
    input done_in,
    input reset,
    input VDD,
    input VSS,
    output reg [11:0] dout
);

    reg [11:0] internal_data_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            dout <= 12'b0;
            internal_data_reg <= 12'b0;
        end
        else if (shift_in && !done_in) begin
            internal_data_reg <= {internal_data_reg[10:0], data_in};
        end
        else if (done_in) begin
            dout <= internal_data_reg;
        end
    end

endmodule
