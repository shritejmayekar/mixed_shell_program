 awk '{ print $11 }' access.log | sort | uniq -c | sort -nr | tail -n 4
