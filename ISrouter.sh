#!/bin/bash

#setup the two main ethX interfaces
ifconfig $1 2.4.6.9  netmask 255.255.255.248
ifconfig $2 3.5.7.17 netmask 255.255.255.248

#add network routes to the other LANs
route add -net 172.16.16.0 netmask 255.255.255.248 gw 2.4.6.10
route add -net 10.0.0.0 netmask 255.255.255.248 gw 3.5.7.18

#firewalling rules to block packets with "private" IP addresses
iptables -I FORWARD -d 192.168.0.0/16 -j DROP
iptables -I FORWARD -d 172.16.0.0/12 -j DROP
iptables -I FORWARD -d 10.0.0.0/8 -j DROP
iptables -I FORWARD -s 192.168.0.0/16 -j DROP
iptables -I FORWARD -s 172.16.0.0/12 -j DROP
iptables -I FORWARD -s 10.0.0.0/8 -j DROP