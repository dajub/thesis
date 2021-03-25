import socket
iimport time
TCP_IP = '184.164.228.4'
TCP_PORT = 5005
BUFFER_SIZE = 1024
# MESSAGE = "Hello, World!"
f = open("/client/thesis/message.txt")
MESSAGE = f.read()
f.close()

print 'about to make socket'
def makeSocket():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    print 'about to connect'
    s.connect((TCP_IP, TCP_PORT))
    print 'connected'
    while True:
#    s.connect((TCP_IP,TCP_PORT))
        s.send(MESSAGE)
        data = s.recv(BUFFER_SIZE)
       # print "received data:", data
       # time.sleep(0.5)
    print 'sent'
    data = s.recv(BUFFER_SIZE)
    print "received data:", data
print "going to try. . . "
try: makeSocket()
except socket.error:
    time.sleep(0.25)
    print "inside the except. . . "
    makeSocket()
else:
    print "in else"
