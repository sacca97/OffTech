#!/bin/bash

rm -f networkStructure.txt

/share/shared/Internetworking/showcabling Sacchetti-IntNetw OffTech > networkStructure.txt

#git clone https://github.com/sacca97/OffTech.git

ssh NWworkstation1.Sacchetti-IntNetw.OffTech "sudo mkdir affettati"

#ssh NWworkstation1.Sacchetti-IntNetw.OffTech "sudo sh OffTech/NWworkstation1.sh ETH ETH"

#ssh NWrouter.Sacchetti-IntNetw.OffTech "sudo sh OffTech/NWrouter.sh ETH ETH"

#ssh ISrouter.Sacchetti-IntNetw.OffTech "sudo sh OffTech/ISrouter.sh ETH ETH"

#ssh SWrouter.Sacchetti-IntNetw.OffTech "sudo sh OffTech/SWrouter.sh ETH ETH"

#ssh SWworkstation1.Sacchetti-IntNetw.OffTech "sudo sh OffTech/SWworkstation.sh ETH ETH"



