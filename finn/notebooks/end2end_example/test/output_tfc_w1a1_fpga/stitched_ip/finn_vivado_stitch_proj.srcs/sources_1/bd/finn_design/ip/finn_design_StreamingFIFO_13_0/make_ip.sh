#!/bin/bash 
cd /tmp/finn_dev_zqc/code_gen_ipgen_StreamingFIFO_13__elxos3t/project_StreamingFIFO_13/sol1/impl/verilog
vivado -mode batch -source package_ip.tcl
cd /workspace/finn
