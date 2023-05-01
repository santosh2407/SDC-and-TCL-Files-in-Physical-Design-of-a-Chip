create_clock -name clk -period 2 -waveform {0 1} [get_ports "clk"]
set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]
set_clock_unertainty 0.01 [get_ports "clk"]

set_input transition 0.12 [all_inputs]
set_input_delay -max 0.8 [get_ports "inpout1"]
set_input_delay -max 0.8 [get_ports "input2"]


set_output_delay -max 0.8 [get_ports "output1"]
set_output_delay -max 0.8 [get_ports "output2"]
