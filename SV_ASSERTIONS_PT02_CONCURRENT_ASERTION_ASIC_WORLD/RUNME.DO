alib work
alog -work work -msg 5 -dbg +accb +accr +accs -protect 0 -quiet -sve -coverage sbecam -coverage_options count+args+implicit+onevar+relational+vectors+fsmsequence+fsmselfloop {DUT.SV} {TB.SV}
asim +access +r -cvgperinstance -dbg -t 0 -ses +accb +accr -advdataflow -dataset {.} -datasetname {sim} -xtrace -acdb -acdb_cov s -acdb_file ./coverage.acdb work.concurrent_assertion_tb
do waves.do
run -all
