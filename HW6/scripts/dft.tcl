#read_verilog LMFE_syn.v 
read_file LMFE_syn.v -format verilog

current_design LMFE

link
check_design

source constraints.tcl
report_constraint -all_violators

report_area > LMFE_predft_syn.area_rpt
report_timing > LMFE_predft_syn.timing_rpt
report_power > LMFE_predft_syn.power_rpt

set test_default_scan_style multiplexed_flip_flop

set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 40
set test_default_period 100

create_test_protocol -infer_asynch -infer_clock

report_constraint -all_violators

dft_drc

set_scan_configuration -chain_count 10

preview_dft

set_scan_configuration -create_dedicated_scan_out_ports true

insert_dft

report_constraint -all_violators

dft_drc

report_scan_path -view existing -chain all > LMFE_syn_dft.scan_path
report_scan_path -view existing -cell all > LMFE_syn_dft.scan_cell

report_area > LMFE_syn_dft.area_rpt
report_timing > LMFE_syn_dft.timing_rpt
report_power > LMFE_syn_dft.power_rpt

# Write test protocol for later usage in the ATPG lab.
write_test_protocol -output LMFE_syn_dft.spf

write -hierarchy -format verilog -output LMFE_syn_dft.v
write -hierarchy -format ddc -output LMFE_syn_dft.ddc

write_sdf -version 2.1 LMFE_syn_dft.sdf


