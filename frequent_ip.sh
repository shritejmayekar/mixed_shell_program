#! /bin/bash
cat access.log | grep -o "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}" | sort -n | uniq -c | sort -n

#second way tail
cat  access.log | awk '{print $11}' | sort | uniq -c | sort -nr | tail -n 4

# head
cat  access.log | awk '{print $11}' | sort | uniq -c | sort -nr | head -n 4

# Unique IP's
cat access.log | awk -F " " {'print $22'} | sort -u
cat access.log | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | sort -u | tail -4


