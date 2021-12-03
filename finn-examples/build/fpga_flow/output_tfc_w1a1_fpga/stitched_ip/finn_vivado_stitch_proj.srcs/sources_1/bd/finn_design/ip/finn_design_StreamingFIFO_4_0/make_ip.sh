#!/bin/bash 
cd /tmp/finn_dev_zqc/code_gen_ipgen_StreamingFIFO_4_t16wbqzb/project_StreamingFIFO_4/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /home/zqc/Desktop/ptech/finn-examples/build/fpga_flow
