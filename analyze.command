#!/bin/bash
tcptrace -nZ --output_dir="tcptraceOutputs" tcpdumpoutput.pcap > summary.txt
