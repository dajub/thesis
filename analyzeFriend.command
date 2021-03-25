#!/bin/bash
tcptrace -nZ --output_dir="tcptraceOutputs" tcpdumpoutput.pcap > summary.txt
mkdir data$2kbs
mv ./tcptraceOutputs ./data$2kbs
mv summary.txt ./$1
mv tcpdumpoutput.pcap ./data$2kbs
