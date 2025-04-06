#!/bin/sh
echo "Stopping app running on http://localhost:3000"

if command -v lsof > /dev/null; then
  PID=$(lsof -i :3000 -t)
  if [ -n "$PID" ]; then
    kill -9 $PID
    echo "Killed process $PID"
  else
    echo "No process found on port 3000"
  fi
else
  echo "⚠️  lsof not found. Skipping process kill step."
fi

