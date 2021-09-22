#!/bin/bash

rm -f topology.txt

echo "Checking network topology...\n"

/share/shared/Internetworking/showcabling Sacchetti-IntNetw OffTech > topology.txt

echo "Network topology obtained...\n"

echo "Configuration..."

python setup.py



