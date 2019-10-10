read_verilog FAS_syn.v 

current_design FAS

link
check_design

source constraints.tcl
report_constraint -all_violators

report_area > FAS_syn.area_rpt
report_timing > FAS_syn.timing_rpt
report_power > FAS_syn.power_rpt

set test_default_scan_style multiplexed_flip_flop

set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 40
set test_default_period 100

create_test_protocol -infer_asynch -infer_clock

report_constraint -all_violators

dft_drc

set_scan_configuration -chain_count 45

preview_dft

set_scan_configuration -create_dedicated_scan_out_ports true

insert_dft

report_constraint -all_violators

dft_drc

report_scan_path -view existing -chain all > FAS_syn_dft.scan_path
report_scan_path -view existing -cell all > FAS_syn_dft.scan_cell

report_area > FAS_syn_dft.area_rpt
report_timing > FAS_syn_dft.timing_rpt
report_power > FAS_syn_dft.power_rpt

write_test_protocol -output FAS_syn_dft.spf

write -hierarchy -format verilog -output FAS_syn_dft.v
write -hierarchy -format ddc -output FAS_syn_dft.ddc

write_sdf -version 2.1 FAS_syn_dft.sdf


