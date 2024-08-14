# bash_directory

#Permission Check Testing

ubuntu@:~/bash_directory$ chmod -w script.sh
ubuntu@~/bash_directory$ ./permission_check.sh
Not writable
Readable
Not Executable
ubuntu@:~/bash_directory$ chmod -r script.sh
ubuntu@:~/bash_directory$ ./permission_check.sh
Not writable
Not Readble
Not Executable
ubuntu@i:~/bash_directory$ chmod +rwx script.sh
ubuntu@ip:~/bash_directory$ ./permission_check.sh
Writable
Readable
Executable