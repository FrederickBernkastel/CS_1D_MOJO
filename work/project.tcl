set projDir "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/planAhead"
set projName "1D game"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/mojo_top_0.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/reset_conditioner_1.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/sutd_generator_2.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/random_led_generator_3.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/time_left_4.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/translate_moves_5.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/moves_left_6.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/translate_winner_7.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/simple_ram_8.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/simple_ram_9.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/simple_ram_8.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/simple_ram_9.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/bin_to_seg_12.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/alu_13.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/alu_13.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/simple_ram_9.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/bin_to_seg_12.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/alu_13.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/alu_13.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/add_19.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/boole_20.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/shift_21.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/cmp_22.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/add_19.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/boole_20.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/shift_21.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/cmp_22.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/add_19.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/boole_20.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/shift_21.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/cmp_22.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/add_19.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/boole_20.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/shift_21.v" "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D game/work/verilog/cmp_22.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/Frederic/Desktop/Computational_Structures/1D/1D\ game/constraint/game_ports.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
