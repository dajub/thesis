echo "MAKE SURE SERVER.PY IS RUNNING. . . starting monitor in 3 seconds"
sleep 3
python2 client.py &
echo "running client . . . "
sudo tcpdump  'dst 184.164.228.4 and port 5005 and tcp' or 'src 184.164.228.4 and tcp and port 5005' -w tcpdumpoutput.pcap &

echo "running tcp dump"
traceroute 184.164.228.4 > beforeAttackRoute.txt
echo "traceroute capture. waiting 20 seconds . . . "
sleep 20
echo "it has been 20 seconds. . . run the attack"
sleep 10
echo "traceroute captured . . . "
traceroute 184.164.228.4 > afterAttackRoute.txt
sleep 30
echo "it has been another 50 seconds . . ." 
sudo pkill tcpdump
echo "tcpdump process killed..."
sudo pkill python
echo "python client killed . . . "
./analyzeFriend.command $2
