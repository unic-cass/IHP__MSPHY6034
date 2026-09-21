/* verilator lint_off WIDTHTRUNC */
module sar_algo (
    input  wire VDD, VSS,
    input  wire fclk_in,   // Clock hệ thống
    input  wire rst,       // Reset tích cực cao
    input  wire Op, Om,    // Đầu ra từ Comparator
    input  wire En,        // Cho phép hoạt động
    input  wire clk_algo,  // Clock lấy mẫu dữ liệu (thường là ~fclk_in)
    output reg  fclk_samp, // Tín hiệu điều khiển công tắc Sample
    output wire fclk_comp, // Clock cấp cho Comparator
    output reg  fdac_clk,  // Xung báo kết thúc chuyển đổi (Data Ready)
    output reg [6:0] B,    // Điều khiển mảng tụ (+) 
    output reg [6:0] BN,   // Điều khiển mảng tụ (-)
    output reg [7:0] D     // Kết quả Digital 8-bit
);

    reg [3:0] cnt = 4'd0;
    reg [3:0] counter = 4'd0;

    // 1. Tạo tín hiệu điều khiển pha (Sample/Convert)
    always @(posedge fclk_in or posedge rst) begin
        if (rst) begin
            cnt <= 4'd0;
            fclk_samp <= 1'b1;
        end else if (En) begin
            if (cnt == 4'd7) begin 
                cnt <= 4'd0;
                fclk_samp <= ~fclk_samp; 
            end else begin
                cnt <= cnt + 1'b1;
            end
        end
    end

    assign fclk_comp = fclk_in;

    // 2. Thuật toán SAR Monotonic
    wire cmp = (Op > Om);

    always @(posedge clk_algo or posedge rst) begin 
        if (rst) begin
            B <= 7'b0; BN <= 7'b0; D <= 8'b0;
            counter <= 4'b0;
        end else if (En) begin
            if (!fclk_samp) begin // Pha CONVERT
                if (counter < 8) begin
                    D[7 - counter[2:0]] <= cmp;
                    // Monotonic: Chỉ cần điều khiển 7 cặp switch cho 8 bit
                    if (counter < 7) begin
                        B[6 - counter[2:0]]  <= cmp;
                        BN[6 - counter[2:0]] <= ~cmp;
                    end
                    counter <= counter + 1'b1;
                end
            end else begin // Pha SAMPLE
                counter <= 4'b0;
                // Giữ nguyên D để các mạch ngoại vi kịp đọc kết quả
            end
        end
    end

    // 3. Xung báo hiệu dữ liệu sẵn sàng (End of Conversion)
    always @(posedge fclk_in or posedge rst) begin
        if (rst) 
            fdac_clk <= 1'b0;
        else 
            // Lên 1 ở nhịp cuối của pha Convert khi counter đã đạt 8
            fdac_clk <= (cnt == 4'd7 && fclk_samp == 1'b0 && En);
    end

endmodule
