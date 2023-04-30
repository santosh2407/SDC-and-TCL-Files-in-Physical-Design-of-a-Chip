######################################
###########TCL Script#################
######################################

#Step1: Firstly, We need to read the library file which willl be provided by the Cadence tool itself. 
read_lib /home/install/FOUNDRY/digital/90nm/dig/lib/slow.lib

#Step2: Here, We need to read the verilog design file that we have created. 
read_hdl <filename with .v extension>

#Step3: Here, we need to elaborate the verilog file 
elaborate

#Step4: Here, we need to read the input SDC file in which we will be specifying all the design constraints
read_sdc <filename with .sdc extension>

#Setting effort levels for 3 stages
#set_db syn_generic_effort medium
#set_db syn_map_effort medium
#set_db syn_opt_effort medium

#Step5: This step includes the Synthesis of generic gates
syn_generic

#Step6: Now, we need to perform synthesising for mapping
syn_map

#Step7: in this step we need to optmize the designn so this command is used to perform synthesising for optimization
syn_opt

#For Combinational Circuits
#report_timing -unconstrained > FA_timing.repo

#Step8: In this step, we will be generating the reports for the analysis, For Generating Power Report
report_power > <Give a filename with .repo extension>

#For Generating Area Report
report_area > <Give a filename with .repo extension>

#For Generating Timing Report
report_timing > <Give a filename with .repo extension>

#Step9: This is the main step for which we have performed all the above steps. Generating netlist from synthesis
write_hdl > <filename with .v extension>

#Step10: In this step we need to generate the output SDC file which is used in PD. Generating SDC from synthesis
write_sdc > <filename with .sdc extension>

#Step11: This is the final step of the synthesis where GUI will be opened to See te Schematic 
gui_show
