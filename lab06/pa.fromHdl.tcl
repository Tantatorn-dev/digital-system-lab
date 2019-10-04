
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab06 -dir "/home/lord-tantatorn/digital-system-lab/lab06/planAhead_run_4" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "CounterNaja.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../lab05/FourBitsToSevenSegment.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {CounterNaja.vhf}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top CounterNaja $srcset
add_files [list {CounterNaja.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
