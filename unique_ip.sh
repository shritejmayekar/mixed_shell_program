awk '{ print $1}' access.log | sort | uniq -c | sort -nr | tail -n 4
