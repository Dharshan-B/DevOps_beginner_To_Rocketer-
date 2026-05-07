#!/bin/bash

# Verification Script for Linux Fundamentals
echo "🧐 Checking your progress..."

# Function to print status
check_status() {
    if [ $1 -eq 0 ]; then
        echo "✅ [SUCCESS] $2"
    else
        echo "❌ [FAILED] $2"
    fi
}

# 1. Check if devops-lab directory exists
[ -d "../devops-lab" ]
check_status $? "Exercise 1: 'devops-lab' directory exists"

# 2. Check if test.txt exists and has content
if [ -f "../devops-lab/test.txt" ]; then
    grep -q "Hello DevOps" "../devops-lab/test.txt"
    check_status $? "Exercise 2: 'test.txt' contains 'Hello DevOps'"
else
    check_status 1 "Exercise 2: 'test.txt' not found"
fi

# 3. Check permissions of test.txt (Should be 600 or similar)
if [ -f "../devops-lab/test.txt" ]; then
    PERMS=$(stat -c "%a" "../devops-lab/test.txt")
    if [ "$PERMS" == "600" ]; then
        check_status 0 "Exercise 3: 'test.txt' permissions set to owner-only (600)"
    else
        echo "❌ [FAILED] Exercise 3: 'test.txt' permissions are $PERMS (Expected 600)"
    fi
fi

echo "---"
echo "Keep going! If you get all green checkmarks, you've mastered the basics! 🚀"
