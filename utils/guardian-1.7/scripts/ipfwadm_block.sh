#!/bin/sh

# this is a sample block script for guardian. This should work with ipfwadm. 
# This command gets called by guardian as such:
#  guardian_block.sh <source_ip> <interface>
# and the script will issue a command to block all traffic from that source ip
# address. The logic of weither or not it is safe to block that address is
# done inside guardian itself.
source=$1
interface=$2

/sbin/ipfwadm -I -a deny -W $interface -S $source 
