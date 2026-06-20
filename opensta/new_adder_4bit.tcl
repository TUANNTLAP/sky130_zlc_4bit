# -----------------------------------------------------------
# LOAD CIRCUIT & LIBRARY
# -----------------------------------------------------------

# Load Liberty timing library
read_liberty $env(PDK_ROOT)/$env(PDK)/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

# Load gate-level netlist 
read_verilog ../xschem/new_adder_4bit.v

# Link design
link_design new_adder_4bit

# -----------------------------------------------------------
# CONSTRAINTS
# -----------------------------------------------------------

# Define a virtual clock for combinational circuit
# clock period 10ns ~ 100 MHz
create_clock -name clk -period 10.0

# Input constraints 
set_input_delay -max 0.0 -clock clk [get_ports {A0 A1 A2 A3 B0 B1 B2 B3 CIN}]
set_input_delay -min 0.0 -clock clk [get_ports {A0 A1 A2 A3 B0 B1 B2 B3 CIN}]

# Output constraints
set_output_delay -max 0.2 -clock clk [get_ports {S0 S1 S2 S3 COUT}]
set_output_delay -min -0.02 -clock clk [get_ports {S0 S1 S2 S3 COUT}]

# Driving cell & load
set_driving_cell -cell sky130_fd_sc_hd__inv_2 -pin Y [get_ports {A0 A1 A2 A3 B0 B1 B2 B3 CIN}]
set_load 0.01 [get_ports {S0 S1 S2 S3 COUT}]

# -----------------------------------------------------------
# ANALYSIS
# -----------------------------------------------------------

# Print out units
report_units

# Check for setup violations (max delay)
report_checks -path_delay max -fields {slew cap input fanout} -format full_clock_expanded

# Check for hold violations (min delay)
report_checks -path_delay min -fields {slew cap input fanout} -format full_clock_expanded

# Total negative slack
report_tns

# Worst negative slack
report_wns

# Estimate power consumption
report_power

exit
