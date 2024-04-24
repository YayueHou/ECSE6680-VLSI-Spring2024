###################################################################

# Created by write_sdc on Thu Nov 16 15:54:54 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_driving_cell -lib_cell INVX1 [get_ports {a[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {a[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {a[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {a[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {a[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {a[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {a[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {a[0]}]
set_driving_cell -lib_cell INVX1 [get_ports {b[7]}]
set_driving_cell -lib_cell INVX1 [get_ports {b[6]}]
set_driving_cell -lib_cell INVX1 [get_ports {b[5]}]
set_driving_cell -lib_cell INVX1 [get_ports {b[4]}]
set_driving_cell -lib_cell INVX1 [get_ports {b[3]}]
set_driving_cell -lib_cell INVX1 [get_ports {b[2]}]
set_driving_cell -lib_cell INVX1 [get_ports {b[1]}]
set_driving_cell -lib_cell INVX1 [get_ports {b[0]}]
