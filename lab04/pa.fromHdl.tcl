
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab04 -dir "/home/lord-tantatorn/digital-system-lab/lab04/planAhead_run_4" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "two_adder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {two_adder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top two_adder $srcset
add_files [list {two_adder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
