#!/usr/bin/env python
import argparse
import sys
import socket
import random
import struct

from scapy.all import sendp, send, get_if_list, get_if_hwaddr
from scapy.all import Packet, hexdump
from scapy.all import Ether, IP, UDP, TCP, Raw

def get_if():
    ifs=get_if_list()
    iface=None # "h1-eth0"
    for i in get_if_list():
        if "eth0" in i:
            iface=i
            break;
    if not iface:
        print "Cannot find eth0 interface"
        exit(1)
    return iface

def hex2data(h, m):
    print h
    if len(h) % 2 != 0:
        h = "0" + h
    o = ""
    for i in range((len(h))/2, m):
        #print i
        o += "\000"
    for i in range(0,len(h),2):
        #print str(h[i:i+2])
        #print h[i:i+2]
        #print "0x"+h[i:i+2]+","
        o += str(struct.pack('B', int("0x" + h[i:i+2], 0)))
    #print len(h)

#    print()
#    print(o)
    return o



def main():

    if len(sys.argv)<3:
        print 'pass 2 arguments: <destination> "<message>"'
        exit(1)

    addr = socket.gethostbyname(sys.argv[1])
    #addr = 0
    iface = get_if()

    #print "sending on interface %s to %s" % (iface, str(addr))
    #pkt =  Ether(src=get_if_hwaddr(iface), dst='ff:ff:ff:ff:ff:ff')
    pkt =  Ether(src='00:00:00:00:01:01', dst='ff:ff:ff:ff:ff:ff', type =1024+14)
    #pkt =  Ether(src='00:00:00:00:01:01', dst='ff:ff:ff:ff:ff:ff')
    #pkt =  Ether(src=get_if_hwaddr(iface), dst='ff:ff:ff:ff:ff:ff').add_payload('sdfsdf')
    #pkt = pkt / IP(dst=addr)
    #pkt = pkt /IP(dst=addr) / TCP(dport=1234, sport=random.randint(49152,65535)) / sys.argv[2]
    #l = hex2data("00", 2)
    #n = hex2data("00", 64)
    l = hex2data("01", 8)
    s = " "
    #n = hex2data("00", 63)
    #pkt = pkt /IP(dst=addr) / Raw(load=n + d + e + m) / sys.argv[2]
    #en = hex2data(hex(int(sys.argv[2]))[2:],2) 
    s = sys.argv[2]
    l = hex2data(hex(len(s))[2:], 8)
    
       
    p = ''
    if (len(s)%64) != 0:
        p = hex2data(hex(0)[2:],64-(len(s)%64)) 
    pkt = pkt / Raw(load=l + s + p)
    #pkt = pkt / Raw(load='afdfsdfsfafd')
    pkt.show()
    pkt.show2()
    sendp(pkt, iface=iface, verbose=False)
    hexdump(pkt)


if __name__ == '__main__':
    main()
