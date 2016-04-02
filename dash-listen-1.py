# from scapy import *
from scapy.all import *


def arp_display(pkt):
    if pkt[ARP].op == 1:
        if pkt[ARP].psrc == '0.0.0.0':
            print("ARP Probe from: " + pkt[ARP].hwsrc)


print(sniff(prn=arp_display, filter="arp", store=0, count=10))
