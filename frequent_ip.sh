#! /bin/bash
cat access.log | grep -o "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}" | sort -n | uniq -c | sort -n

#second way tail
cat  access.log | awk '{print $11}' | sort | uniq -c | sort -nr | tail -n 4

# head
cat  access.log | awk '{print $11}' | sort | uniq -c | sort -nr | head -n 4
