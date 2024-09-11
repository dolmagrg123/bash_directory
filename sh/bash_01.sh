: '
Write a script that will detect new files made in a specific directory,
and push the changes to the repository in GitHub. 
If the repository doesn't exist in GitHub, ask the user if they'd like to create one 
and then push to GitHub.

Output Example: 

$ ./detect_and_push.sh /path/to/directory New files detected: new_file.txt Pushing changes to the existing GitHub repository... Changes have been successfully pushed to GitHub.
$ ./detect_and_push.sh /path/to/directory New files detected: new_file.txt GitHub repository does not exist. Would you like to create a new repository on GitHub? (yes/no): yes Creating a new GitHub repository... Repository created successfully. Pushing changes to the new GitHub repository... Changes have been successfully pushed to GitHub.
$ ./detect_and_push.sh /path/to/directory No new files detected in /path/to/directory. No changes to push.

'
#user to input directory
#we can chekc if dir exists;if not ask user if they want to create dir
# inotifywait to track create file changes


