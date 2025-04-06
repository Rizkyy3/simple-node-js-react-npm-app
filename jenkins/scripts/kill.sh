#!/bin/bash
echo "Stopping app running on http://localhost:3000"
kill $(lsof -t -i:3000)

