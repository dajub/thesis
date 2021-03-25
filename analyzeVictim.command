#!/bin/bash
tcptrace -nZ --output_dir="tcptraceOutputs" tcpdumpoutput.pcap > summary.txt
mkdir $1
mv tcptraceOutputs ./$1
,v summary.txt ./$1
