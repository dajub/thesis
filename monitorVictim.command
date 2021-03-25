echo "running server in background..."
python2 /client/thesis/server.py &
echo "running tcpdump in background..."
echo "***Make sure tap given as command line arg***"
tcpdump -i $1 'dst 184.164.228.4 and port 5005 and tcp' or 'src 184.164.228.4 and tcp and port 5005' -w tcpdumpoutput.pcap &
echo "sleeping for 50 seconds"
sleep 50
echo "30 more seconds"
sleep 20
echo "10..."
sleep 5
echo "5"
sleep 1
echo "4"
sleep 1
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
pkill tcpdump
pkill python2
echo "done monitoring.\nAnalyzing..."
./analyze.command $2 $3
