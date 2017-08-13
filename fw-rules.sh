#! /bin/bash

# Apply firewall rule 
# This script adjusts the firewall to block outgoing RST packets

iptable -F
iptable -A OUTPUT -p tcp --tcp-flags RST RST -j DROP
