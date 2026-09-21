`timescale 1ns/1ps
module s2p_tb();
	reg clk;
	reg shift_in;
	reg data_in;
	reg done_in;
	reg reset; //positive reset

	localparam TB_DWIDTH = 32;
	wire [TB_DWIDTH-1:0] out;
	serial2parallel #(.DATA_WIDTH(TB_DWIDTH)) dut
		(	
		.clk(clk),
		.shift_in(shift_in),
		.data_in(data_in),
		.done_in(done_in),
		.reset(reset),
		.dout(out)
		);
	task shift_data_in( input [TB_DWIDTH-1:0] data);
	     integer i;
	     begin
		@(posedge clk);
            	shift_in = 1;
		$display("Start writing value = %h",data);
            	for ( i = TB_DWIDTH-1; i >= 0; i = i - 1) begin
                	data_in = data[i];
                	@(posedge clk);
            	end
            	shift_in = 0;
            	done_in = 1;
            	@(posedge clk);
            	done_in = 0;
     	     end
	endtask
	initial begin
		clk=0;
		forever #50 clk =~clk;
	end
	initial begin
		shift_in=1'b0;
		data_in = 1'b0;
		done_in = 1'b0;
		reset =1'b1;
		repeat(5) @(posedge clk);
		reset =1'b0;
		repeat(2) @(posedge clk);
		$display("START SIMULATION");
		shift_data_in(32'h12345678);
		#500
		$display("[%t] Dout value = %h",$time,out);
		shift_data_in(32'h00001111);
		#500
		$display("[%t] Dout value = %h",$time,out);
		$display("END SIMULATION");
		#50
		$finish;
	end
endmodule
