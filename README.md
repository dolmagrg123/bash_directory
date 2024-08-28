# bash_directory

#Permission Check Testing

### ubuntu@:~/bash_directory$ chmod -w script.sh
### ubuntu@~/bash_directory$ ./permission_check.sh
Not writable
Readable
Not Executable
### ubuntu@:~/bash_directory$ chmod -r script.sh
### ubuntu@:~/bash_directory$ ./permission_check.sh
Not writable
Not Readble
Not Executable
### ubuntu@i:~/bash_directory$ chmod +rwx script.sh
### ubuntu@ip:~/bash_directory$ ./permission_check.sh
Writable
Readable
Executable

### curl: 
This is a command-line tool used to transfer data from or to a server. It supports various protocols, including HTTP, HTTPS, FTP, etc.

### -s: 
This flag tells curl to operate in "silent" mode. It hides progress information and error messages, making the output cleaner.

### -o /dev/null: 
This option specifies the output file. By directing the output to /dev/null, curl effectively discards the body of the response, as you're only interested in timing information, not the actual content returned by the server.

### -w "%{time_connect}": 
The -w (write-out) flag allows curl to output specific information after the transfer is complete. The "%{time_connect}" variable will be replaced by the time, in seconds, it took from the start of the request until the connection to the remote host was completed.



