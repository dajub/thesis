import socket
# TCP_IP = '172.31.59.249'
TCP_IP = '184.164.228.4'
TCP_PORT = 5005
BUFFER_SIZE = 10240
print 'imported socket\n'
def listen():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind((TCP_IP, TCP_PORT))
    print 'bound and listening\n'
    s.listen(1)
    conn, addr = s.accept()
    print 'Connection address:', addr
    while True:
        data = conn.recv(BUFFER_SIZE)
        if not data: break
        conn.send(data)  # echo
    conn.close()

try: 
    print "in try . . . "
    listen()
except socket.error:
    print "in except . . ."
    listen()
