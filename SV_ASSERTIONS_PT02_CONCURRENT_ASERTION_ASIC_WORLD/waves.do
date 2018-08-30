onerror { resume }
set curr_transcript [transcript]
transcript off

add wave -height 30 /concurrent_assertion_tb/dut/req_gnt_assert
add wave -height 30 /concurrent_assertion_tb/clk
add wave -height 30 /concurrent_assertion_tb/reset
add wave -height 30 /concurrent_assertion_tb/req
add wave -height 30 /concurrent_assertion_tb/gnt
wv.cursors.add -time 271ps+0 -name {Default cursor}
wv.cursors.setactive -name {Default cursor}
wv.zoom.range -from 0fs -to 284ps
wv.time.unit.auto.set
transcript $curr_transcript
