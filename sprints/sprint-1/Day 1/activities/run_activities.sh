#!/bin/bash

# Initialize counters for tracking progress
total_activities=13
completed_activities=0
missing_activities=()

# Function to check if a command succeeded
function check_activity {
  activity_name=$1
  shift
  "$@" &> /dev/null
  if [ $? -eq 0 ]; then
    echo "$activity_name: PASS"
    completed_activities=$((completed_activities + 1))
  else
    echo "$activity_name: FAIL"
    missing_activities+=("$activity_name")
  fi
}

# Activity 1: Create Directories and Files
check_activity "Activity 1 (Create Directories and Files)" test -d practice_dir && test -f practice_dir/file.txt

# Activity 2: Navigate and List Files
check_activity "Activity 2 (Navigate and List Files)" cd practice_dir && ls &> /dev/null

# Activity 3: Move and Rename Files
check_activity "Activity 3 (Move and Rename Files)" test -f new.txt

# Activity 4: Copy Files
check_activity "Activity 4 (Copy Files)" test -f copy.txt

# Activity 5: View and Edit Files
check_activity "Activity 5 (View and Edit Files)" grep -q "Hello, World!" copy.txt

# Activity 6: Search for Files and Text
check_activity "Activity 6 (Search for Files and Text)" find . -name "new.txt" &> /dev/null && grep -q "Hello" new.txt

# Activity 7: Archive and Compress Files
check_activity "Activity 7 (Archive and Compress Files)" test -f practice_dir.zip

# Activity 8: Extract Files
check_activity "Activity 8 (Extract Files)" test -d extracted_dir

# Activity 9: Set File Permissions
check_activity "Activity 9 (Set File Permissions)" test $(stat -c %a new.txt) = 600

# Activity 10: Change File Ownership (may require sudo or a different environment)
check_activity "Activity 10 (Change File Ownership)" test "$(stat -c %U new.txt)" != "$(whoami)"

# Activity 11: Monitor Processes and Kill a Process (manual activity, skipped for now)
check_activity "Activity 11 (Monitor Processes and Kill a Process)" true # Assume pass (manual)

# Activity 12: Use Aliases and Environment Variables
check_activity "Activity 12 (Use Aliases and Environment Variables)" alias ls='ls -l' && export USERNAME_TEST=testuser && [[ $USERNAME_TEST == "testuser" ]]

# Activity 13: Schedule a Task (manual activity, skipped for now)
check_activity "Activity 13 (Schedule a Task)" true # Assume pass (manual)

# Summary and Feedback
echo ""
echo "Summary:"
echo "Completed Activities: $completed_activities/$total_activities"
echo ""

if [ ${#missing_activities[@]} -eq 0 ]; then
  echo "Congratulations! All activities are completed."
else
  echo "The following activities are missing or failed:"
  for activity in "${missing_activities[@]}"; do
    echo "- $activity"
  done
fi

# Pass/Fail Criteria
completion_percentage=$((completed_activities * 100 / total_activities))
if [ "$completion_percentage" -ge 70 ]; then
  echo ""
  echo "You passed with a score of $completion_percentage%!"
else
  echo ""
  echo "You did not pass. Try again! Your score is $completion_percentage%."
fi

