#!/bin/bash

ifconfig $1 3.5.7.18 netmask 255.255.255.248
ifconfig $2 10.0.0.1 netmask 255.255.255.248

route add -net 2.4.6.8 netmask 255.255.255.248 gw 3.5.7.17
route add -net 172.16.16.0 netmask 255.255.255.248 gw 3.5.7.17

iptables -t nat -A POSTROUTING -o $1 -s 10.0.0.0/29 -j SNAT --to 3.5.7.18
iptables -t nat -A PREROUTING -i $2 -d 3.5.7.18/32 -p tcp --dport 80 -j DNAT --to 10.0.0.2

