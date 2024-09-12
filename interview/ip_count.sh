#! /bin.bash

#Extract the ip adress awk $(NF-3)
#how many times each ip is repeated #flag?
#sort in desding #sort 
#save ip_count.txt # >> filename


awk '{print $(NF-2)}' < access.log | sort | uniq -c |sort -r >> ip_count.txt