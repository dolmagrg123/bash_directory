#!/bin/bash

# grep for 404 error, then print the fist column which has some numbers and ip, cut to select only the ips
grep " 404 " web-server-access-logs.log | awk '{ print $1 }' | cut -d'"' -f2 > hello.txt



# Declare an associative array to store counts
declare -A ip_counts

# Read the file line by line
while read -r ip; do
    	# Increment the count for each IP address
	#Checks if the IP address already exists in the ip_counts array
	if [[ -n "${ip_counts[$ip]}" ]]; then
	#add the count if it already exist
            ip_counts[$ip]=$((ip_counts[$ip] + 1))
        else
            ip_counts[$ip]=1
        fi
done < "hello.txt"

# Display IP addresses and their counts
for ip in "${!ip_counts[@]}"; do
    echo ""The IP" $ip "is repeated" ${ip_counts[$ip]} "times""
done
