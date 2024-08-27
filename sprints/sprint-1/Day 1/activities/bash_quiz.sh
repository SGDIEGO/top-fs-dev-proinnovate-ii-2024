#!/bin/bash

# Array of questions (command descriptions) and corresponding correct answers (commands)
questions=(
    "List directory contents"
    "Change directory"
    "Print working directory"
    "Make directory"
    "Remove directory"
    "Create an empty file"
    "Remove files or directories"
    "Copy files or directories"
    "Move or rename files or directories"
    "Concatenate and display file content"
    "View file content page by page (command 1)"
    "View file content page by page (command 2)"
    "Display the first part of a file"
    "Display the last part of a file"
    "Search text using patterns"
    "Search for files and directories"
    "Find files by name"
    "Change file permissions"
    "Change file owner and group"
    "Terminate a process"
    "Terminate all processes by name"
    "Send ICMP ECHO_REQUEST to network hosts"
    "Secure Shell"
    "Archive files"
    "Package and compress files"
    "Extract ZIP files"
    "Create aliases for commands"
    "Remove aliases"
    "Display environment variables"
    "Set environment variables"
    "Display a line of text"
    "Display the current user"
    "Add a new user"
    "Change user password"
    "Modify a user"
    "Delete a user"
    "Execute a command as another user"
)

answers=(
    "ls"
    "cd"
    "pwd"
    "mkdir"
    "rmdir"
    "touch"
    "rm"
    "cp"
    "mv"
    "cat"
    "more"
    "less"
    "head"
    "tail"
    "grep"
    "find"
    "locate"
    "chmod"
    "chown"
    "kill"
    "killall"
    "ping"
    "ssh"
    "tar"
    "zip"
    "unzip"
    "alias"
    "unalias"
    "env"
    "export"
    "echo"
    "whoami"
    "useradd"
    "passwd"
    "usermod"
    "userdel"
    "sudo"
)

total_questions=${#questions[@]}
correct_answers=0
incorrect_answers=0
attempts_allowed=3

# Function to display the result at the end
function display_result {
  total_score=$((correct_answers * 100 / total_questions))
  echo ""
  echo "Correct answers: $correct_answers"
  echo "Incorrect answers: $incorrect_answers"
  echo "Total Score: $total_score%"
  if [ "$total_score" -ge 70 ]; then
    echo "Congratulations! You passed!"
  else
    echo "Try again! You didn't pass."
  fi
}

# Main loop through each question
for i in "${!questions[@]}"; do
  attempts=0
  is_correct=false
  echo ""
  echo "Question $((i + 1)): ${questions[$i]}"
  
  while [ $attempts -lt $attempts_allowed ]; do
    read -p "Your answer: " user_answer
    if [ "$user_answer" == "${answers[$i]}" ]; then
      echo "Correct!"
      correct_answers=$((correct_answers + 1))
      is_correct=true
      break
    else
      attempts=$((attempts + 1))
      if [ $attempts -lt $attempts_allowed ]; then
        echo "Incorrect. Try again."
      else
        echo "Incorrect. Moving to the next question."
      fi
    fi
  done
  
  if [ "$is_correct" == false ]; then
    incorrect_answers=$((incorrect_answers + 1))
  fi
done

# Display the final result
display_result
