#! /bin/bash
while IFS=' ' read -r line

do
	echo $line
done <  /etc/host.conf
