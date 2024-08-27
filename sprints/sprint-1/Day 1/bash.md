
# Introduction to Bash for Developers

Bash (Bourne Again Shell) is one of the most widely used command-line interfaces (CLI) in the Unix/Linux world. As a developer, mastering Bash can significantly boost your productivity by allowing you to navigate your system, automate repetitive tasks, and interact with version control systems like Git, all from the terminal.

Bash is a default shell on most Unix-based systems, including Linux and macOS, and is also available on Windows through the Windows Subsystem for Linux (WSL). By understanding a few basic commands, you can perform complex operations with just a few keystrokes.

## Why Learn Bash?

- **Efficiency**: Bash allows you to quickly navigate your file system, manage files, and execute commands.
- **Automation**: With Bash scripting, you can automate repetitive tasks, saving time and reducing errors.
- **Version Control**: Bash is essential when working with Git, the most popular version control system.
- **Remote Access**: Bash is commonly used to interact with remote servers via SSH, making it an indispensable tool for DevOps and system administration.

## Basic Bash Commands for Developers

Here are some of the most common Bash commands that every developer should know:

### 1. `pwd` - Print Working Directory
Displays the current directory you are working in.

\`\`\`bash
$ pwd
/home/username/project
\`\`\`

### 2. `ls` - List Directory Contents
Lists the files and directories in the current directory. Common options include:
- `ls -l`: Long listing format (includes file permissions, owner, size, and modification date).
- `ls -a`: Lists all files, including hidden files (those starting with `.`).

\`\`\`bash
$ ls -l
drwxr-xr-x 2 username username 4096 Aug 20 12:34 directory1
-rw-r--r-- 1 username username 1024 Aug 20 12:34 file1.txt
\`\`\`

### 3. `cd` - Change Directory
Changes the current working directory. You can move to any directory by specifying its path, or use shortcuts:
- `cd ~`: Moves to your home directory.
- `cd ..`: Moves one directory up.

\`\`\`bash
$ cd /path/to/directory
$ cd ..
$ cd ~
\`\`\`

### 4. `touch` - Create an Empty File
Creates a new empty file or updates the timestamp of an existing file.

\`\`\`bash
$ touch newfile.txt
\`\`\`

### 5. `mkdir` - Make Directory
Creates a new directory.

\`\`\`bash
$ mkdir new_directory
\`\`\`

### 6. `rm` - Remove Files or Directories
Deletes files or directories. Be cautious with this command, as deletions are permanent.
- `rm file.txt`: Removes a file.
- `rm -r directory`: Removes a directory and its contents.

\`\`\`bash
$ rm file.txt
$ rm -r directory_name
\`\`\`

### 7. `cp` - Copy Files or Directories
Copies files or directories from one location to another.
- `cp source.txt destination.txt`: Copies a file.
- `cp -r sourcedir/ destinationdir/`: Copies a directory and its contents.

\`\`\`bash
$ cp source.txt destination.txt
$ cp -r source_directory/ destination_directory/
\`\`\`

### 8. `mv` - Move or Rename Files or Directories
Moves or renames files or directories.
- `mv oldname.txt newname.txt`: Renames a file.
- `mv file.txt /path/to/destination/`: Moves a file to a new location.

\`\`\`bash
$ mv oldname.txt newname.txt
$ mv file.txt /path/to/destination/
\`\`\`

### 9. `cat` - Concatenate and Display File Content
Displays the content of a file.

\`\`\`bash
$ cat file.txt
\`\`\`

### 10. `less` and `more` - View File Content Page by Page
Allows you to view the contents of a file one page at a time, useful for long files.
- `less`: Lets you scroll forward and backward.
- `more`: Lets you scroll forward only.

\`\`\`bash
$ less largefile.txt
$ more largefile.txt
\`\`\`

### 11. `chmod` - Change File Permissions
Modifies the permissions of a file or directory.

\`\`\`bash
$ chmod 755 script.sh
\`\`\`

### 12. `grep` - Search Text Using Patterns
Searches for a specific string or pattern in a file.

\`\`\`bash
$ grep "search_term" file.txt
\`\`\`

### 13. `find` - Search for Files and Directories
Searches for files and directories in a specified location.

\`\`\`bash
$ find /path/to/search -name "*.txt"
\`\`\`

### 14. `echo` - Display a Line of Text
Prints a line of text to the terminal, useful in scripts.

\`\`\`bash
$ echo "Hello, World!"
\`\`\`

### 15. `history` - Show Command History
Displays a list of all commands you’ve run in your terminal session.

\`\`\`bash
$ history
\`\`\`

### 16. `man` - Display Manual Pages
Provides detailed documentation for a command.

\`\`\`bash
$ man ls
\`\`\`

## Conclusion

Mastering Bash commands can significantly improve your efficiency as a developer. These basic commands are just the beginning—Bash has powerful features that can help you automate tasks, work with remote systems, and manage complex workflows.

## More Resources
- **[MDN Web Docs - Command Line](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line)**
- **[Linux Command Line Basics - DigitalOcean](https://www.digitalocean.com/community/tutorial_series/linux-basics)**
- **[Learn Bash Scripting - Tutorial](https://www.tutorialspoint.com/unix/unix-using-variables.htm)**


# Activities 

## Bash Commands Practice

Now that you have an introduction to the terminal and some of the most common commands, it's time to practice using them. Below is a list of activities that will help you become more comfortable with the terminal.

### Activity 1: Create Directories and Files
**Objective**: Create a directory called `practice_dir` and an empty file inside it called `file.txt`.  
**Commands**: `mkdir`, `touch`

### Activity 2: Navigate and List Files
**Objective**: Navigate to the `practice_dir` directory and list its contents.  
**Commands**: `cd`, `ls`

### Activity 3: Move and Rename Files
**Objective**: Create a file named `old.txt`, then move and rename it to `new.txt`.  
**Commands**: `mv`

### Activity 4: Copy Files
**Objective**: Copy the `new.txt` file to a new file named `copy.txt`.  
**Commands**: `cp`

### Activity 5: View and Edit Files
**Objective**: Display the contents of `copy.txt`, then add the text "Hello, World!" to the file.  
**Commands**: `cat`, `echo`, `>>`

### Activity 6: Search for Files and Text
**Objective**: Find the `new.txt` file in your directory structure and search for the word "Hello" inside it.  
**Commands**: `find`, `grep`

### Activity 7: Archive and Compress Files
**Objective**: Compress the `practice_dir` directory into a `practice_dir.zip` file.  
**Commands**: `zip`

### Activity 8: Extract Files
**Objective**: Extract the contents of `practice_dir.zip` into a new directory called `extracted_dir`.  
**Commands**: `unzip`

### Activity 9: Set File Permissions
**Objective**: Change the permissions of `new.txt` so that only the owner can read and write to it.  
**Commands**: `chmod`

### Activity 10: Change File Ownership
**Objective**: Change the ownership of `new.txt` to another user (if applicable).  
**Commands**: `chown`

### Activity 11: Monitor Processes and Kill a Process
**Objective**: View the current running processes and terminate a specific process by its PID.  
**Commands**: `ps`, `kill`

### Activity 12: Use Aliases and Environment Variables
**Objective**: Create an alias for the `ls -l` command and set an environment variable for your username.  
**Commands**: `alias`, `export`, `env`

### Activity 13: Schedule a Task
**Objective**: Schedule a task using `cron` (Linux) or `schtasks` (Windows) to run a command at a specific time.  
**Commands**: `crontab` or `schtasks`

#### Validate the activities

To validate that all the activities are done you should execute the activities script in ./activities/run_activities.sh

To execute the run_activities.sh script, follow these steps:

#### Step 1: Ensure the Script is Executable
Before you can run the script, you need to make sure it has the correct permissions to be executed.

Open your terminal and navigate to the directory where run_activities.sh is located.
Run the following command to make the script executable:
bash
chmod +x run_activities.sh

#### Step 2: Run the Script
Once the script is executable, you can run it by typing:

bash
./run_activities.sh
This command will execute the script in the current shell. Make sure you are in the correct directory where the script is located, or provide the full path to the script.

#### Step 3: Verify Output
The script should run, and you will see output indicating which activities have passed or failed, as well as a summary at the end.

Common Issues
Permission Denied: If you receive a "Permission Denied" error, make sure you ran the chmod +x command correctly to grant execute permissions to the script.
File Not Found: If you get a "File not found" error, verify that you are in the correct directory or provide the full path to the script when running it.