#!/bin/bash

rm -f topology.txt

/share/shared/Internetworking/showcabling Sacchetti-IntNetw OffTech > topology.txt

echo "Network topology obtained"

cat topology.txt

echo "Starting configuration script"

python setup.py



