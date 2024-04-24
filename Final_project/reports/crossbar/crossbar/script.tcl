#*********************************************************/
#* Compile Script for Synopsys                           */
#*                                                       */
#* Run this command in terminal                          */
#* dc_shell-t -f compile_dc.tcl                          */
#*                                                       */
#* Library used: SAED_EDK90nm                            */
#*********************************************************/


#* All verilog files, separated by spaces                */
# Only include the top file
set my_verilog_files {/home/houy4/Documents/Design_Compiler/Projects/EVA/Components/crossbar/crossbar.sv}

#/* Top-level Module                                     */
set my_toplevel crossbar


#* The name of the clock pin.                            */
#* If no clock-pin exists, pick anything                 */
set my_clock_pin clk


#* Target frequency in MHz for optimization              */
set my_clk_freq_MHz 1000

#* Delay of input signals                                */
#* (Clock-to-Q, Package etc.)                            */
set my_input_delay_ns 0.1


#* Reserved time for output signals (Holdtime etc.)      */
set my_output_delay_ns 0.1

# set SAED_EDK90nm [format "%s%s"  [getenv "SAED_EDK90nm"] "/home/rhome/dangs/Documents/sysnthsis_file/SAED_EDK90nm"]
# set search_path [concat  $search_path $SAED_EDK90nm]
# set alib_library_analysis path $SAED_EDK90nm


#*********************************************************/
#* NO MODIFICATIONS NEEDED BELOW                         */
#*********************************************************/
# set target_library "saed90nm_max.db"
set target_library {/home/houy4/Documents/Design_Compiler/FreePDK45/osu_soc/lib/files/gscl45nm.db}

# set link_library [set target_library [concat  [list saed90nm_max.db]]]
set link_library {* /home/houy4/Documents/Design_Compiler/FreePDK45/osu_soc/lib/files/gscl45nm.db}
# [list dw_foundation.sldb]]]

# define_desgin_lib WORK -path ./WORK
# set verilogout_show_unconnected_pins "true"
# set_ultra_optimization true
# set_ultra_optimization -force

# set the symbol library
#set symbol_library {/cad/synopsys/SAED_EDK90nm/SAED_EDK90nm/Digital_Standard_Cell_Library/synopsys/icons/saed90nm.sdb}

analyze -f sverilog $my_verilog_files

elaborate $my_toplevel

current_design $my_toplevel

#set_dont_touch dut


link
uniquify

set my_period [expr 1000 / $my_clk_freq_MHz]

set find_clock [ find port [list $my_clock_pin] ]
#if { $find_clock != [list]} {
set clk_name $my_clock_pin
create_clock -period $my_period $clk_name
#} else {
#	set clk_name vclk
#	create_clock -period $my_period -name $clk_name
#}

set_driving_cell  -lib_cell INVX1  [all_inputs]
set_rtl_load -cap 0.002 [all_outputs]
set_input_delay $my_input_delay_ns -clock $clk_name [remove_from_collection [all_inputs] $my_clock_pin]
set_output_delay $my_output_delay_ns -clock $clk_name [all_outputs]

set_switching_activity -static_probability 1 -toggle_rate 0 [list we]
set_switching_activity -static_probability 0 -toggle_rate 0 [list reset]
set_switching_activity -static_probability 0.5 -toggle_rate 0.5 [remove_from_collection [all_inputs] [list we clk reset]]


compile -ungroup_all -map_effort medium -exact_map
compile -incremental_mapping -map_effort medium -exact_map

check_design
report_constraint -all_violators


#*********************************************************/
#* NO MODIFICATIONS NEEDED BELOW                         */
#*********************************************************/
set filename [format "%s%s"  $my_toplevel ".vh"]
write -f verilog -output $filename

set filename [format "%s%s"  $my_toplevel ".sdc"]
write_sdc $filename

set filename [format "%s%s"  $my_toplevel ".db"]
write -f db -hier -output $filename -xg_force_db

redirect timing.rep { report_timing }
redirect cell.rep { report_cell }
redirect power.rep { report_power }

#*********************************************************/
#* QUIT                                                  */
#*********************************************************/
quit
