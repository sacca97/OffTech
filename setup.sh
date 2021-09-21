#!/bin/bash

#rm -f networkStructure.txt

/share/shared/Internetworking/showcabling Sacchetti-IntNetw OffTech > networkStructure.txt

#git clone https://github.com/sacca97/OffTech.git

ssh NWworkstation1.Sacchetti-IntNetw.OffTech "sudo sh OffTech/NWworkstation1.sh eth3"

ssh NWrouter.Sacchetti-IntNetw.OffTech "sudo sh OffTech/NWrouter.sh eth3 eth5 && exit && exit"

ssh ISrouter.Sacchetti-IntNetw.OffTech "sudo sh OffTech/ISrouter.sh eth3 eth0&& exit && exit"

ssh SWrouter.Sacchetti-IntNetw.OffTech "sudo sh OffTech/SWrouter.sh eth2 eth1 && exit && exit"

ssh SWworkstation1.Sacchetti-IntNetw.OffTech "sudo sh OffTech/SWworkstation.sh eth0 && exit && exit"



