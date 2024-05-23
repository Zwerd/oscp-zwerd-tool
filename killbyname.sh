#!/bin/bash
# zwerd script: this is used to kill process by it's own name
# "killbyname.sh nc" should kill any process named nc.

# Check if the user provided a process name
if [ -z "$1" ]; then
  echo "Usage: $0 process_name"
  exit 1
fi

# Get the process name from the argument
PROCESS_NAME=$1

# Find and kill all processes that match the process name
for PID in $(pgrep -f "$PROCESS_NAME"); do
  echo "Killing process $PID: $(ps -p $PID -o comm=)"
  kill -9 $PID
done
