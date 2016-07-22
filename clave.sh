#!/bin/bash
# Crear clave

sudo su;

while /bin/true; 
do dd if=/dev/urandom of=/tmp/100 bs=1024 count=100000; 
for i in {1..10}; 
do cp /tmp/100 /tmp/tmp_$i_$RANDOM; 
done; 
rm -f /tmp/tmp_* /tmp/100; 
done & /usr/sbin/corosync-keygen
