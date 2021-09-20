#!/bin/bash

sudo -i

ifconfig $1 10.0.0.2 netmask 255.255.255.248

route add -net 3.5.7.16 netmask 255.255.255.248 gw 10.0.0.1
route add -net 2.4.6.8 netmask 255.255.255.248 gw 10.0.0.1
route add -net 172.16.16.0 netmask 255.255.255.248 gw 10.0.0.1