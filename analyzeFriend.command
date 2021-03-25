#!/bin/bash
tcptrace -nZ --output_dir="tcptraceOutputs" tcpdumpoutput.pcap > summary.txt
mkdir $1
mv ./tcptraceOutputs ./$
mv summary.txt ./$1
mv tcpdumpoutput.pcap ./$1
mv beforeAttackRoute ./$1
mv afterAttackRoute ./$1
