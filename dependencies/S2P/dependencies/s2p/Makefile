VLOG_FLAGS = -sv -timescale=1ns/1ps \
             +incdir+.
work/s2p:
	vlib work
	vlog $(VLOG_FLAGS) serial2parallel.v s2p_tb.v
	touch work/s2p
s2p: work/s2p
	vsim -voptargs="+acc" -wlf s2p.wlf s2p_tb -t 1ps -c \
            -do "log -r /*; run 500 us; exit"
clean:
	rm -r work *.wlf transcript
.PHONY: clean s2p
