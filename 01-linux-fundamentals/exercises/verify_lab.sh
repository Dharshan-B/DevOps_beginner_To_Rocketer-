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

echo "--- ROCKETER MISSIONS ---"

# Mission 6: Log Filter
if [ -f "linux-lab-playground/errors_only.txt" ]; then
    grep -q "ERROR" "linux-lab-playground/errors_only.txt"
    RES=$?
    # Ensure no INFO lines are in there
    grep -q "INFO" "linux-lab-playground/errors_only.txt"
    if [ $RES -eq 0 ] && [ $? -ne 0 ]; then
        check_status 0 "Mission 6: 'errors_only.txt' filtered correctly"
    else
        check_status 1 "Mission 6: 'errors_only.txt' exists but is not filtered correctly"
    fi
else
    check_status 1 "Mission 6: 'errors_only.txt' not found"
fi

# Mission 8: Cleanup
TMP_COUNT=$(find linux-lab-playground -name "*.tmp" | wc -l)
if [ $TMP_COUNT -eq 0 ]; then
    check_status 0 "Mission 8: All .tmp files cleaned up"
else
    check_status 1 "Mission 8: Still found $TMP_COUNT .tmp files"
fi

echo "---"
echo "Keep going! If you get all green checkmarks, you've reached Rocketer status! 🚀"
