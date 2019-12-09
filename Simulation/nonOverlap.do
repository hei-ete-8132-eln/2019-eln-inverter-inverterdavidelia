onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {Reset and clock} /nonoverlap_tb/reset
add wave -noupdate -group {Reset and clock} /nonoverlap_tb/clock
add wave -noupdate -expand -group Controls /nonoverlap_tb/driveEn
add wave -noupdate -expand -group PWM -format Analog-Step -height 30 -max 256.0 -radix unsigned /nonoverlap_tb/I_tb/pwmCount
add wave -noupdate -expand -group PWM /nonoverlap_tb/pwmIn
add wave -noupdate -expand -group PWM /nonoverlap_tb/pwmOut
add wave -noupdate -expand -group PWM /nonoverlap_tb/pwmOut_n
add wave -noupdate -expand -group Verification /nonoverlap_tb/I_tb/deadTime
add wave -noupdate -format Analog-Step -height 30 -max 31.0 -radix unsigned -radixshowbase 0 /nonoverlap_tb/I_DUT/countOut
add wave -noupdate /nonoverlap_tb/I_DUT/enable
add wave -noupdate /nonoverlap_tb/I_DUT/I0/current_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {282196862 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 285
configure wave -valuecolwidth 42
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {10500 ns}
