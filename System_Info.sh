# As an Entry Level DevOps Engineer, you are tasked with creating a user-friendly script that can
#  be run from the terminal for a user to easily get important system information.

# Create a script that will present the following menu to a user to choose from:

# 1. IP Addresses #ex answer: "Your private IP is 172.31.1.150, and you public IP is 3.235.129.224."
# 2. Current User #ex answer: "You are ubuntu."
# 3. CPU Information #ex answer: "The system has 1 CPU." 
# 4. Memory Information #ex answer "There is 330 Mebibyte unused memory of total 957 Mebibyte."
# 5. Top 5 Memory Processes #This can be a table that's produced by a command, ex answer:

# "pmem   pid       cmd 
#  2.9        8047    /usr/lib/snapd/snapd
#  2.7        181      /sbin/multipathd -d -s
#  2.3        664      /usr/bin/python3 /usr/share/unattended-upgrades/unattended-upgrade-shutdown --wait-for-signal
#  2.1        516      /usr/bin/python3 /usr/bin/networkd-dispatcher --run-startup-triggers
#  1.6        524      /snap/amazon-ssm-agent/7993/amazon-ssm-agent"

# 6. Top 5 CPU Processes #Same as above
# 7. Network Connectivity #ask user for a website or IP address to connect to first and then produce a statement regarding the network connection, ex answer: "It took 7ms to connect to www.google.com and there was 0% data packet loss."

# The script should continue to ask the user to choose from the menu until they want to exit.

menu() {

    echo "Please choose from below menu"
    echo -e "1.IP Addresses\n2.Current User\n3. CPU Information\n4. Memory Information\n5. Top 5 Memory Processes\n6. Top 5 CPU Processes\n7. Network Connectivity"

    read -p "Enter your choice from (1-7): " choice

    if [ $choice == 1 ];then
        ip_address
    elif [ $choice == 2 ];then
        current_user
    elif [ $choice == 3 ];then
        cpu_information
    elif [ $choice == 4 ];then
        memory_information
    elif [ $choice == 5 ];then
        memory_processes
    elif [ $choice == 6 ];then
        cpu_proccesses
    elif [ $choice == 7];then
        network_connectivity

}

menu

ip_address(){

}
current_user(){

}
cpu_information(){

}
memory_information(){

}
memory_processes(){

}
cpu_proccesses(){

}
network_connectivity(){

}
