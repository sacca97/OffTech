#!/bin/bash

#setup the main eth interface
ifconfig $1 172.16.16.2 netmask 255.255.255.248

#add network routes to the other LANs
route add -net 2.4.6.8 netmask 255.255.255.248 gw 172.16.16.1
route add -net 3.5.7.16 netmask 255.255.255.248 gw 172.16.16.1
route add -net 10.0.0.0 netmask 255.255.255.248 gw 172.16.16.1