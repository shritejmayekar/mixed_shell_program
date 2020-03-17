#! /bin/bash
cat  access.log | awk '{print $11}' | sort -n | uniq -c

