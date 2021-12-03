#!/bin/bash 
cd /tmp/finn_dev_zqc/code_gen_ipgen_StreamingFIFO_14_944d5btu/project_StreamingFIFO_14/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
