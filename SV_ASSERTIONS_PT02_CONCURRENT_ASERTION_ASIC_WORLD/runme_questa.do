vlib work
vlog -work work +accb +accr +accs -quiet {DUT.SV} {TB.SV}
vsim work.concurrent_assertion_tb
run -all
