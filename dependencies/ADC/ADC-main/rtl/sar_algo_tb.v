`timescale 1ns/1ps

module sar_algo_tb();
    // Khai báo các tín hiệu kết nối với UUT
    reg fclk_in, Op, Om, En, rst;
    wire [6:0] B, BN;
    wire [7:0] D;
    wire fclk_samp, fclk_comp, fdac_clk;

    // clk_algo nghịch đảo với fclk_in để chốt dữ liệu an toàn ở giữa chu kỳ
    wire clk_algo = ~fclk_in; 

    // Gọi module cần kiểm tra (Unit Under Test)
    sar_algo uut (
        .VDD(1'b1), 
        .VSS(1'b0),
        .fclk_in(fclk_in), 
        .clk_algo(clk_algo), 
        .rst(rst),
        .Op(Op), 
        .Om(Om), 
        .En(En),
        .B(B), 
        .BN(BN), 
        .D(D),
        .fclk_samp(fclk_samp), 
        .fclk_comp(fclk_comp), 
        .fdac_clk(fdac_clk)
    );

    // Chu kỳ clock 16MHz (~62.5ns tổng, mỗi bán kỳ 31.25ns)
    initial fclk_in = 0;
    always #31.25 fclk_in = ~fclk_in; 

    // Luồng điều khiển mô phỏng chính
    initial begin
        // Khởi tạo file dump để xem dạng sóng trên GTKWave
        $dumpfile("sar_algo_tb.vcd");
        $dumpvars(0, sar_algo_tb);
        
        // 1. Khởi động hệ thống
        rst = 1; En = 0; Op = 0; Om = 0;
        #150 rst = 0; // Tắt Reset sau 150ns
        #50  En = 1;  // Bật Enable
        
        // 2. Chạy chuyển đổi giá trị mẫu 170 (10101010)
        sar_convert(8'd170);
        
        // 3. Chạy thêm giá trị mẫu 255 (11111111) 
        #500;
        sar_convert(8'd255);
        
        // 4. Chạy giá trị mẫu 85 (01010101)
        #500;
        sar_convert(8'd85);
        
        #1000;
        $display("--- Mô phỏng hoàn tất ---");
        $finish;
    end

    // =========================================================
    // Task mô phỏng hành vi của Analog Comparator (Phải nằm trong module)
    // =========================================================
    task sar_convert;
        input [7:0] vin_code;
        integer i;
        begin
            $display("[Time %t] Bat dau convert Vin = %d", $time, vin_code);
            
            // Đợi cho đến khi bắt đầu pha Convert (fclk_samp xuống 0)
            @(negedge fclk_samp);
            #5; // Trễ nhỏ để ổn định

            for (i = 7; i >= 0; i = i - 1) begin
                // Giả lập: Comparator so sánh tại cạnh lên của clock
                @(posedge fclk_in);
                #2; // Trễ đáp ứng của comparator
                
                if (vin_code & (1 << i)) begin 
                    Op = 1; Om = 0; // Vin > Vdac
                end else begin 
                    Op = 0; Om = 1; // Vin < Vdac
                end
                
                // Đợi nhịp tiếp theo
                @(negedge fclk_in);
            end
            
            // Đợi xung báo kết thúc để kiểm tra kết quả cuối cùng
            @(posedge fdac_clk);
            $display("[Time %t] Ket qua chot: D = %b (%d)", $time, D, D);
            
            // Trả về trạng thái trung tính sau khi xong
            #10 Op = 0; Om = 0;
        end
    endtask

endmodule // Luôn kết thúc bằng endmodule
