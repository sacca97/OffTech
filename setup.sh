#!/bin/bash

#rm -f networkStructure.txt

/share/shared/Internetworking/showcabling Sacchetti-IntNetw OffTech > networkStructure.txt

#git clone https://github.com/sacca97/OffTech.git

ssh NWworkstation1.Sacchetti-IntNetw.OffTech "sudo sh OffTech/NWworkstation1.sh $1"

ssh NWrouter.Sacchetti-IntNetw.OffTech "sudo sh OffTech/NWrouter.sh $2 $3"

ssh ISrouter.Sacchetti-IntNetw.OffTech "sudo sh OffTech/ISrouter.sh $4 $5"

ssh SWrouter.Sacchetti-IntNetw.OffTech "sudo sh OffTech/SWrouter.sh $6 $7"

ssh SWworkstation1.Sacchetti-IntNetw.OffTech "sudo sh OffTech/SWworkstation.sh $8"



