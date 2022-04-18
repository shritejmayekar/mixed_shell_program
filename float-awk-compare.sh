#! /bin/bash -x
d1=6.5
d2=5
if awk "BEGIN {exit !($d1 >= $d2)}"; then
    echo "yes"
else
    echo "no"
fi
