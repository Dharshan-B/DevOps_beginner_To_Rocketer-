#!/bin/bash

# Pre-commit Hook Template
# This script prevents commits if the word "TODO" is found in any staged file.

echo "🔍 Running pre-commit security check..."

# List of files being committed
FILES=$(git diff --cached --name-only)

for FILE in $FILES; do
    if grep -q "TODO" "$FILE"; then
        echo "❌ ERROR: You have a 'TODO' in $FILE. Please fix it before committing!"
        exit 1
    fi
done

echo "✅ All checks passed. Proceeding with commit."
exit 0
